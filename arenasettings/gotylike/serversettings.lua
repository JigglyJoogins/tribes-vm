Core.AllowUnmoddedClients = false

-- Limit all classes to two weapons
ServerSettings.DisabledEquipPoints.add("Light", Loadouts.EquipPoints.Tertiary)
ServerSettings.DisabledEquipPoints.add("Medium", Loadouts.EquipPoints.Tertiary)
ServerSettings.DisabledEquipPoints.add("Heavy", Loadouts.EquipPoints.Tertiary)

-- Weapon Bans
-- Mines
-- Packs
--ServerSettings.BannedItems.add("Light", "Stealth Pack")
-- Perks

defaultGotySettings = {
    -- Time settings
    TimeLimit = 25,
    WarmupTime = 5,
    RespawnTime = 5,
    SniperRespawnDelay = 0,
    EndMatchWaitTime = 15,
    AmmoPickupLifespan = 60,
    CTFFlagTimeout = 40,
    -- Team settings
    TeamAssignType = TeamAssignTypes.Unbalanced,
    AutoBalanceTeams = false,
    FriendlyFire = true,
    FriendlyFireMultiplier = 1,
    TeamCredits = true,
    BaseAssets = false,
    -- Score
    CTFCapLimit = 7,

    -- Flag
    FlagDragLight = 0,
    FlagDragMedium = 0,
    FlagDragHeavy = 0,
    FlagDragDeceleration = 0,

    -- Vehicles
    VehiclesEarnedWithCredits = true,
    GravCycleLimit = 4,
    BeowulfLimit = 1,
    ShrikeLimit = 1,
    GravCycleCost = 5000,
    BeowulfCost = 35000,
    ShrikeCost = 35000,
    GravCycleEjectionSeat = false,
    BeowulfEjectionSeat = false,
    ShrikeEjectionSeat = false,
    
    -- Inventory call-in
    EnableInventoryCallIn = true,
    InventoryStationsRestoreEnergy = true,
    InventoryCallInBlocksPlayers = false,
    InventoryCallInCost = 2000,
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
