local utils = require("gotylike/utils")

local vehicle_propsToPrint = {
    "HealthPool",
    "EnergyPool",
    "EnergyRechargeRate",
    "MaxSpeed",
    "MaxDivingSpeedMultiplier",
    "BoostEnergyCost",
    "BoostMultiplier",
    "MinCrashDamageSpeed",
    "MinCrashDamage",
    "MaxCrashDamage",
    "RamMinSpeed",
    "RamMaxDamageSpeed",
    "RamMinDamage",
    "RamMaxDamage",
}

local vehicleWeapon_propsToPrint = {
    "ClipAmmo",
    "BurstShotCount",
    "ReloadTime",
    "FireInterval",
    "CollisionSize",
    "ProjectileSpeed",
    "ProjectileMaxSpeed",
    "Damage",
    "ExplosiveRadius",
    "ImpactMomentum",
    "ProjectileLifespan",
    "MinDamageProportion",
    "MaxDamageRangeProportion",
    "MinDamageRangeProportion",
}

-- utils:printVehicleProps("Grav Cycle", vehicle_propsToPrint)
-- utils:printVehicleWeaponProps("Grav Cycle", vehicleWeapon_propsToPrint)

------------------------------

local function applyVehicleDefs(vehName, vehicle)
    local vehDef = vehicle.vehicle
    for propName, propVal in pairs(vehDef.properties) do
        Vehicles.setProperty(vehName, Vehicles.Properties[propName], propVal)
    end
end

local function applyVehicleWeaponDefs(vehicle)
    for idx, vehicleWep in pairs(vehicle.weapons) do
        for propName, propVal in pairs(vehicleWep.changes) do
            VehicleWeapons.setProperty(vehicleWep.name, VehicleWeapons.Properties[propName], propVal)
        end
    end
end

------------------------------

local vehicleNames = {
    "GravCycle",
    "Beowulf",
    "Shrike"
}

local vehicles = {}

-- Load vehicle definitions
for idx, vehName in pairs(vehicleNames) do
    if utils:fileExists(Core.ConfigPath .. "gotylike/definitions/" .. vehName .. ".lua") then
        vehicles[vehName] = require("gotylike/definitions/" .. vehName)
    else
        Logger.error("Failed to find definition for vehicle " .. vehName)
    end
end

for vehName, vehicle in pairs(vehicles) do
    applyVehicleDefs(vehName, vehicle)
    applyVehicleWeaponDefs(vehicle)
end