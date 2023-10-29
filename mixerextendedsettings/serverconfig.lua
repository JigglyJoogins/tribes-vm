-- TAMods-Server configuration can be placed in this file
-- You can read about the configuration language at: https://www.tamods.org/docs/doc_srv_api_overview.html


-------------- SERVER INFO --------------

ServerSettings.Description = "NA Mixer but better"
--ServerSettings.Description = "Offical | NAC+"
ServerSettings.Motd = "Mixer-Style Rules: No HS/chain, FF on, made by fr*g"
--ServerSettings.Motd = "Now with new settings"

ServerSettings.GameSettingMode = ServerSettings.GameSettingModes.OOTB
ServerSettings.TeamAssignType = TeamAssignTypes.Unbalanced
ServerSettings.AutoBalanceTeams = false

ServerSettings.Password = "baboon"

ServerSettings.WarmupTime = 600
ServerSettings.FriendlyFire = true
ServerSettings.CTFCapLimit = 7

ServerSettings.ShrikeLimit = 1
ServerSettings.BeowulfLimit = 1
ServerSettings.GeneratorRegen = false
ServerSettings.BeowulfSpawnTime = 210
ServerSettings.ShrikeSpawnTime = 120


ServerSettings.MapRotation.VotingEnabled = true
ServerSettings.MapRotation.Mode = ServerSettings.MapRotation.Modes.Sequential
ServerSettings.EnableInventoryCallIn = true
ServerSettings.InventoryStationsRestoreEnergy = true
ServerSettings.InventoryCallInBlocksPlayers = false
ServerSettings.InventoryCallInCost = 2000
ServerSettings.InventoryCallInBuildUpTime = 2.0
ServerSettings.InventoryCallInCooldownTime = 30.0


-------------- ADMINISTRATION --------------

-- Basic Access Control, see https://www.tamods.org/docs/doc_srv_api_admin.html for more

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
        commands = {"NextMap", "NextMapName", "StartMap", "EndMap","sm","em","help","DumpValueMods"},
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

  --------------------------------------------------------------------------------
Admin.Roles.addMember("admin", "fuck")
Admin.Roles.addMember("admin", "Wrightrj")
Admin.Roles.addMember("admin", "Dodge")
Admin.Roles.addMember("mod", "Gigabyte5671")
Admin.Roles.addMember("admin", "frogkabobs")
Admin.Roles.addMember("mod", "Mikesters")
Admin.Roles.addMember("mod", "Jives")


-------------- MAP ROTATION --------------

-- The default map rotation is: Katabatic, ArxNovena, DangerousCrossing, Crossfire, Drydock, Terminus, Sunstar
-- You can override the default map rotation by uncommenting any of the maps below.

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

--Thrust
Items.setProperty("Light", "thrustpack", Items.Properties.ThrustPackMinVerticalImpulse, -10000000.0)

--Stickies
Items.setProperty("Light", "stickygrenade", Items.Properties.SpareAmmo, 3)
Items.setProperty("Light", "stickygrenade", Items.Properties.Damage, 1000.00)
Items.setProperty("Light", "stickygrenade", Items.Properties.StuckDamageMultiplier, 1.0)

--longer MAs
Items.setProperty("Light", "explosivenitron", Items.Properties.ProjectileLifespan, 12.0)
Items.setProperty("Light", "lighttwinfusor", Items.Properties.ProjectileLifespan, 12.0)
Items.setProperty("Light", "lightspinfusor", Items.Properties.ProjectileLifespan, 12.0)
Items.setProperty("Light", "blinksfusor", Items.Properties.ProjectileLifespan, 12.0)
Items.setProperty("Light", "grenadelauncher", Items.Properties.ProjectileLifespan, 12.0)
Items.setProperty("Light", "boltlauncher", Items.Properties.ProjectileLifespan, 12.0)

Items.setProperty("Medium", "plasmagun", Items.Properties.ProjectileLifespan, 12.0)
Items.setProperty("Medium", "blinksfusor", Items.Properties.ProjectileLifespan, 12.0)
Items.setProperty("Medium", "honorfusor", Items.Properties.ProjectileLifespan, 12.0)
Items.setProperty("Medium", "twinfusor", Items.Properties.ProjectileLifespan, 12.0)
Items.setProperty("Medium", "spinfusor", Items.Properties.ProjectileLifespan, 12.0)
Items.setProperty("Medium", "grenadelauncher", Items.Properties.ProjectileLifespan, 12.0)
Items.setProperty("Medium", "arxbuster", Items.Properties.ProjectileLifespan, 12.0)

Items.setProperty("Heavy", "gladiator", Items.Properties.ProjectileLifespan, 12.0)
Items.setProperty("Heavy", "plasmacannon", Items.Properties.ProjectileLifespan, 12.0)
Items.setProperty("Heavy", "heavytwinfusor", Items.Properties.ProjectileLifespan, 12.0)
Items.setProperty("Heavy", "heavyboltlauncher", Items.Properties.ProjectileLifespan, 12.0)
Items.setProperty("Heavy", "heavyspinfusor", Items.Properties.ProjectileLifespan, 12.0)
Items.setProperty("Heavy", "heavyblinksfusor", Items.Properties.ProjectileLifespan, 12.0)
Items.setProperty("Medium", "thumper", Items.Properties.ProjectileLifespan, 12.0)

--light bolt does 750 MA
Items.setProperty("Light", "boltlauncher", Items.Properties.Damage, 600.0)

