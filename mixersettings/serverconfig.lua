-- TAMods-Server configuration can be placed in this file
-- You can read about the configuration language at: https://www.tamods.org/docs/doc_srv_api_overview.html

ServerSettings.Description = "NA Mixer with Mapz"
ServerSettings.Motd = "Mixer-Style Rules: No HS/chain, FF on"
ServerSettings.GameSettingMode = ServerSettings.GameSettingModes.OOTB
ServerSettings.TeamAssignType = TeamAssignTypes.Unbalanced
ServerSettings.AutoBalanceTeams	= false

ServerSettings.Password = "baboon"

require("admin")

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
Admin.Roles.addMember("admin", "unquenchable")

ServerSettings.MutuallyExclusiveItems.add("Light", "BXT1", "Light", "Thrust Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "BXT1A", "Light", "Thrust Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "Phase Rifle", "Light", "Thrust Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "SAP20", "Light", "Thrust Pack")

ServerSettings.MutuallyExclusiveItems.add("Light", "BXT1", "Light", "Stealth Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "BXT1A", "Light", "Stealth Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "Phase Rifle", "Light", "Stealth Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "SAP20", "Light", "Stealth Pack")

ServerSettings.MutuallyExclusiveItems.add("Light", "BXT1", "Light", "Light Utility Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "BXT1A", "Light", "Light Utility Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "Phase Rifle", "Light", "Light Utility Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "SAP20", "Light", "Light Utility Pack")

-- Some other settings you might need, just uncomment those lines
-- If you need more settings, check the documentation at : https://www.tamods.org/docs/doc_srv_api_serverconfig.html

ServerSettings.WarmupTime = 600
ServerSettings.FriendlyFire = true
ServerSettings.CTFCapLimit = 7

ServerSettings.ShrikeLimit = 1
ServerSettings.BeowulfLimit = 0

-- Heavy can 1-shot a light with spinfusor. 800 * 1.25 DirectHitMultiplier = 1000
-- Classes.setProperty("Light", Classes.Properties.HealthPool, 1000) (default)
Items.setProperty("Heavy", "Heavy Spinfusor", Items.Properties.Damage, 800)
Items.setProperty("Heavy", "Heavy Blinksfusor", Items.Properties.Damage, 800)
Items.setProperty("Heavy", "Heavy Bolt Launcher", Items.Properties.Damage, 800)

-- Bolt Launcher does 750 damage. 600 * 1.25 DirectHitMultiplier = 750
Items.setProperty("Light", "Bolt Launcher", Items.Properties.Damage, 600)

-- Shocklance now does 500 damage, 1000 on backlance. 
Items.setProperty("Light", "Shocklance", Items.Properties.Damage, 500)

Classes.setProperty("Medium", Classes.Properties.EnergyPool, 110)
-- this settings does not work
ServerSettings.HeavyCountLimit = 3

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
ServerSettings.MapRotation.add(Maps.CTF.BellaOmega)
ServerSettings.MapRotation.add(Maps.CTF.Blueshift)
ServerSettings.MapRotation.add(Maps.CTF.Hellfire)
ServerSettings.MapRotation.add(Maps.CTF.IceCoaster)
ServerSettings.MapRotation.add(Maps.CTF.Perdition)
ServerSettings.MapRotation.add(Maps.CTF.Permafrost)
ServerSettings.MapRotation.add(Maps.CTF.Raindance)
ServerSettings.MapRotation.add(Maps.CTF.Stonehenge)
ServerSettings.MapRotation.add(Maps.CTF.Tartarus)
ServerSettings.MapRotation.add(Maps.CTF.TempleRuins)
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

ServerSettings.BannedItems.add("Light", "Sparrow")
ServerSettings.BannedItems.add("Light", "Phase Rifle")
ServerSettings.BannedItems.add("Light", "BXT1 Rifle")
ServerSettings.BannedItems.add("Light", "Falcon")
ServerSettings.BannedItems.add("Light", "Light Assault Rifle")
ServerSettings.BannedItems.add("Light", "Throwing Knives")
ServerSettings.BannedItems.add("Light", "Shotgun")

ServerSettings.BannedItems.add("Medium", "Assault Rifle")
ServerSettings.BannedItems.add("Medium", "Nova Blaster")
ServerSettings.BannedItems.add("Medium", "NJ4 SMG")
ServerSettings.BannedItems.add("Medium", "Eagle Pistol")
ServerSettings.BannedItems.add("Medium", "NJ5-B SMG")
ServerSettings.BannedItems.add("Medium", "Sawed-Off Shotgun")

ServerSettings.BannedItems.add("Heavy", "Chain Gun")
ServerSettings.BannedItems.add("Heavy", "Nova Colt")
ServerSettings.BannedItems.add("Heavy", "X1 LMG")
ServerSettings.BannedItems.add("Heavy", "Nova Blaster MX")
ServerSettings.BannedItems.add("Heavy", "Automatic Shotgun")