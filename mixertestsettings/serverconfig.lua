-- TAMods-Server configuration can be placed in this file
-- You can read about the configuration language at: https://www.tamods.org/docs/doc_srv_api_overview.html


-------------- SERVER INFO --------------

ServerSettings.Description = "NA Mixer [jagle style]"
ServerSettings.Motd = "Mixer-Style Rules: No HS/chain, FF on"
ServerSettings.GameSettingMode = ServerSettings.GameSettingModes.OOTB
ServerSettings.TeamAssignType = TeamAssignTypes.Unbalanced
ServerSettings.AutoBalanceTeams	= false

ServerSettings.Password = "baboon"

ServerSettings.WarmupTime = 600
ServerSettings.FriendlyFire = true
ServerSettings.CTFCapLimit = 7

ServerSettings.ShrikeLimit = 1
ServerSettings.BeowulfLimit = 1

ServerSettings.MapRotation.VotingEnabled = true
ServerSettings.MapRotation.Mode = ServerSettings.MapRotation.Modes.Sequential


-------------- STANDARD OOTB SETTINGS --------------

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

ServerSettings.BannedItems.add("Light", "Sparrow")
ServerSettings.BannedItems.add("Light", "Phase Rifle")
ServerSettings.BannedItems.add("Light", "BXT1 Rifle")
ServerSettings.BannedItems.add("Light", "Shotgun")
ServerSettings.BannedItems.add("Medium", "Eagle Pistol")
ServerSettings.BannedItems.add("Medium", "Sawed-Off Shotgun")
ServerSettings.BannedItems.add("Heavy", "Nova Colt")
ServerSettings.BannedItems.add("Heavy", "Automatic Shotgun")
ServerSettings.BannedItems.add("Light", "Falcon")
ServerSettings.BannedItems.add("Light", "Throwing Knives")
ServerSettings.BannedItems.add("Light", "Light Assault Rifle")
ServerSettings.BannedItems.add("Medium", "Assault Rifle")
ServerSettings.BannedItems.add("Medium", "NJ4")
ServerSettings.BannedItems.add("Medium", "NJ5")
ServerSettings.BannedItems.add("Medium", "Nova Blaster")
ServerSettings.BannedItems.add("Medium", "Flak Cannon")
ServerSettings.BannedItems.add("Heavy", "Chaingun")
ServerSettings.BannedItems.add("Heavy", "X1")
ServerSettings.BannedItems.add("Heavy", "Nova Blaster MX")
ServerSettings.BannedItems.add("Heavy", "EFG")

Items.setProperty("Light", "stickygrenade", Items.Properties.SpareAmmo, 3)
Items.setProperty("Light", "stickygrenade", Items.Properties.Damage, 1000.00)
Items.setProperty("Light", "stickygrenade", Items.Properties.StuckDamageMultiplier, 1.0)

Items.setProperty("Heavy", "saberlauncher", Items.Properties.ReloadTime, 1.5)
--Projectiles.setProperty("saberlauncherdumbfire", Projectiles.Properties.Damage, 600.00)
--Projectiles.setProperty("saberlauncherdumbfire", Projectiles.Properties.DirectHitMultiplier, 1.25)
--Projectiles.setProperty("saberlauncherdumbfire", Projectiles.Properties.ExplosiveRadius, 450.0)
--Projectiles.setProperty("saberlauncherdumbfire", Projectiles.Properties.CollisionSize, 30.0)

Items.setProperty("Medium", "apgrenade", Items.Properties.Damage, 880.00)
Items.setProperty("Medium", "apgrenade", Items.Properties.DirectHitMultiplier, 1.25)
Items.setProperty("Medium", "apgrenade", Items.Properties.ImpactMomentum, 110000.00)
Items.setProperty("Medium", "apgrenade", Items.Properties.MinDamageRangeProportion, 1.0)
Items.setProperty("Medium", "apgrenade", Items.Properties.MinDamageProportion, 0.5)
Items.setProperty("Medium", "apgrenade", Items.Properties.ExplosiveRadius, 800.00)
Items.setProperty("Medium", "apgrenade", Items.Properties.ExplodeOnContact, true)
Items.setProperty("Medium", "apgrenade", Items.Properties.MustBounceBeforeExplode, false)

Items.setProperty("Medium", "arxbuster", Items.Properties.ProjectileLifespan, 12.0)

Items.setProperty("Light", "boltlauncher", Items.Properties.ProjectileLifespan, 12.0)
Items.setProperty("Light", "boltlauncher", Items.Properties.Damage, 600.0)

Items.setProperty("Medium", "spinfusor", Items.Properties.ProjectileLifespan, 12.0)