--heavy bolt arc = light bolt arc
Items.setProperty("Heavy", "heavyboltlauncher", Items.Properties.ProjectileTerminalVelocity, 7000.0)

--MIRV is good
Items.setProperty("Heavy", "mirvlauncher", Items.Properties.FuseTimer, 1.25)
Items.setProperty("Heavy", "mirvlauncher", Items.Properties.Damage, 320)
Items.setProperty("Heavy", "mirvlauncher", Items.Properties.ExplosiveRadius, 550)
Items.setProperty("Heavy", "mirvlauncher", Items.Properties.ImpactMomentum, 30000.0)


--GOTY Fractals
Items.setProperty("Heavy", "fractalgrenade", Items.Properties.Damage, 0.0)
Items.setProperty("Heavy", "fractalgrenade", Items.Properties.ImpactMomentum, 0.0)
Items.setProperty("Heavy", "fractalgrenade", Items.Properties.FractalDuration, 6.5)
Items.setProperty("Heavy", "fractalgrenade", Items.Properties.FractalShardDamage, 350)
Items.setProperty("Heavy", "fractalgrenade", Items.Properties.FractalShardInterval, 0.14)
Items.setProperty("Heavy", "fractalgrenade", Items.Properties.SpareAmmo, 3)
Items.setProperty("Heavy", "fractalgrenade", Items.Properties.MinDamageProportion, 1.0)

--1 shot lights with heavy MAs
Items.setProperty("Heavy", "heavyboltlauncher", Items.Properties.Damage, 800.00)
Items.setProperty("Heavy", "heavyspinfusor", Items.Properties.Damage, 800.00)
Items.setProperty("Heavy", "heavyblinksfusor", Items.Properties.Damage, 800.00)

--Twin is actually alright
Items.setProperty("Medium", "twinfusor", Items.Properties.Damage, 400.00)
Items.setProperty("Medium", "twinfusor", Items.Properties.ImpactMomentum, 85000.00)
Items.setProperty("Medium", "twinfusor", Items.Properties.SelfImpactMomentumMultiplier, 1.0)
--Items.setProperty("Medium", "twinfusor", Items.Properties.ExplosiveRadius, 360)

Items.setProperty("Heavy", "heavytwinfusor", Items.Properties.SelfImpactMomentumMultiplier, 1.0)
Items.setProperty("Heavy", "heavytwinfusor", Items.Properties.Damage, 500.00)
Items.setProperty("Heavy", "heavytwinfusor", Items.Properties.ImpactMomentum, 85000.00)
--Items.setProperty("Heavy", "heavytwinfusor", Items.Properties.ExplosiveRadius, 360)

Items.setProperty("Light", "lighttwinfusor", Items.Properties.Damage, 333.4)
Items.setProperty("Light", "lighttwinfusor", Items.Properties.ImpactMomentum, 85000.00)
Items.setProperty("Light", "lighttwinfusor", Items.Properties.SelfImpactMomentumMultiplier, 1.0)
--Items.setProperty("Light", "lighttwinfusor", Items.Properties.ExplosiveRadius, 360)

--Thumperdx is good
Items.setProperty("Medium", "thumperdx", Items.Properties.ExplosiveRadius, 400)
Items.setProperty("Medium", "thumperdx", Items.Properties.MinDamageProportion, 0.3)
Items.setProperty("Medium", "thumperdx", Items.Properties.MinDamageRangeProportion, 1.0)
Items.setProperty("Medium", "thumperdx", Items.Properties.ImpactMomentum, 85000.0)

--Regular thumper arc == light bolt arc
Items.setProperty("Medium", "thumper", Items.Properties.ProjectileGravity, 0.4)
Items.setProperty("Medium", "thumper", Items.Properties.ProjectileSpeed, 3820.0)

--Saber dumbfire isn't abysmally slow (does not affect lock on fire)
Items.setProperty("Heavy", "saberlauncher", Items.Properties.ReloadTime, 1.5)

--100% inheritance nade launcher for med capping
Items.setProperty("Medium", "grenadelauncher", Items.Properties.ProjectileInheritance, 1.0)

--More chaff ammo
Items.setProperty("Light", "chaffgrenades", Items.Properties.SpareAmmo, 4)

--gravs aren't as squishy
Vehicles.setProperty("Grav Cycle", Vehicles.Properties.MaxCrashDamage, 0.00)
Vehicles.setProperty("Grav Cycle", Vehicles.Properties.MinCrashDamage, 0.00)
Vehicles.setProperty("Grav Cycle", Vehicles.Properties.HealthPool, 2800.0)

--1300 dmg beow MA (vs 1250)
VehicleWeapons.setProperty("Beowulf Cannon", VehicleWeapons.Properties.DirectHitMultiplier, 1.30)

--med capping
Classes.setValueMods("Medium", {
    {ValueMods.SelfDamageReduction, 0.20},
    {ValueMods.JammerPackRadiusBuff, 2.00},
    table.unpack(Classes.getValueMods("Medium"))
  })

Classes.setProperty("Medium", Classes.Properties.EnergyPool, 110.0)

--light safe fall
Items.setValueMods("Light", "energypack", {
  {ValueMods.SafeFall, true},
  {ValueMods.ExtraBeltAmmo, 1},
    table.unpack(Items.getValueMods("Light", "energypack"))
  })

