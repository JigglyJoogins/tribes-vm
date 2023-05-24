local vehicleDef = {
    properties = {
        HealthPool = 3200,
        EnergyPool = 70,
        EnergyRechargeRate = 10,
        BoostEnergyCost = 20,
        BoostMultiplier = 1.5,
        
        MaxSpeed = 2400,
        MaxDivingSpeedMultiplier = 1.2,

        MinCrashDamageSpeed = 400,
        MaxCrashDamageSpeed = 2400,
        MinCrashDamage = 200,
        MaxCrashDamage = 2000,
        RamMinSpeed = 200,
        RamMaxDamageSpeed = 2200,
        RamMinDamage = 75,
        RamMaxDamage = 1800,
    },
}

local vehicleWeaponsDef = {
    {
        name="Shrike",
        changes={
            Damage = 350,
            ExplosiveRadius = 320,
            ImpactMomentum = 85000,
            ProjectileLifespan = 10,
            ProjectileSpeed = 8500,
            ProjectileMaxSpeed = 8500,
            CollisionSize = 42,
            DamageAgainstShrikeMultiplier = 2.5,

            ClipAmmo = 4,
            BurstShotCount = 4,
            ReloadTime = 4.0,
            FireInterval = 0.25,

            MaxDamageRangeProportion = 0.5,
            MinDamageRangeProportion = 0.9,
            MinDamageProportion = 0.7
        },
    }
}

return {vehicle=vehicleDef, weapons=vehicleWeaponsDef}