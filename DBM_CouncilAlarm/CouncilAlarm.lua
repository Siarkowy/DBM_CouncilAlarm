local CouncilAlarm = DBM:NewBossMod("CouncilAlarm", "Council Alarm", "Flamestrike and Blizzard AoE alarm.", DBM_BLACK_TEMPLE, DBM_BT_TAB, 10)

CouncilAlarm.Version    = "1.0"
CouncilAlarm.Author     = "Siarkowy"

local SPELL_BLIZZARD    = 41482
local SPELL_CONSECRATION = 41541
local SPELL_FLAMESTRIKE = 41481

CouncilAlarm:RegisterEvents("SPELL_AURA_APPLIED")

function CouncilAlarm:OnEvent(event, arg1)
    if event == "SPELL_AURA_APPLIED" and arg1.destName == UnitName("player") then
        if arg1.spellId == SPELL_BLIZZARD then
            self:AddSpecialWarning("|cFFFFA500Blizzard!|r")

        elseif arg1.spellId == SPELL_CONSECRATION then
            self:AddSpecialWarning("|cFFFFA500Consecration!|r")

        elseif arg1.spellId == SPELL_FLAMESTRIKE then
            self:AddSpecialWarning("|cFFFFA500Flamestrike!|r")

        end
    end
end