--nade buffs
Items.setProperty("Light", "T5", Items.Properties.Damage, 800.00)
Items.setProperty("Light", "T5", Items.Properties.DirectHitMultiplier, 1.25)
Items.setProperty("Light", "T5", Items.Properties.ImpactMomentum, 110000.00)
Items.setProperty("Light", "T5", Items.Properties.MinDamageRangeProportion, 1.0)
Items.setProperty("Light", "T5", Items.Properties.MinDamageProportion, 0.5)
Items.setProperty("Light", "T5", Items.Properties.ExplosiveRadius, 800.00)
Items.setProperty("Light", "T5", Items.Properties.ExplodeOnContact, true)
Items.setProperty("Light", "T5", Items.Properties.MustBounceBeforeExplode, false)

Items.setProperty("Medium", "apgrenade", Items.Properties.Damage, 880.00)
Items.setProperty("Medium", "apgrenade", Items.Properties.DirectHitMultiplier, 1.25)
Items.setProperty("Medium", "apgrenade", Items.Properties.ImpactMomentum, 110000.00)
Items.setProperty("Medium", "apgrenade", Items.Properties.MinDamageRangeProportion, 1.0)
Items.setProperty("Medium", "apgrenade", Items.Properties.MinDamageProportion, 0.5)
Items.setProperty("Medium", "apgrenade", Items.Properties.ExplosiveRadius, 800.00)
Items.setProperty("Medium", "apgrenade", Items.Properties.ExplodeOnContact, true)
Items.setProperty("Medium", "apgrenade", Items.Properties.MustBounceBeforeExplode, false)

Items.setProperty("Heavy", "fraggrenade", Items.Properties.Damage, 960.00)
Items.setProperty("Heavy", "fraggrenade", Items.Properties.DirectHitMultiplier, 1.25)
Items.setProperty("Heavy", "fraggrenade", Items.Properties.ImpactMomentum, 110000.00)
Items.setProperty("Heavy", "fraggrenade", Items.Properties.MinDamageRangeProportion, 1.0)
Items.setProperty("Heavy", "fraggrenade", Items.Properties.MinDamageProportion, 0.5)
Items.setProperty("Heavy", "fraggrenade", Items.Properties.ExplosiveRadius, 800.00)
Items.setProperty("Heavy", "fraggrenade", Items.Properties.ExplodeOnContact, true)
Items.setProperty("Heavy", "fraggrenade", Items.Properties.MustBounceBeforeExplode, false)

--lance nerf
Items.setProperty("Light", "shocklance", Items.Properties.Damage, 500.0)


--[[
--Nova is slightly stronger
Items.setProperty("Heavy", "novablastermx", Items.Properties.ProjectileLifespan, 6.0)
Items.setProperty("Heavy", "novablastermx", Items.Properties.ClipAmmo, 8)
Items.setProperty("Heavy", "novablastermx", Items.Properties.SpareAmmo, 64)
Items.setProperty("Heavy", "novablastermx", Items.Properties.MinDamageProportion, 0.8)

Items.setProperty("Medium", "novablaster", Items.Properties.ProjectileLifespan, 6.0)
Items.setProperty("Medium", "novablaster", Items.Properties.ClipAmmo, 8)
Items.setProperty("Medium", "novablaster", Items.Properties.SpareAmmo, 64)
Items.setProperty("Medium", "novablaster", Items.Properties.MinDamageProportion, 0.8)

Items.setProperty("Light", "throwingknives", Items.Properties.ProjectileLifespan, 6.0)
Items.setProperty("Light", "throwingknives", Items.Properties.ClipAmmo, 8)
Items.setProperty("Light", "throwingknives", Items.Properties.SpareAmmo, 64)
Items.setProperty("Light", "throwingknives", Items.Properties.MinDamageProportion, 0.8)
Items.setProperty("Light", "throwingknives", Items.Properties.Damage, 100.0)
Items.setProperty("Light", "throwingknives", Items.Properties.DirectHitMultiplier, 2.5)
Items.setProperty("Light", "throwingknives", Items.Properties.ExplosiveRadius, 120.0)

Items.setProperty("heavy", "novacolt", Items.Properties.HoldToFire, true)
]]
--more mirv bomblets
Projectiles.setProperty("mirvlauncher", Projectiles.Properties.MIRVSecondaryExplosions, 5)
Projectiles.setProperty("mirvlaunchersecondary", Projectiles.Properties.Damage, 340)
Projectiles.setProperty("mirvlaunchersecondary", Projectiles.Properties.DirectHitMultiplier, 1.25)
Projectiles.setProperty("mirvlaunchersecondary", Projectiles.Properties.ImpactMomentum, 30000)

--more cluster bomblets
Projectiles.setProperty("clustergrenade", Projectiles.Properties.MIRVSecondaryExplosions, 6)
Projectiles.setProperty("clusterecondary", Projectiles.Properties.Damage, 425)
Projectiles.setProperty("clusterecondary", Projectiles.Properties.ExplosiveRadius, 600)
Projectiles.setProperty("clusterecondary", Projectiles.Properties.ExplodeOnContact, true)

Projectiles.setProperty("clustergrenade", Projectiles.Properties.FullyInheritVelocity, false)

--Beow arx secondary
VehicleWeapons.setProperty("Beowulf Chaingun", VehicleWeapons.Properties.ClipAmmo, 10)
VehicleWeapons.setProperty("Beowulf Chaingun", VehicleWeapons.Properties.FireInterval, 0.2)
VehicleWeapons.setProperty("Beowulf Chaingun", VehicleWeapons.Properties.ReloadTime, 1.8)
VehicleWeapons.setProperty("Beowulf Chaingun", VehicleWeapons.Properties.DeviceProjectile, Projectiles.getId("dustdevil"))