Items.setProperty("Medium", "grenadelauncher", Items.Properties.ProjectileInheritance, 1.0)
Items.setProperty("Medium", "grenadelauncher", Items.Properties.ProjectileLifespan, 12.0)

Items.setProperty("Light", "grenadelauncher", Items.Properties.ProjectileLifespan, 12.0)

Items.setProperty("Light", "T5", Items.Properties.Damage, 800.00)
Items.setProperty("Light", "T5", Items.Properties.DirectHitMultiplier, 1.25)
Items.setProperty("Light", "T5", Items.Properties.ImpactMomentum, 110000.00)
Items.setProperty("Light", "T5", Items.Properties.MinDamageRangeProportion, 1.0)
Items.setProperty("Light", "T5", Items.Properties.MinDamageProportion, 0.5)
Items.setProperty("Light", "T5", Items.Properties.ExplosiveRadius, 800.00)
Items.setProperty("Light", "T5", Items.Properties.ExplodeOnContact, true)
Items.setProperty("Light", "T5", Items.Properties.MustBounceBeforeExplode, false)

Items.setProperty("Heavy", "fraggrenade", Items.Properties.Damage, 960.00)
Items.setProperty("Heavy", "fraggrenade", Items.Properties.DirectHitMultiplier, 1.25)
Items.setProperty("Heavy", "fraggrenade", Items.Properties.ImpactMomentum, 110000.00)
Items.setProperty("Heavy", "fraggrenade", Items.Properties.MinDamageRangeProportion, 1.0)
Items.setProperty("Heavy", "fraggrenade", Items.Properties.MinDamageProportion, 0.5)
Items.setProperty("Heavy", "fraggrenade", Items.Properties.ExplosiveRadius, 800.00)
Items.setProperty("Heavy", "fraggrenade", Items.Properties.ExplodeOnContact, true)
Items.setProperty("Heavy", "fraggrenade", Items.Properties.MustBounceBeforeExplode, false)
--Items.setProperty("Heavy", "heavyapgrenade", Items.Properties.MustBounceBeforeExplode, true)

--check if same trajectory as bolt
Items.setProperty("Heavy", "heavyboltlauncher", Items.Properties.Damage, 800.00)
Items.setProperty("Heavy", "heavyboltlauncher", Items.Properties.ProjectileTerminalVelocity, 7000.0)
Items.setProperty("Heavy", "heavyboltlauncher", Items.Properties.ProjectileLifespan, 12.0)

Items.setProperty("Heavy", "heavyspinfusor", Items.Properties.Damage, 800.00)
Items.setProperty("Heavy", "heavyspinfusor", Items.Properties.ProjectileLifespan, 12.0)

Items.setProperty("Heavy", "heavyblinksfusor", Items.Properties.Damage, 800.00)
Items.setProperty("Heavy", "heavyblinksfusor", Items.Properties.ProjectileLifespan, 12.0)

Items.setProperty("Medium", "twinfusor", Items.Properties.Damage, 400.00)
Items.setProperty("Medium", "twinfusor", Items.Properties.ImpactMomentum, 85000.00)
Items.setProperty("Medium", "twinfusor", Items.Properties.SelfImpactMomentumMultiplier, 1.0)
Items.setProperty("Medium", "twinfusor", Items.Properties.ProjectileLifespan, 12.0)

Items.setProperty("Heavy", "heavytwinfusor", Items.Properties.SelfImpactMomentumMultiplier, 1.0)
Items.setProperty("Heavy", "heavytwinfusor", Items.Properties.Damage, 457.00)
Items.setProperty("Heavy", "heavytwinfusor", Items.Properties.ImpactMomentum, 85000.00)
Items.setProperty("Heavy", "heavytwinfusor", Items.Properties.ProjectileLifespan, 12.0)

Items.setProperty("Medium", "honorfusor", Items.Properties.ProjectileLifespan, 12.0)

Items.setProperty("Light", "lightspinfusor", Items.Properties.ProjectileLifespan, 12.0)

Items.setProperty("Light", "blinksfusor", Items.Properties.ProjectileLifespan, 12.0)

Items.setProperty("Light", "lighttwinfusor", Items.Properties.Damage, 333.4)
Items.setProperty("Light", "lighttwinfusor", Items.Properties.ImpactMomentum, 85000.00)
Items.setProperty("Light", "lighttwinfusor", Items.Properties.SelfImpactMomentumMultiplier, 1.0)
Items.setProperty("Light", "lighttwinfusor", Items.Properties.ProjectileLifespan, 12.0)

