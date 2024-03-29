-- You can read about the configuration language at: https://www.tamods.org/docs/doc_srv_api_overview
-- Logger.setLevel(Logger.Levels.Debug)

-------------- PRESET --------------
Logger.debug("----- Loading GOTYLike Preset -----")

-- Import the GOTYLike preset
require("gotylike/main")

Logger.debug("----- GOTYLike Preset Applied -----")

-------------- SERVER INFO --------------

-- Server Information
ServerSettings.Description = "[AU] Capping Practice"
ServerSettings.Motd = "4 da cappaz"
ServerSettings.Password = ""
ServerSettings.GameSettingMode = ServerSettings.GameSettingModes.GOTY

-------------- ADMINISTRATION --------------
-------------- With Login (Must modify admin.lua) --------------
local roles = {
    -- {
    --     name     = "admin",
    --     password = "administrator", -- <<< Set the password!
    --     commands = {"NextMap", "NextMapName", "StartMap", "EndMap","sm","em"},
    --     canLua   = true, -- Admin can execute arbitrary Lua!
    -- },
    -- {
    --     name     = "mod",
    --     password = "moderator", -- <<< Set the password!
    --     commands = {"StartMap", "EndMap","sm","em"},
    --     canLua   = false,
    -- },
}
    
    -------------- Without Login --------------
local loginlessRoles = {
    {
        name     = "admin",
        commands = {"NextMap", "NextMapName", "StartMap", "EndMap","sm","em","help"},
        canLua   = true,
    },
    {
        name     = "mod",
        commands = {"StartMap", "EndMap","sm","em","help"},
        canLua   = false,
    },
}
    
-- To set up admin / moderator roles, uncomment above
doSetupRoles(roles, loginlessRoles)

Admin.Roles.addMember("admin", "fuck")
Admin.Roles.addMember("mod", "evil")
Admin.Roles.addMember("admin", "dodge")
Admin.Roles.addMember("mod", "dust")
Admin.Roles.addMember("mod", "songsteal")
Admin.Roles.addMember("mod", "aloaf")
Admin.Roles.addMember("mod", "cringe")
Admin.Roles.addMember("admin", "unquenchable")
Admin.Roles.addMember("mod", "soninova")
Admin.Roles.addMember("mod", "theobaldthebird")
Admin.Roles.addMember("mod", "frogkabobs")
Admin.Roles.addMember("mod", "aloaf")
Admin.Roles.addMember("mod", "gred")
Admin.Roles.addMember("mod", "schomo")
Admin.Roles.addMember("mod", "imascrewup")