Projectiles.setProperty("dustdevil", Projectiles.Properties.MaxDamageRangeProportion, 0.0)
Projectiles.setProperty("dustdevil", Projectiles.Properties.MinDamageRangeProportion, 1.0)
Projectiles.setProperty("dustdevil", Projectiles.Properties.MinDamageProportion, 0.5)
Projectiles.setProperty("dustdevil", Projectiles.Properties.Damage, 400.0)
Projectiles.setProperty("dustdevil", Projectiles.Properties.DirectHitMultiplier, 1.0)
Projectiles.setProperty("dustdevil", Projectiles.Properties.StuckDamageMultiplier, 1.25)

--saber dumbire like titan
Projectiles.setProperty("saberlauncherdumbfire", Projectiles.Properties.Damage, 500.00)
Projectiles.setProperty("saberlauncherdumbfire", Projectiles.Properties.DirectHitMultiplier, 1.5)
Projectiles.setProperty("saberlauncherdumbfire", Projectiles.Properties.ExplosiveRadius, 450.0)
Projectiles.setProperty("saberlauncherdumbfire", Projectiles.Properties.CollisionSize, 30.0)

--repair tool can heal players
Items.setProperty("light", "defaultrepairtool", Items.Properties.PawnRepairPercentage, 0.06)
Items.setProperty("medium", "repairtool", Items.Properties.PawnRepairPercentage, 0.1)
Items.setProperty("light", "defaultrepairtool", Items.Properties.HitscanRange, 1000.0)
Items.setProperty("medium", "repairtool", Items.Properties.HitscanRange, 1000.0)
--Items.setProperty("light", "defaultrepairtool", Items.Properties.MeleeConeAngle, 10.0)
--Items.setProperty("medium", "repairtool", Item.Properties.MeleeConeAngle, 10.0)

-----------------------------------------------------------------------------
--Extended

ServerSettings.BannedItems.add("Light", "BXT1A")
ServerSettings.BannedItems.add("Light", "Sap20")
ServerSettings.BannedItems.add("Light", "Rhino")
ServerSettings.BannedItems.add("Light", "ArcticRhino")
ServerSettings.BannedItems.add("Light", "AccurizedShotgun")
ServerSettings.BannedItems.add("Light", "HoldoutShotgun")
ServerSettings.BannedItems.add("Medium", "TCN4")
ServerSettings.BannedItems.add("Medium", "GastRifle")
ServerSettings.BannedItems.add("Medium", "DesertNJ4")
ServerSettings.BannedItems.add("Medium", "TCN4Rockwind")
ServerSettings.BannedItems.add("Heavy", "Chain Cannon")
ServerSettings.BannedItems.add("Heavy", "TheHammer")

--stickyxl
--ServerSettings.BannedItems.add("Light", "stickyxl")
Items.setProperty("light", "stickyxl", Items.Properties.DirectHitMultiplier, 1.08334)
Items.setProperty("light", "stickyxl", Items.Properties.MinDamageProportion, 0.5)

Items.setProperty("light", "compactnitron", Items.Properties.ExplosiveRadius, 350)
Items.setProperty("light", "compactnitron", Items.Properties.MinDamageProportion, 0.5)
Items.setProperty("light", "compactnitron", Items.Properties.SpareAmmo, 3)

Projectiles.setProperty("heavyimpactnitron", Projectiles.Properties.Damage, 560)
Projectiles.setProperty("heavyimpactnitron", Projectiles.Properties.ExplosiveRadius, 450)
Projectiles.setProperty("heavyimpactnitron", Projectiles.Properties.ImpactMomentum, 110000)
Projectiles.setProperty("heavyimpactnitron", Projectiles.Properties.DirectHitMultiplier, 1.25)
Projectiles.setProperty("heavyimpactnitron", Projectiles.Properties.MinDamageProportion, 0.5)

Items.setProperty("light", "duelingspin", Items.Properties.Damage, 600.0)
Items.setProperty("light", "duelingspin", Items.Properties.MinDamageProportion, 0.2)
Items.setProperty("light", "duelingspin", Items.Properties.MinDamageRangeProportion, 1.0)
Items.setProperty("light", "duelingspin", Items.Properties.MaxDamageRangeProportion, 0.0)
Items.setProperty("light", "duelingspin", Items.Properties.ProjectileInheritance, 0.75)
Items.setProperty("light", "duelingspin", Items.Properties.ProjectileLifespan, 12.0)

Items.setProperty("light", "stealthspin", Items.Properties.Damage, 400)
Items.setProperty("light", "stealthspin", Items.Properties.MinDamageProportion, 0.3)
Items.setProperty("light", "stealthspin", Items.Properties.MinDamageRangeProportion, 1.0)
Items.setProperty("light", "stealthspin", Items.Properties.MaxDamageRangeProportion, 0.41667)
Items.setProperty("light", "stealthspin", Items.Properties.SelfImpactExtraZMomentum, 90000)
Items.setProperty("light", "stealthspin", Items.Properties.ImpactMomentum, 85000)
Items.setProperty("light", "stealthspin", Items.Properties.SelfImpactMomentumMultiplier, 1.3)
Items.setProperty("light", "stealthspin", Items.Properties.ProjectileInheritance, 0.5)
Items.setProperty("light", "stealthspin", Items.Properties.ProjectileLifespan, 12.0)
Items.setValueMods("Light", "stealthspin", {
    {ValueMods.SafeFall, true},
    table.unpack(Items.getValueMods("Light", "stealthspin"))
  })

