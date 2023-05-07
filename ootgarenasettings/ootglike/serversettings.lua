Core.AllowUnmoddedClients = false

-- Limit all classes to two weapons
ServerSettings.DisabledEquipPoints.add("Light", Loadouts.EquipPoints.Tertiary)
ServerSettings.DisabledEquipPoints.add("Medium", Loadouts.EquipPoints.Tertiary)
-- ServerSettings.DisabledEquipPoints.add("Heavy", Loadouts.EquipPoints.Tertiary)

ootgSettings = {
    -- Time settings
    TimeLimit = 25,
    WarmupTime = 5,
    RespawnTime = 5,
    SniperRespawnDelay = 5,
    EndMatchWaitTime = 45,
    AmmoPickupLifespan = 60,
    CTFFlagTimeout = 40,
    -- Team settings
    TeamAssignType = TeamAssignTypes.Unbalanced,
    AutoBalanceTeams = false,
    FriendlyFire = true,
    FriendlyFireMultiplier = 1,
    TeamCredits = true,
    BaseAssets = true,
    -- Score
    CTFCapLimit = 7,

    -- Vehicles
    VehiclesEarnedWithCredits = true,
    GravCycleLimit = 4,
    BeowulfLimit = 2,
    ShrikeLimit = 2,
    GravCycleCost = 5000,
    BeowulfCost = 25000,
    ShrikeCost = 40000,
    GravCycleEjectionSeat = false,
    BeowulfEjectionSeat = false,
    ShrikeEjectionSeat = false,
    
    -- Inventory call-in
    EnableInventoryCallIn = true,
    InventoryStationsRestoreEnergy = true,
    InventoryCallInBlocksPlayers = false,
    InventoryCallInCost = 2000,
    InventoryCallInBuildUpTime = 2.0,
    InventoryCallInCooldownTime = 10.0,

    -- GOTY fixes
    UseGOTYShieldPack = false,
    UseGOTYBXTCharging = true,
    RageThrustPackDependsOnCapperSpeed = true,
}

-- Function to set or override any settings
function applyServerSettings(settings)
    for setting, value in pairs(settings) do
        ServerSettings[setting] = value
    end
end

-- Apply GOTY settings at preset load time
applyServerSettings(ootgSettings)