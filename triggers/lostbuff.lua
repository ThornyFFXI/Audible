--[[
    This triggers when you lose a buff or one of your applied buffs or debuffs expires on a player.
    You can specify buffs by either the buff name(must be exactly the same as game uses) or the ID.
]]--

return {
    ['Blink'] = "Blink.wav",
    --[37] = "Stoneskin.wav",
    [39] = "Aquaveil.wav",
    [40] = "Protect.wav",
    [41] = "Shell.wav",
    [66] = "Utsusemi.wav",
    [69] = "Invisible.wav",
    [70] = "Deodorize.wav",
    [71] = "Sneak.wav",
    [113] = "Reraise.wav",
    [116] = "Phalanx.wav",
    [152] = "Magic Barrier.wav",
    [154] = "Shining Ruby.wav",
    [170] = "Adloquium.wav",
    [228] = "Embrava.wav",
    [251] = "Food.wav",
    [275] = "Auspice.wav",
    [289] = "Animus Augeo.wav",
    [403] = "Reprisal.wav",
    [407] = "Klimaform.wav",
    [432] = "Temper.wav",
    [458] = "Earthen Armor.wav",
    [176] = "Quickened.wav",
    [555] = "Magic Accuracy Boost.wav",
    [587] = "TP Bonus.wav",
    [604] = "Mighty Guard.wav",
    [624] = "Winds Blessing.wav",
    [33] = "Haste.wav",
    [580] = "Haste.wav",
    [42] = "Regen.wav",
    [539] = "Regen.wav",
    [43] = "Refresh.wav",
    [541] = "Refresh.wav",
    [90] = "Accuracy Boost.wav",
    [553] = "Accuracy Boost.wav",
    [91] = "Attack Boost.wav",
    [549] = "Attack Boost.wav",
    [92] = "Evasion Boost.wav",
    [554] = "Evasion Boost.wav",
    [93] = "Defense Boost.wav",
    [550] = "Defense Boost.wav",
    [171] = "Animus Minuo.wav",
    [291] = "Animus Minuo.wav",
    [190] = "Magic Attack Boost.wav",
    [551] = "Magic Attack Boost.wav",
    [191] = "Magic Defense Boost.wav",
    [552] = "Magic Defense Boost.wav",
    [265] = "Flurry.wav",
    [581] = "Flurry.wav",
    [556] = "Magic Evasion Boost.wav",
    [611] = "Magic Evasion Boost.wav",

    --Aftermaths
    [270] = "Aftermath 1.wav",
    [271] = "Aftermath 2.wav",
    [272] = "Aftermath 3.wav",

    --Songs
    [195] = "Paeon.wav",
    [196] = "Ballad.wav",
    [197] = "Minne.wav",
    [198] = "Minuet.wav",
    [199] = "Madrigal.wav",
    [200] = "Prelude.wav",
    [201] = "Mambo.wav",
    [214] = "March.wav",
    [215] = "Etude.wav",
    [216] = "Carol.wav",
    [219] = "Mazurka.wav",
    [220] = "Sirvente.wav",
    [221] = "Dirge.wav",
    [222] = "Scherzo.wav",

    --Rolls
    [310] = "Fighters.wav",
    [311] = "Monks.wav",
    [312] = "Healers.wav",
    [313] = "Wizards.wav",
    [314] = "Warlocks.wav",
    [315] = "Rogues.wav",
    [316] = "Gallants.wav",
    [317] = "Chaos.wav",
    [318] = "Beast.wav",
    [319] = "Choral.wav",
    [320] = "Hunters.wav",
    [321] = "Samurai.wav",
    [322] = "Ninjas.wav",
    [323] = "Drachen.wav",
    [324] = "Evokers.wav",
    [325] = "Magus.wav",
    [326] = "Corsairs.wav",
    [327] = "Puppet.wav",
    [328] = "Dancers.wav",
    [329] = "Scholars.wav",
    [330] = "Bolters.wav",
    [331] = "Casters.wav",
    [332] = "Coursers.wav",
    [333] = "Blitzers.wav",
    [334] = "Tacticians.wav",
    [335] = "Allies.wav",
    [336] = "Misers.wav",
    [337] = "Companions.wav",
    [338] = "Avengers.wav",
    [339] = "Naturalists.wav",
    [600] = "Runeist.wav",

    --Spikes
    [34] = "Blaze Spikes.wav",
    [35] = "Ice Spikes.wav",
    [38] = "Shock Spikes.wav",
    [173] = "Dread Spikes.wav",

    --Enfeebles wearing
    [5] = "Blind.wav",
    [6] = "Silence.wav",
    [7] = "Petrify.wav",
    [11] = "Bind.wav",
    [21] = "Addle.wav",
    [134] = "Dia.wav",
    [597] = "Inundate.wav",
    [2] = "Sleep.wav",
    [19] = "Sleep.wav",
    [3] = "Poison.wav",
    [540] = "Poison.wav",
    [4] = "Paralyze.wav",
    [566] = "Paralyze.wav",
    [12] = "Gravity.wav",
    [567] = "Gravity.wav",
    [13] = "Slow.wav",
    [565] = "Slow.wav",
    [148] = "Evasion Down.wav",
    [562] = "Evasion Down.wav",
    [404] = "Magic Evasion Down.wav",
    [564] = "Magic Evasion Down.wav",

    --Status wearing
    [8] = "Disease.wav",
    [10] = "Stun.wav",
    [15] = "Doom.wav",
    [16] = "Amnesia.wav",
    [28] = "Terror.wav",
    [31] = "Virus.wav",
    [22] = "Intimidate.wav",
    [155] = "Medicate.wav",
    [156] = "Flash.wav",
    [9] = "Curse.wav",
    [20] = "Curse.wav",
    [14] = "Charm.wav",
    [17] = "Charm.wav",
    [177] = "Encumbrance.wav",
    [259] = "Encumbrance.wav",

    --Helix
    [23] = "Kaustra.wav",
    [186] = "Helix.wav",

    --Down Syndrome's
    [136] = "Strength Down.wav",
    [137] = "Dexterity Down.wav",
    [138] = "Agility Down.wav",
    [139] = "Vitality Down.wav",
    [140] = "Intelligence Down.wav",
    [141] = "Mind Down.wav",
    [142] = "Charisma Down.wav",
    [146] = "Accuracy Down.wav",
    [561] = "Accuracy Down.wav",
    [147] = "Attack Down.wav",
    [557] = "Attack Down.wav",
    [149] = "Defense Down.wav",
    [558] = "Defense Down.wav",
    [174] = "Magic Accuracy Down.wav",
    [563] = "Magic Accuracy Down.wav",
    [167] = "Magic Defense Down.wav",
    [560] = "Magic Defense Down.wav",
    [175] = "Magic Attack Down.wav",
    [559] = "Magic Attack Down.wav",

    --Bard Enfeebs 
    [192] = "Requiem.wav",
    [194] = "Elegy.wav",
    [217] = "Threnody.wav",
    [223] = "Nocturne.wav",

    --Elemental Dots
    [128] = "Burn.wav",
    [129] = "Frost.wav",
    [130] = "Choke.wav",
    [131] = "Rasp.wav",
    [132] = "Shock.wav",
    [133] = "Drown.wav",
    [135] = "Bio.wav",

    --Enspells
    [274] = "Enlight.wav",
    [288] = "Endark.wav",
    [94] = "Enfire.wav",
    [277] = "Enfire.wav",
    [95] = "EEnblizzard.wav",
    [278] = "EEnblizzard.wav",
    [96] = "Enaero.wav",
    [279] = "Enaero.wav",
    [97] = "Enstone.wav",
    [280] = "Enstone.wav",
    [98] = "Enthunder.wav",
    [281] = "Enthunder.wav",
    [99] = "Enwater.wav",
    [282] = "Enwater.wav",

    --Storms
    [178] = "Firestorm.wav",
    [589] = "Firestorm.wav",
    [179] = "Hailstorm.wav",
    [590] = "Hailstorm.wav",
    [180] = "Windstorm.wav",
    [591] = "Windstorm.wav",
    [181] = "Sandstorm.wav",
    [592] = "Sandstorm.wav",
    [182] = "Thunderstorm.wav",
    [593] = "Thunderstorm.wav",
    [183] = "Rainstorm.wav",
    [594] = "Rainstorm.wav",
    [184] = "Aurorastorm.wav",
    [595] = "Aurorastorm.wav",
    [185] = "Voidstorm.wav",
    [596] = "Voidstorm.wav",

    --Negates/Buffers
    [293] = "Negate Petrify.wav",
    [294] = "Negate Terror.wav",
    [295] = "Negate Amnesia.wav",
    [296] = "Negate Doom.wav",
    [297] = "Negate Poison.wav",
    [608] = "Negate Virus.wav",
    [609] = "Negate Curse.wav",
    [610] = "Negate Charm.wav",
    [626] = "Negate Sleep.wav",

    --Attribute Boost
    [80] = "STR Boost.wav",
    [119] = "STR Boost.wav",
    [542] = "STR Boost.wav",
    [81] = "DEX Boost.wav",
    [120] = "DEX Boost.wav",
    [543] = "DEX Boost.wav",
    [82] = "VIT Boost.wav",
    [121] = "VIT Boost.wav",
    [544] = "VIT Boost.wav",
    [83] = "AGI Boost.wav",
    [122] = "AGI Boost.wav",
    [545] = "AGI Boost.wav",
    [84] = "INT Boost.wav",
    [123] = "INT Boost.wav",
    [546] = "INT Boost.wav",
    [85] = "MND Boost.wav",
    [124] = "MND Boost.wav",
    [547] = "MND Boost.wav",
    [86] = "CHR Boost.wav",
    [125] = "CHR Boost.wav",
    [548] = "CHR Boost.wav",

    --Bar Elements
    [100] = "Barfire.wav",
    [101] = "Barblizzard.wav",
    [102] = "Baraero.wav",
    [103] = "Barstone.wav",
    [104] = "Barthunder.wav",
    [105] = "Barwater.wav",

    --Bar Ailments
    [106] = "Barsleep.wav",
    [107] = "Barpoison.wav",
    [108] = "Barparalyze.wav",
    [109] = "Barblind.wav",
    [110] = "Barsilence.wav",
    [111] = "Barpetrify.wav",
    [112] = "Barvirus.wav",
    [286] = "Baramnesia.wav",

    --Dancer Steps
    [386] = 'Quick Step.wav',
    [387] = 'Quick Step.wav',
    [388] = 'Quick Step.wav',
    [389] = 'Quick Step.wav',
    [390] = 'Quick Step.wav',
    [391] = "Box Step.wav",
    [392] = "Box Step.wav",
    [393] = "Box Step.wav",
    [394] = "Box Step.wav",
    [395] = "Box Step.wav",
    [396] = "Stutter Step.wav",
    [397] = "Stutter Step.wav",
    [398] = "Stutter Step.wav",
    [399] = "Stutter Step.wav",
    [400] = "Stutter Step.wav",
    [448] = "Feather Step.wav",
    [449] = "Feather Step.wav",
    [450] = "Feather Step.wav",
    [451] = "Feather Step.wav",
    [452] = "Feather Step.wav",

    --Bard
    [52] = "Soul Voice.wav",
    [231] = "Marcato.wav",
    [347] = "Nightingale.wav",
    [348] = "Troubadour.wav",
    [409] = "Pianissimo.wav",
    [455] = "Tenuto.wav",
    [499] = "Clarion Call.wav",

    --Black Mage
    [47] = "Manafont.wav",
    [79] = "Elemental Seal.wav",
    [229] = "Manawell.wav",
    [437] = "Mana Wall.wav",
    [493] = "Subtle Sorcery.wav",
    [598] = "Cascade.wav",

    --Blue Mage
    [163] = "Azure Lore.wav",
    [164] = "Chain Affinity.wav",
    [165] = "Burst Affinity.wav",
    [355] = "Convergence.wav",
    [356] = "Diffusion.wav",
    [457] = "Efflux.wav",
    [485] = "Unbridled Learning.wav",
    [505] = "Unbridled Wisdom.wav",

    --Corsair
    [308] = "Double Up.wav",
    [357] = "Snake Eye.wav",
    [467] = "Triple Shot.wav",
    [601] = "Crooked Cards.wav",

    --Dancer
    [376] = "Trance.wav",
    [410] = "Saber Dance.wav",
    [411] = "Fan Dance.wav",
    [442] = "Presto.wav",
    [368] = "Drain Samba.wav",
    [369] = "Aspir Samba.wav",
    [370] = "Haste Samba.wav",
    [507] = "Grand Pas.wav",
    [582] = "Contradance.wav",

    --Dark Knight
    [51] = "Blood Weapon.wav",
    [63] = "Souleater.wav",
    [64] = "Last Resort.wav",
    [75] = "Arcane Circle.wav",
    [345] = "Dark Seal.wav",
    [346] = "Diabolic Eye.wav",
    [439] = "Nether Void.wav",
    [464] = "Arcane Crest.wav",
    [479] = "Scarlet Delirium.wav",
    [497] = "Soul Enslavement.wav",
    [599] = "Consume Mana.wav",

    --Dragoon
    [118] = "Ancient Circle.wav",
    [126] = "Spirit Surge.wav",
    [466] = "Dragon Breaker.wav",
    [503] = "Fly High.wav",
    [619] = "Spirit Bond.wav",

    --Geomancer
    [508] = "Widened Compass.wav",
    [513] = "Bolster.wav",
    [517] = "Collimated Fervor.wav",
    [518] = "Dematerialize.wav",
    [519] = "Theurgic Focus.wav",
    [569] = "Blaze of Glory.wav",
    [584] = "Entrust.wav",

    --Monk
    [46] = "Hundred Fists.wav",
    [59] = "Focus.wav",
    [60] = "Dodge.wav",
    [61] = "Counterstance.wav",
    [88] = "Mantra.wav",
    [341] = "Formless Strikes.wav",
    [406] = "Footwork.wav",
    [436] = "Perfect Counter.wav",
    [461] = "Impetus.wav",
    [491] = "Inner Strength.wav",
    [615] = "Boost.wav",

    --Ninja
    [352] = "Sange.wav",
    [420] = "Yonin.wav",
    [421] = "Innin.wav",
    [441] = "Futae.wav",
    [484] = "Issekigan.wav",
    [502] = "Mikage.wav",

    --Paladin
    [50] = "Invincible.wav",
    [62] = "Sentinel.wav",
    [74] = "Holy Circle.wav",
    [114] = "Cover.wav",
    [344] = "Fealty.wav",
    [438] = "Divine Emblem.wav",
    [463] = "Sepulcher.wav",
    [478] = "Palisade.wav",
    [496] = "Intervene.wav",
    [621] = "Majesty.wav",
    [623] = "Rampart.wav",

    --Ranger
    [72] = "Sharpshot.wav",
    [73] = "Barrage.wav",
    [77] = "Camouflage.wav",
    [115] = "Unlimited Shot.wav",
    [350] = "Stealth Shot.wav",
    [351] = "Flashy Shot.wav",
    [371] = "Velocity Shot.wav",
    [433] = "Double Shot.wav",
    [482] = "Decoy Shot.wav",
    [500] = "Overkill.wav",
    [628] = "Hover Shot.wav",

    --Red Mage
    [48] = "Chainspell.wav",
    [230] = "Spontaneity.wav",
    [419] = "Composure.wav",
    [454] = "Saboteur.wav",
    [494] = "Stymie.wav",

    --Samurai
    [54] = "Meikyo Shisui.wav",
    [67] = "Third Eye.wav",
    [117] = "Warding Circle.wav",
    [353] = "Hasso.wav",
    [354] = "Seigan.wav",
    [408] = "Sekkanoki.wav",
    [440] = "Sengikori.wav",
    [483] = "Hagakure.wav",
    [501] = "Yaegasumi.wav",

    --Scholar
    [358] = "Light Arts.wav",
    [359] = "Dark Arts.wav",
    [360] = "Penury.wav",
    [361] = "Parsimony.wav",
    [362] = "Celerity.wav",
    [363] = "Alacrity.wav",
    [364] = "Rapture.wav",
    [365] = "Ebullience.wav",
    [366] = "Accession.wav",
    [367] = "Manifestation.wav",
    [377] = "Tabula Rasa.wav",
    [401] = "Addendum White.wav",
    [402] = "Addendum Black.wav",
    [416] = "Enlightenment.wav",
    [469] = "Perpetuance.wav",
    [470] = "Immanence.wav",

    --Summoner
    [55] = "Astral Flow.wav",
    [283] = "Perfect Defense.wav",
    [431] = "Avatars Favor.wav",
    [504] = "Astral Conduit.wav",
    [583] = "Apogee.wav",

    --Thief
    [32] = "Flee.wav",
    [49] = "Perfect Dodge.wav",
    [65] = "Sneak Attack.wav",
    [76] = "Hide.wav",
    [87] = "Trick Attack.wav",
    [342] = "Assassins Charge.wav",
    [343] = "Feint.wav",
    [462] = "Conspirator.wav",

    --Warrior
    [44] = "Mighty Strikes.wav",
    [56] = "Berserk.wav",
    [57] = "Defender.wav",
    [58] = "Aggressor.wav",
    [68] = "Warcry.wav",
    [340] = "Warriors Charge.wav",
    [405] = "Retaliation.wav",
    [435] = "Restraint.wav",
    [460] = "Blood Rage.wav",
    [490] = "Brazen Rush.wav",

	--White Mage
    [78] = "Divine Seal.wav",
    [417] = "Afflatus Solace.wav",
    [418] = "Afflatus Misery.wav",
    [453] = "Divine Caress.wav",
    [477] = "Sacrosanctity.wav",
    [492] = "Asylum.wav",

	--BST+PUP
    [166] = "Overdrive.wav",
    [498] = "Unleash.wav",
};