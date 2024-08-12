_addon.name    = 'Audible'
_addon.author  = 'Thorny, concept and sounds by Nsane';
_addon.version = '1.0'

local packets = require('packets');
local res = require('resources');
local settings = {
    Debug = false,
    DetectParty = true,
    DetectAlliance = true
};

local triggers = {
    DebuffedByStatus = require('triggers.debuffedbystatus'),
    DebuffingByStatus = require('triggers.debuffingbystatus'),
    DebuffedBySpell = require('triggers.debuffedbyspell'),
    DebuffingBySpell = require('triggers.debuffingbyspell'),
    LostBuff = require('triggers.lostbuff'),
    MiscActions = require('triggers.miscactions'),
    MobReadies = require('triggers.mobreadies'),
    MobUses = require('triggers.mobuses'),
    TreasureHunterUpgrade = require('triggers.treasurehunterupgrade'),
};

local function ParseActionPacket(data)
    local bitData = data;
    local bitOffset = 40;
    local function UnpackBits(length)
        local value = bitData:unpack('b' .. length, (bitOffset / 8):floor() + 1, bitOffset % 8 + 1);
        bitOffset = bitOffset + length;
        return value;
    end

    local actionPacket = T {};
    actionPacket.UserId = UnpackBits(32);
    local targetCount = UnpackBits(6);
    bitOffset = bitOffset + 4;
    actionPacket.Type = UnpackBits(4);
    actionPacket.Id = UnpackBits(17);
    bitOffset = bitOffset + 15;
    actionPacket.Recast = UnpackBits(32);

    actionPacket.Targets = T {};
    for i = 1, targetCount do
        local target = T {};
        target.Id = UnpackBits(32);
        local actionCount = UnpackBits(4);
        target.Actions = T {};
        for j = 1, actionCount do
            local action = T {};
            action.Reaction = UnpackBits(5);
            action.Animation = UnpackBits(12);
            action.SpecialEffect = UnpackBits(7);
            action.Knockback = UnpackBits(3);
            action.Param = UnpackBits(17);
            action.Message = UnpackBits(10);
            action.Flags = UnpackBits(31);

            local hasAdditionalEffect = (UnpackBits(1) == 1);
            if hasAdditionalEffect then
                local additionalEffect = T {};
                additionalEffect.Damage = UnpackBits(10);
                additionalEffect.Param = UnpackBits(17);
                additionalEffect.Message = UnpackBits(10);
                action.AdditionalEffect = additionalEffect;
            end

            local hasSpikesEffect = (UnpackBits(1) == 1);
            if hasSpikesEffect then
                local spikesEffect = T {};
                spikesEffect.Damage = UnpackBits(10);
                spikesEffect.Param = UnpackBits(14);
                spikesEffect.Message = UnpackBits(10);
                action.SpikesEffect = spikesEffect;
            end

            target.Actions:append(action);
        end
        actionPacket.Targets:append(target);
    end

    return actionPacket;
end

local partyKeys = { 'p0', 'p1', 'p2', 'p3', 'p4', 'p5' };
local allyKeys = { 'a10', 'a11', 'a12', 'a13', 'a14', 'a15', 'a20', 'a22', 'a22', 'a23', 'a24', 'a25' }
local function GetTriggerIds()
    local party = windower.ffxi.get_party();
    local ids = T {};

    if (settings.DetectParty) then
        for _, key in ipairs(partyKeys) do
            local val = party[key];
            if val and (val.mob) and (val.mob.id) then
                ids:append(val.mob.id);
            end
        end
    else
        local val = party['p0'];
        if val and (val.mob) and (val.mob.id) then
            ids:append(val.mob.id);
        end
    end

    if (settings.DetectAlliance) then
        for _, key in ipairs(allyKeys) do
            local val = party[key];
            if val and (val.mob) and (val.mob.id) then
                ids:append(val.mob.id);
            end
        end
    end

    return ids;
end

local function EvaluateTriggers(category, key)
    local triggerTable = triggers[category];
    local trigger = triggerTable[key];
    if trigger then
        if settings.Debug then
            print(string.format('Triggered!  Category:%s Param:%s File:%s', category, tostring(key), trigger));
        end
        windower.play_sound(string.format("%sresources/audio/%s", windower.addon_path, trigger));
        return true;
    else
        if settings.Debug then
            print(string.format('Triggered!  Category:%s Param:%s File:None', category, tostring(key)));
        end
        return false;
    end
end