--Medium safe-fall
Items.setValueMods("Medium", "energypack", {
  {ValueMods.SafeFall, true},
  {ValueMods.EnergyBuff, 20},
    table.unpack(Items.getValueMods("Medium", "energypack"))
})

Items.setValueMods("Medium", "jammerpack", {
    {ValueMods.SonicPunch, true},
    {ValueMods.SonicPunchFlagDrop, true},
    {ValueMods.SonicPunchRange, 315},
    {ValueMods.SonicPunchKnockback, 750},
    table.unpack(Items.getValueMods("Medium", "jammerpack"))
})

Items.setValueMods("Heavy", "shieldpack", {
    {ValueMods.Rage, true},
    --{ValueMods.RageEnergyRegen, 100},
    {ValueMods.RageHealthRestoration, 0.5},
    {ValueMods.RageMassChange, -0.2},
    table.unpack(Items.getValueMods("Heavy", "shieldpack"))
})

Items.setValueMods("Heavy", "forcefield", {
  {ValueMods.DeployableHealthBuff, 8400},
  table.unpack(Items.getValueMods("Heavy", "forcefield"))
})

Items.setProperty("heavy", "forcefield", Items.Properties.ForcefieldMinDamage, 750)
Items.setProperty("heavy", "forcefield", Items.Properties.ForcefieldMaxDamage, 0)
Items.setProperty("heavy", "forcefield", Items.Properties.ForcefieldMinDamageSpeed, 0)
Items.setProperty("heavy", "forcefield", Items.Properties.ForcefieldMaxDamageSpeed, 2777.8)
Items.setProperty("heavy", "forcefield", Items.Properties.DeployableMaxAllowed, 2)
Items.setProperty("heavy", "forcefield", Items.Properties.DeployableMinProximity, 0.1)

  --thumper d

Items.setProperty("medium", "thumperd", Items.Properties.Damage, 875)
Items.setProperty("medium", "thumperd", Items.Properties.ExplosiveRadius, 0.01)
Items.setProperty("medium", "thumperd", Items.Properties.MinDamageRangeProportion, 1.0)
Items.setProperty("medium", "thumperd", Items.Properties.MaxDamageRangeProportion, 0.0)
Items.setProperty("medium", "thumperd", Items.Properties.DirectHitMultiplier, 1.0)
Items.setProperty("medium", "thumperd", Items.Properties.ImpactMomentum, 85000)
Items.setProperty("Medium", "thumperd", Items.Properties.ProjectileGravity, 0.4)
Items.setProperty("Medium", "thumperd", Items.Properties.ProjectileSpeed, 3820.0)
Items.setProperty("Medium", "thumperd", Items.Properties.ProjectileLifespan, 12.0)

--dust devil
Items.setProperty("Medium", "dustdevil", Items.Properties.ClipAmmo, 4)
Items.setProperty("Medium", "dustdevil", Items.Properties.FireInterval, 0.25)
Items.setProperty("Medium", "dustdevil", Items.Properties.ReloadTime, 1.8)
--long range repair tool
Items.setProperty("medium", "longrangerepairtool", Items.Properties.PawnRepairPercentage, 0.085)
Items.setProperty("medium", "longrangerepairtool", Items.Properties.HitscanRange, 1500.0)
--frag xl
Items.setProperty("Medium", "fragxl", Items.Properties.SpareAmmo, 2)
Items.setProperty("Medium", "fragxl", Items.Properties.Damage, 1100.00)
Items.setProperty("Medium", "fragxl", Items.Properties.DirectHitMultiplier, 1.0)
Items.setProperty("Medium", "fragxl", Items.Properties.ImpactMomentum, 110000.00)
Items.setProperty("Medium", "fragxl", Items.Properties.MinDamageRangeProportion, 1.0)
Items.setProperty("Medium", "fragxl", Items.Properties.MaxDamageRangeProportion, 0.0)
Items.setProperty("Medium", "fragxl", Items.Properties.MinDamageProportion, 0.5)
Items.setProperty("Medium", "fragxl", Items.Properties.ExplosiveRadius, 600.00)
Items.setProperty("Medium", "fragxl", Items.Properties.ExplodeOnContact, true)
Items.setProperty("Medium", "fragxl", Items.Properties.MustBounceBeforeExplode, false)

