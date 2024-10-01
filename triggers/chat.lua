--[[
    This triggers on messages in say, shout, yell, tell, party, linkshell, and assist.  Unity messages by players will trigger, by NPCs will not.
    The special token $name will be replaced with your character's current name in both patterns and wildcards.
    Each entry has multiple possible parameters:
        CaseSensitive (boolean) - If this is set to true, capital letters must match in patterns and wildcards.  Default if not specified is false.
        Pattern (string) - A lua pattern to match against the content of the message.  If specified, the content must match this for the sound to play.
        Wildcard (string) - A wildcard string to match against the content of the message.  If specified, the content must match this for the sound to play.
        Sender (string) - If specified, the sender of the message must be exactly the same as the provided string for the sound to play.
        Mode (string) - If specified, the message must be in the specified mode for the sound to play.
            -Valid options are: say, shout, tell, party, linkshell, emote, yell, linkshell2, unity, assistj, assiste
            -A table of multiple options is allowed:
                Mode = T{ say, shout, tell },
        Sound (string) - The sound file to use.
]]--

return {
    {
        Wildcard = '*$name*',
        Sound = 'YouAreBeingTalkedAbout.wav',
    },
    {
        Mode = 'tell',
        Sound = 'IncomingTell.wav',
    },
    {
        Wildcard = '*peach*power*',
        Sound = 'PeachPower.wav',
    },
    {
        Mode = { 'say', 'yell' },
        Sound = 'Chat.wav',
    },
};