-------------- Map Rotation --------------
ServerSettings.MapRotation.VotingEnabled = true
ServerSettings.MapRotation.Mode = ServerSettings.MapRotation.Modes.Sequential -- Can be set to ServerSettings.MapRotation.Modes.Random for random map rotation.
-------------- Capture the Flag --------------
ServerSettings.MapRotation.add(Maps.CTF.Katabatic)
ServerSettings.MapRotation.add(Maps.CTF.ArxNovena)
ServerSettings.MapRotation.add(Maps.CTF.DangerousCrossing)
ServerSettings.MapRotation.add(Maps.CTF.Crossfire)
ServerSettings.MapRotation.add(Maps.CTF.Drydock)
ServerSettings.MapRotation.add(Maps.CTF.Terminus)
ServerSettings.MapRotation.add(Maps.CTF.Sunstar)
ServerSettings.MapRotation.add(Maps.CTF.BellaOmegaNS)
ServerSettings.MapRotation.add(Maps.CTF.CanyonCrusade)
--ServerSettings.MapRotation.add(Maps.CTF.BellaOmega)
ServerSettings.MapRotation.add(Maps.CTF.Blueshift)
ServerSettings.MapRotation.add(Maps.CTF.Hellfire)
ServerSettings.MapRotation.add(Maps.CTF.IceCoaster)
ServerSettings.MapRotation.add(Maps.CTF.Perdition)
ServerSettings.MapRotation.add(Maps.CTF.Permafrost)
ServerSettings.MapRotation.add(Maps.CTF.Raindance)
ServerSettings.MapRotation.add(Maps.CTF.Stonehenge)
ServerSettings.MapRotation.add(Maps.CTF.Tartarus)
ServerSettings.MapRotation.add(Maps.CTF.TempleRuins)
--[[
]]
-------------- Player Made Maps --------------
-- Note: These need to be installed manually on the server prior to enabling.
ServerSettings.MapRotation.addCustom("TrCTF-Blues")
ServerSettings.MapRotation.addCustom("TrCTF-Incidamus")
ServerSettings.MapRotation.addCustom("TrCTF-Periculo")
ServerSettings.MapRotation.addCustom("TrCTF-Fracture")
ServerSettings.MapRotation.addCustom("TrCTF-Phlegethon")
ServerSettings.MapRotation.addCustom("TrCTF-DesertedValley")
ServerSettings.MapRotation.addCustom("TrCTF-Acheron")
ServerSettings.MapRotation.addCustom("TrCTF-Styx")
ServerSettings.MapRotation.addCustom("TrCTF-Eclipse")
ServerSettings.MapRotation.addCustom("TrCTF-Polaris")
ServerSettings.MapRotation.addCustom("TrCTF-Oceanus")
ServerSettings.MapRotation.addCustom("TrCTF-Meridian")
ServerSettings.MapRotation.addCustom("TrCTF-Ascent")
ServerSettings.MapRotation.addCustom("TrCTF-Crash")
ServerSettings.MapRotation.addCustom("TrCTF-TreacherousPass")
-------------- Arena --------------
--[[
ServerSettings.MapRotation.addCustom("TrArena-Walledin")
ServerSettings.MapRotation.addCustom("TrArena-ElysianBattleground")
ServerSettings.MapRotation.addCustom("TrArena-Fraytown")
ServerSettings.MapRotation.addCustom("TrArena-Lavaarena")
ServerSettings.MapRotation.addCustom("TrArena-Airarena")
ServerSettings.MapRotation.addCustom("TrArena-Whiteout")
ServerSettings.MapRotation.addCustom("TrArena-Undercroft")
ServerSettings.MapRotation.addCustom("TrArena-Hinterland")
]]
-------------- Rabbit --------------
--[[
ServerSettings.MapRotation.add(Maps.Rabbit.Nightabatic)
ServerSettings.MapRotation.add(Maps.Rabbit.SulfurCove)
ServerSettings.MapRotation.add(Maps.Rabbit.Inferno)
ServerSettings.MapRotation.add(Maps.Rabbit.Crossfire)
ServerSettings.MapRotation.add(Maps.Rabbit.Outskirts)
ServerSettings.MapRotation.add(Maps.Rabbit.Quicksand)
]]
-------------- Team Death Match --------------
--[[
ServerSettings.MapRotation.add(Maps.TDM.Outskirts)
ServerSettings.MapRotation.add(Maps.TDM.Quicksand)
ServerSettings.MapRotation.add(Maps.TDM.SulfurCove)
ServerSettings.MapRotation.add(Maps.TDM.DrydockNight)
ServerSettings.MapRotation.add(Maps.TDM.Nightabatic)
ServerSettings.MapRotation.add(Maps.TDM.Inferno)
ServerSettings.MapRotation.add(Maps.TDM.Miasma)
]]
-------------- CTF Blitz --------------
--[[
ServerSettings.MapRotation.add(Maps.Blitz.ArxNovena)
ServerSettings.MapRotation.add(Maps.Blitz.BellaOmega)
ServerSettings.MapRotation.add(Maps.Blitz.Blueshift)
ServerSettings.MapRotation.add(Maps.Blitz.Crossfire)
ServerSettings.MapRotation.add(Maps.Blitz.CanyonCrusadeRevival)
ServerSettings.MapRotation.add(Maps.Blitz.Drydock)
ServerSettings.MapRotation.add(Maps.Blitz.Hellfire)
ServerSettings.MapRotation.add(Maps.Blitz.IceCoaster)
ServerSettings.MapRotation.add(Maps.Blitz.Katabatic)
ServerSettings.MapRotation.add(Maps.Blitz.Perdition)
ServerSettings.MapRotation.add(Maps.Blitz.Terminus)
]]
-------------- Capture and Hold --------------
--[[
ServerSettings.MapRotation.add(Maps.CaH.Outskirts)
ServerSettings.MapRotation.add(Maps.CaH.Katabatic)
ServerSettings.MapRotation.add(Maps.CaH.Raindance)
ServerSettings.MapRotation.add(Maps.CaH.SulfurCove)
ServerSettings.MapRotation.add(Maps.CaH.Tartarus)
ServerSettings.MapRotation.add(Maps.CaH.CanyonCrusadeRevival)
]]