--tcng
Items.setProperty("Medium", "tcng", Items.Properties.SpareAmmo, 2)
Items.setProperty("Medium", "tcng", Items.Properties.FuseTimer, 2.0)
Items.setProperty("Medium", "tcng", Items.Properties.Damage, 880.00)
Items.setProperty("Medium", "tcng", Items.Properties.DirectHitMultiplier, 1.25)
Projectiles.setProperty("tcng", Projectiles.Properties.ImpactMomentum, -85000.00)
Items.setProperty("Medium", "tcng", Items.Properties.MinDamageRangeProportion, 1.0)
Items.setProperty("Medium", "tcng", Items.Properties.MaxDamageRangeProportion, 0.0)
Items.setProperty("Medium", "tcng", Items.Properties.MinDamageProportion, 0.5)
Items.setProperty("Medium", "tcng", Items.Properties.ExplosiveRadius, 800.00)
Items.setProperty("Medium", "tcng", Items.Properties.ExplodeOnContact, true)
Items.setProperty("Medium", "tcng", Items.Properties.MustBounceBeforeExplode, false)
--tcng quickfuse
Items.setProperty("Medium", "tcngquickfuse", Items.Properties.SpareAmmo, 2)
Items.setProperty("Medium", "tcngquickfuse", Items.Properties.Damage, 880.00)
Items.setProperty("Medium", "tcngquickfuse", Items.Properties.DirectHitMultiplier, 1.25)
Projectiles.setProperty("tcngquickfuse", Projectiles.Properties.ImpactMomentum, -60000.00)
Items.setProperty("Medium", "tcngquickfuse", Items.Properties.MinDamageRangeProportion, 1.0)
Items.setProperty("Medium", "tcngquickfuse", Items.Properties.MaxDamageRangeProportion, 0.0)
Items.setProperty("Medium", "tcngquickfuse", Items.Properties.MinDamageProportion, 0.5)
Items.setProperty("Medium", "tcngquickfuse", Items.Properties.ExplosiveRadius, 600.00)
Items.setProperty("Medium", "tcngquickfuse", Items.Properties.ExplodeOnContact, true)
Items.setProperty("Medium", "tcngquickfuse", Items.Properties.MustBounceBeforeExplode, false)
--proxy
Items.setProperty("Medium", "proxy", Items.Properties.SpareAmmo, 2)
Items.setProperty("medium", "proxy", Items.Properties.MinDamageProportion, 0.5)
Items.setProperty("medium", "proxy", Items.Properties.MinDamageRangeProportion, 1.0)
Items.setProperty("medium", "proxy", Items.Properties.MaxDamageRangeProportion, 0.0)

--emp xl
Items.setProperty("Medium", "empxl", Items.Properties.SpareAmmo, 2)
Items.setProperty("Medium", "empxl", Items.Properties.Damage, 500.00)
Items.setProperty("Medium", "empxl", Items.Properties.ImpactMomentum, 85000.00)
Items.setProperty("Medium", "empxl", Items.Properties.MinDamageRangeProportion, 1.0)
Items.setProperty("Medium", "empxl", Items.Properties.MaxDamageRangeProportion, 0.0)
Items.setProperty("Medium", "empxl", Items.Properties.MinDamageProportion, 0.5)
Items.setProperty("Medium", "empxl", Items.Properties.ExplosiveRadius, 800.00)
Items.setProperty("Medium", "empxl", Items.Properties.EnergyDrain, 800)

Items.setProperty("Medium", "emp", Items.Properties.Damage, 700.00)
Items.setProperty("Medium", "emp", Items.Properties.ImpactMomentum, 110000.00)
--short fuse
Items.setProperty("Medium", "shortfuse", Items.Properties.SpareAmmo, 2)
Items.setProperty("Medium", "shortfuse", Items.Properties.FuseTimer, 1.2)
Items.setProperty("Medium", "shortfuse", Items.Properties.Damage, 800.00)
Items.setProperty("Medium", "shortfuse", Items.Properties.DirectHitMultiplier, 1.25)
Items.setProperty("Medium", "shortfuse", Items.Properties.ImpactMomentum, 85000.00)
Items.setProperty("Medium", "shortfuse", Items.Properties.MinDamageRangeProportion, 1.0)
Items.setProperty("Medium", "shortfuse", Items.Properties.MaxDamageRangeProportion, 0.0)
Items.setProperty("Medium", "shortfuse", Items.Properties.MinDamageProportion, 0.5)
Items.setProperty("Medium", "shortfuse", Items.Properties.ExplosiveRadius, 600.00)
Items.setProperty("Medium", "shortfuse", Items.Properties.ExplodeOnContact, true)
Items.setProperty("Medium", "shortfuse", Items.Properties.MustBounceBeforeExplode, false)



--spin mkd
Items.setProperty("heavy", "spinfusormkd", Items.Properties.Damage, 800.0)
Items.setProperty("heavy", "spinfusormkd", Items.Properties.MinDamageProportion, 0.5)
Items.setProperty("heavy", "spinfusormkd", Items.Properties.MinDamageRangeProportion, 1.0)
Items.setProperty("heavy", "spinfusormkd", Items.Properties.MaxDamageRangeProportion, 0.0)
Items.setProperty("heavy", "spinfusormkd", Items.Properties.ProjectileInheritance, 0.75)
Items.setProperty("heavy", "spinfusormkd", Items.Properties.ProjectileLifespan, 12.0)
--spin mkx

Items.setProperty("heavy", "spinfusormkx", Items.Properties.Damage, 700.0)
Items.setProperty("heavy", "spinfusormkx", Items.Properties.MinDamageProportion, 0.3)
Items.setProperty("heavy", "spinfusormkx", Items.Properties.MinDamageRangeProportion, 1.0)
Items.setProperty("heavy", "spinfusormkx", Items.Properties.MaxDamageRangeProportion, 0.0)
Items.setProperty("heavy", "spinfusormkx", Items.Properties.ProjectileInheritance, 0.75)
Items.setProperty("heavy", "spinfusormkx", Items.Properties.ProjectileLifespan, 12.0)