Items.setProperty("Medium", "blinksfusor", Items.Properties.ProjectileLifespan, 12.0)

Items.setProperty("Medium", "thumper", Items.Properties.ProjectileLifespan, 12.0)
Items.setProperty("Medium", "thumper", Items.Properties.ProjectileGravity, 0.4)
Items.setProperty("Medium", "thumper", Items.Properties.ProjectileSpeed, 3820.0)

--add lines for med thumper dx
Items.setProperty("Medium", "thumperdx", Items.Properties.ExplosiveRadius, 400)
Items.setProperty("Medium", "thumperdx", Items.Properties.MinDamageProportion, 0.3)
Items.setProperty("Medium", "thumperdx", Items.Properties.MinDamageRangeProportion, 1.0)

Items.setProperty("Light", "chaffgrenades", Items.Properties.SpareAmmo, 4)

Items.setProperty("Light", "explosivenitron", Items.Properties.ProjectileLifespan, 12.0)

Items.setProperty("Heavy", "gladiator", Items.Properties.ProjectileLifespan, 12.0)

Items.setProperty("Heavy", "mirvlauncher", Items.Properties.FuseTimer, 1.5)
--Projectiles.setProperty("mirvlauncher", Projectiles.Properties.MIRVSecondaryExplosions, 5)

--Projectiles.setProperty("clustergrenade", Projectiles.Properties.MIRVSecondaryExplosions, 7)

Items.setProperty("Light", "thrustpack", Items.Properties.ThrustPackMinVerticalImpulse, -10000000.0)
Items.setProperty("Light", "shocklance", Items.Properties.Damage, 500.0)

Vehicles.setProperty("Grav Cycle", Vehicles.Properties.MaxCrashDamage, 0.00)
Vehicles.setProperty("Grav Cycle", Vehicles.Properties.MinCrashDamage, 0.00)
Vehicles.setProperty("Grav Cycle", Vehicles.Properties.HealthPool, 2800.0)
VehicleWeapons.setProperty("Beowulf Cannon", VehicleWeapons.Properties.DirectHitMultiplier, 1.30)
VehicleWeapons.setProperty("Beowulf Chaingun", VehicleWeapons.Properties.SpareAmmo, 0)
VehicleWeapons.setProperty("Beowulf Chaingun", VehicleWeapons.Properties.ClipAmmo, 0)
VehicleWeapons.setProperty("Beowulf Chaingun", VehicleWeapons.Properties.Damage, 0.00)
Classes.setValueMods("Medium", {
  {ValueMods.JammerPackRadiusBuff, 2.00},
  {ValueMods.QuickDraw, 0.50},
  {ValueMods.QuickDrawBelt, 0.50},
  {ValueMods.SensorDetectionReduction, 0.50},
  {ValueMods.AcquisitionTimeByEnemyTurretsBuff, 2.00},
  {ValueMods.SurvivalistHealth, 0.266667},
  {ValueMods.VehicleEnergyBuff, 0.25},
  {ValueMods.SurvivalistEnergy, 0.20},
  {ValueMods.SelfDamageReduction, 0.20},
})

--Adds Call-ins
ServerSettings.EnableInventoryCallIn = true
ServerSettings.InventoryStationsRestoreEnergy = true
ServerSettings.InventoryCallInBlocksPlayers = false
ServerSettings.InventoryCallInCost = 2000
ServerSettings.InventoryCallInBuildUpTime = 2.0
ServerSettings.InventoryCallInCooldownTime = 30.0

--Projectiles.setProperty("explosivenitron", Projectiles.Properties.ImpactMomentum, 10000000.00)
--Projectiles.setProperty("mirvlauncher", Projectiles.Properties.MIRVSecondaryProjectile, 86699)
--Projectiles.setProperty("mirvlauncher", Projectiles.Properties.MIRVSecondaryExplosions, 20)
--Projectiles.setProperty("gladiator", Projectiles.Properties.GladiatorTertiaryProjectile, 86209)
--Projectiles.setProperty("blinks", Projectiles.Properties.ProjectileBounce, true)
--Projectiles.setProperty("lightspinfusor", Projectiles.Properties.Damage, -400)
--Projectiles.setProperty("lightspinfusor", Projectiles.Properties.ImpactMomentum, -100000)
--Projectiles.setProperty("flaregrenade", Projectiles.Properties.Damage, 400)
--Projectiles.setProperty("flaregrenade", Projectiles.Properties.ExplosiveRadius, 400)
--Items.setProperty("Light", "light assault rifle", Items.Properties.DeviceProjectile, 86807)
--Items.setProperty("Medium", "flak", Items.Properties.DeviceProjectile, 85203)
--Projectiles.setProperty("baseturret", Projectiles.Properties.ImpactMomentum, 10000000.00)
--Projectiles.setProperty("trackingmissile_dumbfire", Projectiles.Properties.ImpactMomentum, 10000000.00)
--Items.setProperty("Light", "Bolt Launcher", Items.Properties.DeviceProjectile, 86209)
--Items.setProperty("Light", "Bolt Launcher", Items.Properties.CanZoom, true)
-------------- ADMINISTRATION --------------

