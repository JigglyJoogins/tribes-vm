local vehicleDef = {
    properties = {
        HealthPool = 8000,
        EnergyPool = 80,
        EnergyRechargeRate = 8,
        BoostEnergyCost = 20,
        BoostMultiplier = 1.25,
        
        MaxSpeed = 1000,
        MaxDivingSpeedMultiplier = 1.1,

        MinCrashDamageSpeed = 1000,
        MaxCrashDamageSpeed = 2100,
        MinCrashDamage = 100,
        MaxCrashDamage = 400,
        RamMinSpeed = 800,
        RamMaxDamageSpeed = 1600,
        RamMinDamage = 500,
        RamMaxDamage = 1000,
    },
}

local vehicleWeaponsDef = {
    {
        name="Beowulf Cannon",
        changes={
            Damage = 1000,
            DirectHitMultiplier = 2,
            ExplosiveRadius = 750,
            ProjectileSpeed = 9000,
            ProjectileMaxSpeed = 20000,
            ImpactMomentum = 100000,
            CollisionSize = 42,
            DamageAgainstShrikeMultiplier = 2.5,

            FireInterval = 4.0,

            MaxDamageRangeProportion = 0.5,
            MinDamageRangeProportion = 0.9,
            MinDamageProportion = 0.5
        },
    },
    {
        name="Beowulf Chain",
        changes={
            Damage = 100,
            ProjectileSpeed = 18000,
            ProjectileMaxSpeed = 18000,
            CollisionSize = 50,
            DamageAgainstShrikeMultiplier = 0.65,

            ClipAmmo = 100,
            ReloadTime = 4.0,
            FireInterval = 0.11,

            Accuracy = 0.98,
            AccuracyLossOnShot = 0,
            AccuracyCorrectionRate = 0.19,
            AccuracyLossMax = 0.11,

            MaxDamageRangeProportion = 0.5,
            MinDamageRangeProportion = 1.0,
            MinDamageProportion = 0.75
        },
    }
}

return {vehicle=vehicleDef, weapons=vehicleWeaponsDef}