--fusion mortar deluxe
Items.setProperty("heavy", "fusionmortardeluxe", Items.Properties.Damage, 1300.0)
Items.setProperty("heavy", "fusionmortardeluxe", Items.Properties.DirectHitMultiplier, 1.15384615385)
Items.setProperty("heavy", "fusionmortardeluxe", Items.Properties.MinDamageProportion, 0.46153846153)
Items.setProperty("heavy", "fusionmortardeluxe", Items.Properties.MinDamageRangeProportion, 1.0)
Items.setProperty("heavy", "fusionmortardeluxe", Items.Properties.MaxDamageRangeProportion, 0.0)
Items.setProperty("heavy", "fusionmortardeluxe", Items.Properties.ProjectileInheritance, 0.0)
Items.setProperty("heavy", "fusionmortardeluxe", Items.Properties.ProjectileLifespan, 12.0)
Items.setProperty("heavy", "fusionmortardeluxe", Items.Properties.DamageAgainstGeneratorMultiplier, 2.5)
Items.setProperty("heavy", "fusionmortardeluxe", Items.Properties.DamageAgainstBaseTurretMultiplier, 2.5)
Items.setProperty("heavy", "fusionmortardeluxe", Items.Properties.DamageAgainstBaseSensorMultiplier, 2.5)
Items.setProperty("heavy", "fusionmortardeluxe", Items.Properties.DamageAgainstGravCycleMultiplier, 2.5)
Items.setProperty("heavy", "fusionmortardeluxe", Items.Properties.DamageAgainstShrikeMultiplier, 2.5)
Items.setProperty("heavy", "fusionmortardeluxe", Items.Properties.DamageAgainstBeowulfMultiplier, 2.5)
--extended fractal
Items.setProperty("heavy", "extendedfractal", Items.Properties.SpareAmmo, 2)
Items.setProperty("heavy", "extendedfractal", Items.Properties.Damage, 600)
Items.setProperty("heavy", "extendedfractal", Items.Properties.ExplosiveRadius, 700)
Items.setProperty("heavy", "extendedfractal", Items.Properties.FractalDuration, 1.5)
Items.setProperty("heavy", "extendedfractal", Items.Properties.FractalAscentTime, 0.01)
Items.setProperty("heavy", "extendedfractal", Items.Properties.FuseTimer, 1.0)
Items.setProperty("heavy", "extendedfractal", Items.Properties.FractalShardDamage, 400)
Items.setProperty("heavy", "extendedfractal", Items.Properties.FractalShardDamageRadius, 450)
Items.setProperty("heavy", "extendedfractal", Items.Properties.FractalAscentHeight, 0)
Items.setProperty("heavy", "extendedfractal", Items.Properties.FractalShardHeight, 0.01)
Items.setProperty("heavy", "extendedfractal", Items.Properties.FractalShardDistance, 0.00)
Items.setProperty("heavy", "extendedfractal", Items.Properties.FractalShardInterval, 0.5)
Items.setProperty("heavy", "extendedfractal", Items.Properties.MinDamageProportion, 0.5)
Items.setProperty("heavy", "extendedfractal", Items.Properties.ImpactMomentum, 60000.0)
Items.setProperty("heavy", "extendedfractal", Items.Properties.MustBounceBeforeExplode, false)
--heavy sticky
Items.setProperty("heavy", "heavystickygrenade", Items.Properties.MinDamageRangeProportion, 1.0)
Items.setProperty("heavy", "heavystickygrenade", Items.Properties.MaxDamageRangeProportion, 0.0)
Items.setProperty("heavy", "heavystickygrenade", Items.Properties.MinDamageProportion, 0.5)
Items.setProperty("heavy", "heavystickygrenade", Items.Properties.SpareAmmo, 3)
--spin disc
Items.setProperty("heavy", "spindisc", Items.Properties.Damage, 600.0)
Items.setProperty("heavy", "spindisc", Items.Properties.MinDamageProportion, 0.2)
Items.setProperty("heavy", "spindisc", Items.Properties.MinDamageRangeProportion, 1.0)
Items.setProperty("heavy", "spindisc", Items.Properties.MaxDamageRangeProportion, 0.0)
Items.setProperty("heavy", "spindisc", Items.Properties.ProjectileInheritance, 0.5)
Items.setProperty("heavy", "spindisc", Items.Properties.ProjectileLifespan, 12.0)
--heavy ap xl
--ServerSettings.BannedItems.add("Heavy", "apxl")
----[[
Items.setProperty("heavy", "heavyapxl", Items.Properties.SpareAmmo, 2)
Items.setProperty("Heavy", "heavyapxl", Items.Properties.Damage, 960.00)
Items.setProperty("Heavy", "heavyapxl", Items.Properties.DirectHitMultiplier, 1.25)
Items.setProperty("Heavy", "heavyapxl", Items.Properties.ImpactMomentum, 110000.00)
Items.setProperty("Heavy", "heavyapxl", Items.Properties.MinDamageRangeProportion, 1.0)
Items.setProperty("Heavy", "heavyapxl", Items.Properties.MaxDamageRangeProportion, 0.0)
Items.setProperty("Heavy", "heavyapxl", Items.Properties.MinDamageProportion, 0.5)
Items.setProperty("Heavy", "heavyapxl", Items.Properties.ExplosiveRadius, 800.00)
Items.setProperty("Heavy", "heavyapxl", Items.Properties.ExplodeOnContact, true)
Items.setProperty("Heavy", "heavyapxl", Items.Properties.MustBounceBeforeExplode, true)
--]]