-- Basic Access Control, see https://www.tamods.org/docs/doc_srv_api_admin.html for more

require("admin")

local commands = {
    {
        name      = "NextMap",
        arguments = {
            {"MapId", Admin.Command.ArgumentType.Int},
        },
        func      = function (player, role, MapId)
            if Admin.Game.NextMap(MapId) then
                Admin.SendConsoleMessageToAllPlayers(player .. " set next map id to " .. MapId)
            else
                Admin.SendConsoleMessageToPlayer(player, "Failed to set next map to " .. MapId)
            end
  
        end,
    },
    {
        name      = "NextMapName",
        arguments = {
            {"MapName", Admin.Command.ArgumentType.String},
        },
        func      = function (player, role, MapName)
            if Admin.Game.NextMapByFilename(MapName) then
                Admin.SendConsoleMessageToAllPlayers(player .. " set next map name to " .. MapId)
            else
                Admin.SendConsoleMessageToPlayer(player, "Failed to set next map to " .. MapName)
            end
  
        end,
    },
    {
        name      = "StartMap",
        arguments = {},
        func      = function (player, role)
            Admin.Game.StartMap()
            Admin.SendConsoleMessageToAllPlayers("Map started by " .. player)
        end,
    },
    {
        name      = "EndMap",
        arguments = {},
        func      = function (player, role)
            Admin.Game.EndMap()
            Admin.SendConsoleMessageToAllPlayers("Map ended by " .. player)
        end,
    },
  }
  
  function doSetupRoles(roles)
    for cmdIdx, command in pairs(commands) do
        Admin.Command.define(command.name, command.arguments, command.func)
    end
  
    for roleIdx, role in pairs(roles) do
        Admin.Roles.addLoginlessRole(role.name, role.canLua)
        for cmdIdx, cmdName in pairs(role.commands) do
            Admin.Roles.addAllowedCommand(role.name, cmdName)
        end
    end
  end
  
  local roles = {
      {
          name     = "admin",
          commands = {"NextMap", "NextMapName", "StartMap", "EndMap"},
          canLua   = true,
      },
      {
          name     = "mod",
          commands = {"NextMap", "NextMapName", "StartMap", "EndMap"},
          canLua   = false,
      },
    }
  doSetupRoles(roles)
  
  --------------------------------------------------------------------------------
  --Admin.Roles.addMember("admin", "chicken")
  Admin.Roles.addMember("admin", "fuck")
  Admin.Roles.addMember("admin", "Wrightrj")
  Admin.Roles.addMember("admin", "Dodge")
  Admin.Roles.addMember("admin", "Gigabyte5671")
  Admin.Roles.addMember("mod", "frogkabobs")
  --Admin.Roles.addMember("mod", "schwarze")

-------------- OTHER SETTINGS --------------

-- Some other settings you might need, just uncomment those lines
-- If you need more settings, check the documentation at : https://www.tamods.org/docs/doc_srv_api_serverconfig.html

-- ServerSettings.WarmupTime = 60
-- ServerSettings.FriendlyFire = true
-- ServerSettings.CTFCapLimit = 7
-- ServerSettings.BannedItems.add("Light", "BXT1")


-------------- MAP ROTATION --------------

-- The default map rotation is: Katabatic, ArxNovena, DangerousCrossing, Crossfire, Drydock, Terminus, Sunstar
-- You can override the default map rotation by uncommenting any of the maps below.

-- ServerSettings.MapRotation.VotingEnabled = true
-- ServerSettings.EndMatchWaitTime = 5
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
ServerSettings.MapRotation.addCustom("TrCTF-Eclipse")
ServerSettings.MapRotation.addCustom("TrCTF-Polaris")
ServerSettings.MapRotation.addCustom("TrCTF-Oceanus")
ServerSettings.MapRotation.addCustom("TrCTF-Meridian")
ServerSettings.MapRotation.addCustom("TrCTF-Ascent")
ServerSettings.MapRotation.addCustom("TrCTF-Crash")
ServerSettings.MapRotation.addCustom("TrCTF-TreacherousPass")