windower.register_event('incoming chunk', function(id, data)
    if (id == 0x28) then
        local packet = ParseActionPacket(data);
        local ids = GetTriggerIds();

        --Action is being used by a monster
        if (packet.UserId > 1000000) then
            for _, target in ipairs(packet.Targets) do
                local targetsSelf = target.Id == ids[1];

                for _, action in ipairs(target.Actions) do
                    local messageId = action.Message;
                    if (T { 43, 675 }:contains(messageId)) then
                        local param = action.Param;
                        local skillData = param < 256 and res.weapon_skills[param] or res.monster_abilities[param];
                        if skillData then
                            EvaluateTriggers("MobReadies", skillData.en);
                        end

                        --Monster is readying ability..
                    elseif (messageId == 326) then
                        local abilData = res.job_abilities[action.Param];
                        if abilData then
                            EvaluateTriggers("MobReadies", abilData.en);
                        end

                        --Monster starts casting spell..
                    elseif (T { 3, 327 }:contains(messageId)) then
                        local spellData = res.spells[action.Param];
                        if spellData then
                            EvaluateTriggers("MobReadies", spellData.en);
                        end

                        --Monster starts casting weaponskill..
                    elseif (messageId == 716) then
                        local wsData = res.weapon_skills[action.Param];
                        if wsData then
                            EvaluateTriggers("MobReadies", wsData.en);
                        end

                        --Monster uses ability..
                    elseif (T { 100, 119, 734, 738 }:contains(messageId)) then
                        local abilityData = res.job_abilities[packet.Id];
                        if abilityData then
                            EvaluateTriggers("MobUses", abilityData.en);
                        end

                        --Monster uses weaponskill..
                    elseif (T { 101, 135 }:contains(messageId)) then
                        local wsData = res.monster_abilities[packet.Id];
                        if wsData then
                            EvaluateTriggers("MobUses", wsData.en);
                        end
                    end

                    --Action targets self..
                    if (targetsSelf) then
                        --Debuff applied by id..
                        if T { 82, 127, 141, 160, 164, 203, 236, 237, 242, 243, 267, 268, 269, 270, 271, 272, 277, 278, 279, 320, 374, 375, 412, 645, 754, 755, 804 }:contains(messageId) then
                            if EvaluateTriggers("DebuffedByStatus", action.Param) == false then
                                local buffData = res.buffs[action.Param];
                                if buffData then
                                    EvaluateTriggers("DebuffedByStatus", buffData.en);
                                end
                            end

                            --Spell damage taken..
                        elseif T { 2, 7, 252 }:contains(messageId) then
                            if EvaluateTriggers("DebuffedBySpell", packet.Id) == false then
                                local spellData = res.spells[packet.Id];
                                if spellData then
                                    EvaluateTriggers("DebuffedBySpell", spellData.en);
                                end
                            end
                        end
                    end
                end
            end
        end

        --User is self..
        if (packet.UserId == ids[1]) then
            for _, target in ipairs(packet.Targets) do
                for _, action in ipairs(target.Actions) do
                    local messageId = action.Message;
                    EvaluateTriggers('MiscActions', messageId);
                end
            end
        end

        --Action is being used by someone who fits settings..
        if (ids:contains(packet.UserId)) then
            for _, target in ipairs(packet.Targets) do
                for _, action in ipairs(target.Actions) do
                    local messageId = action.Message;

                    --Debuff applied by id..
                    if T { 82, 127, 141, 160, 164, 203, 236, 237, 242, 243, 267, 268, 269, 270, 271, 272, 277, 278, 279, 320, 374, 375, 412, 645, 754, 755, 804 }:contains(messageId) then
                        if EvaluateTriggers("DebuffingByStatus", action.Param) == false then
                            local buffData = res.buffs[action.Param];
                            if buffData then
                                EvaluateTriggers("DebuffingByStatus", buffData.en);
                            end
                        end

                    --Spell damage taken..
                    elseif T { 2, 7, 252 }:contains(messageId) then
                        if EvaluateTriggers("DebuffingBySpell", packet.Id) == false then
                            local spellData = res.spells[packet.Id];
                            if spellData then
                                EvaluateTriggers("DebuffingBySpell", spellData.en);
                            end
                        end
                    elseif (T { 603, 608 }:contains(messageId)) then
                        EvaluateTriggers("TreasureHunterUpgrade", action.Param);
                    end
                end
            end
        end
    end
    
    if id == 0x029 then
        local action_message = packets.parse('incoming', data);
        local ids = GetTriggerIds();
        if (action_message['Actor'] == ids[1]) and T{64, 204, 206, 321, 322, 341, 342, 343, 344, 350, 351, 378, 531, 647}:contains(action_message.Message) then
            if EvaluateTriggers("LostBuff", action_message['Param 1']) == false then
                local buffData = res.buffs[action_message['Param 1']];
                if buffData then
                    EvaluateTriggers("LostBuff", buffData.en);
                end
            end
        else
            EvaluateTriggers('MiscActions', action_message.Message);
        end
    end
end);