Items.setProperty("heavy", "heavyap", Items.Properties.SpareAmmo, 2)
Items.setProperty("Heavy", "heavyap", Items.Properties.Damage, 1200)
Items.setProperty("Heavy", "heavyap", Items.Properties.DirectHitMultiplier, 1.0)
Items.setProperty("Heavy", "heavyap", Items.Properties.ImpactMomentum, 110000.00)
Items.setProperty("Heavy", "heavyap", Items.Properties.MinDamageRangeProportion, 1.0)
Items.setProperty("Heavy", "heavyap", Items.Properties.MaxDamageRangeProportion, 0.0)
Items.setProperty("Heavy", "heavyap", Items.Properties.MinDamageProportion, 0.5)
Items.setProperty("Heavy", "heavyap", Items.Properties.ExplosiveRadius, 600.00)
Items.setProperty("Heavy", "heavyap", Items.Properties.ExplodeOnContact, true)
Items.setProperty("Heavy", "heavyap", Items.Properties.MustBounceBeforeExplode, true)

--Items.setProperty("medium", "repairkit", Items.Properties.SpareAmmo, 2)


Items.setProperty("heavy", "spindisc", Items.Properties.DirectHitMultiplier, 1.25)
Items.setProperty("light", "duelingspin", Items.Properties.DirectHitMultiplier, 1.25)
Items.setProperty("light", "stealthspin", Items.Properties.DirectHitMultiplier, 1.875)
Items.setProperty("heavy", "spinfusormkd", Items.Properties.DirectHitMultiplier, 1.25)
Items.setProperty("heavy", "spinfusormkx", Items.Properties.DirectHitMultiplier, 1.25)

Projectiles.setProperty("grenademkd", Projectiles.Properties.ProjectileBounceDamping, 1.0)
Projectiles.setProperty("grenademkd", Projectiles.Properties.Damage, 880)
Projectiles.setProperty("grenademkd", Projectiles.Properties.ExplosiveRadius, 800.00)
Projectiles.setProperty("grenademkd", Projectiles.Properties.ExplodeOnContact, true)
Projectiles.setProperty("grenademkd", Projectiles.Properties.DirectHitMultiplier, 1.25)
Projectiles.setProperty("grenademkd", Projectiles.Properties.ImpactMomentum, 110000.0)
Projectiles.setProperty("grenademkd", Projectiles.Properties.MinDamageRangeProportion, 1.0)
Projectiles.setProperty("grenademkd", Projectiles.Properties.MinDamageProportion, 0.5)
Projectiles.setProperty("grenademkd", Projectiles.Properties.ProjectileTerminalVelocity, 7000.0)

Projectiles.setProperty("flaregrenade", Projectiles.Properties.Damage, 600)
Projectiles.setProperty("flaregrenade", Projectiles.Properties.ExplosiveRadius, 600)
Projectiles.setProperty("flaregrenade", Projectiles.Properties.ImpactMomentum, 85000)

ServerSettings.MutuallyExclusiveItems.add("Medium", "honorfusor", "Medium", "ArxBuster")
ServerSettings.MutuallyExclusiveItems.add("Medium", "honorfusor", "Medium", "DustDevil")
ServerSettings.MutuallyExclusiveItems.add("Medium", "honorfusor", "Medium", "PlasmaGun")
ServerSettings.MutuallyExclusiveItems.add("Medium", "honorfusor", "Medium", "GrenadeLauncher")

ServerSettings.MutuallyExclusiveItems.add("Medium", "thumperd", "Medium", "ArxBuster")
ServerSettings.MutuallyExclusiveItems.add("Medium", "thumperd", "Medium", "DustDevil")
ServerSettings.MutuallyExclusiveItems.add("Medium", "thumperd", "Medium", "PlasmaGun")
ServerSettings.MutuallyExclusiveItems.add("Medium", "thumperd", "Medium", "GrenadeLauncher")


Items.setValueMods("Light", "utilitypack", {
  {ValueMods.BeltPickupBuff, 1},
  {ValueMods.ExtraBeltAmmo, 1},
  table.unpack(Items.getValueMods("Light", "utilitypack"))
})

Items.setProperty("medium", "defectivefrag", Items.Properties.SpareAmmo, 2)

Projectiles.setProperty("gravcyclepilot", Projectiles.Properties.GravGivesAirmail, true)
Projectiles.setProperty("shrikepilot", Projectiles.Properties.ShrikeGivesAirmail, true)

Items.setProperty("medium", "plasmagun", Items.Properties.SelfImpactMomentumMultiplier, 2.1)
Items.setProperty("medium", "elf", Items.Properties.ElfEnergyConsumptionPercentage, 2*Items.getProperty("medium", "elf", Items.Properties.ElfEnergyConsumptionPercentage))

ServerSettings.MapRotation.addCustom("TrCTFBlitz-MazeRunner")
ServerSettings.MapRotation.addCustom("TrCTFBlitz-AirArena")
ServerSettings.MapRotation.addCustom("TrCTF-Andromeda")
ServerSettings.ExperimentalMixerSettings = true


--Items.setProperty("subdevice", "lightturret", Items.Properties.DeviceProjectile, Projectiles.getId("fractalgrenade"))
--Items.setProperty("subdevice", "lightturret", Items.Properties.FireInterval, 0.5)

--Items.setProperty("subdevice", "lightturret", Items.Properties.DeviceProjectile, Projectiles.getId("impactnitron"))

--Items.setProperty("subdevice", "lightturret", Items.Properties.DeviceProjectile, Projectiles.getId("blackout"))

--Items.setProperty("subdevice", "lightturret", Items.Properties.DeviceProjectile, Projectiles.getId("emp"))
