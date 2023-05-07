local vehicleDef = {
    properties = {
        HealthPool = 1400,
        EnergyPool = 100,
        EnergyRechargeRate = 13,
        BoostEnergyCost = 20,
        BoostMultiplier = 1.5,
        
        MaxSpeed = 2500,
        MaxDivingSpeedMultiplier = 1.2,

        MinCrashDamageSpeed = 400,
        MaxCrashDamageSpeed = 2400,
        MinCrashDamage = 200,
        MaxCrashDamage = 2000,
        RamMinSpeed = 800,
        RamMaxDamageSpeed = 1900,
        RamMinDamage = 100,
        RamMaxDamage = 2400,
    },
}

local vehicleWeaponsDef = {
    {
        name="Grav Cycle",
        changes={
            Damage = 250,
            ExplosiveRadius = 200,
            ProjectileSpeed = 4000,
            ProjectileMaxSpeed = 4000,
            ImpactMomentum = 15000,
            CollisionSize = 42,
            DamageAgainstShrikeMultiplier = 2.5,

            ClipAmmo = 8,
            ReloadTime = 4.0,
            FireInterval = 0.15,

            MaxDamageRangeProportion = 0.5,
            MinDamageRangeProportion = 0.9,
            MinDamageProportion = 0.7
        },
    }
}

return {vehicle=vehicleDef, weapons=vehicleWeaponsDef}