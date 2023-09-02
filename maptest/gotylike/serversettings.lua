Core.AllowUnmoddedClients = false

-- Limit all classes to two weapons
ServerSettings.DisabledEquipPoints.add("Light", Loadouts.EquipPoints.Tertiary)
ServerSettings.DisabledEquipPoints.add("Medium", Loadouts.EquipPoints.Tertiary)
ServerSettings.DisabledEquipPoints.add("Heavy", Loadouts.EquipPoints.Tertiary)

-- Weapon Bans
ServerSettings.MutuallyExclusiveItems.add("Light", "Phase Rifle", "Light", "Rage")
ServerSettings.MutuallyExclusiveItems.add("Light", "SAP20", "Light", "Rage")
ServerSettings.MutuallyExclusiveItems.add("Light", "BXT1", "Light", "Rage")
ServerSettings.MutuallyExclusiveItems.add("Light", "BXT1A", "Light", "Rage")
ServerSettings.MutuallyExclusiveItems.add("Light", "Stealth Pack", "Light", "Shocklance")
ServerSettings.MutuallyExclusiveItems.add("Light", "Stealth Pack", "Light", "Super Heavy")
ServerSettings.MutuallyExclusiveItems.add("Light", "Stealth Pack", "Light", "Reach")
ServerSettings.MutuallyExclusiveItems.add("Light", "Rage", "Light", "Lightweight")

--ServerSettings.BannedItems.add("Light", "SAP20")

ServerSettings.BannedItems.add("Medium", "Proximity Grenades")
--ServerSettings.BannedItems.add("Medium", "Wheel Deal")
--ServerSettings.BannedItems.add("Medium", "Plasma Gun")
-- Mines
ServerSettings.BannedItems.add("Light", "Claymore Mines")
ServerSettings.BannedItems.add("Light", "Prism Mines")
ServerSettings.BannedItems.add("Light", "Motion Mines")
ServerSettings.BannedItems.add("Medium", "Motion Sensor")
ServerSettings.BannedItems.add("Heavy", "Mines")
-- Packs
--ServerSettings.BannedItems.add("Light", "Stealth Pack")
-- Perks
defaultGotySettings = {
    -- Time settings
    TimeLimit = 60,
    WarmupTime = 10,
    RespawnTime = 0,
    SniperRespawnDelay = 5,
    EndMatchWaitTime = 15,
    AmmoPickupLifespan = 60,
    CTFFlagTimeout = 4,
    -- Team settings
    TeamAssignType = TeamAssignTypes.Unbalanced,
    AutoBalanceTeams = false,
    FriendlyFire = true,
    FriendlyFireMultiplier = 1,
    TeamCredits = true,
    BaseAssets = false,
    -- Score
    CTFCapLimit = 999,
    ArenaRounds = 1,
    ArenaLives = 125,

    -- Flag
    FlagDragLight = 0,
    FlagDragMedium = 0,
    FlagDragHeavy = 0,
    FlagDragDeceleration = 0,

    -- Vehicles
    VehiclesEarnedWithCredits = true,
    GravCycleLimit = 4,
    BeowulfLimit = 4,
    ShrikeLimit = 4,
    GravCycleCost = 0,
    BeowulfCost = 0,
    ShrikeCost = 0,
    GravCycleEjectionSeat = false,
    BeowulfEjectionSeat = false,
    ShrikeEjectionSeat = false,
    
    -- Inventory call-in
    EnableInventoryCallIn = true,
    InventoryStationsRestoreEnergy = true,
    InventoryCallInBlocksPlayers = false,
    InventoryCallInCost = 100,
    InventoryCallInBuildUpTime = 2.0,
    InventoryCallInCooldownTime = 30.0,

    -- GOTY fixes
    UseGOTYShieldPack = true,
    UseGOTYBXTCharging = true,
    UseGOTYJackalAirburst = true,
    RageThrustPackDependsOnCapperSpeed = true,
}

-- Function to set or override any settings
function applyServerSettings(settings)
    for setting, value in pairs(settings) do
        ServerSettings[setting] = value
    end
end

-- Apply GOTY settings at preset load time
applyServerSettings(defaultGotySettings)
