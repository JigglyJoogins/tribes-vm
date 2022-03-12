local classDef = {
    ootbClass="Medium",
    armorClass="Raider",
    weapons={
        "Arx Buster",
        "Dust Devil",
        "Grenade Launcher",
        "Plasma Gun",
        "NJ4 SMG",
        "Desert NJ4 SMG",
        "NJ5 SMG",
        {class="Light", name="Shocklance"},
        {class="Medium", name="Long Range Repair Tool"}, -- Dummy tertiary weapon
    },
    beltItems={
        "EMP Grenade",
        "EMP XL Grenade",
        "Blackout Grenade",
        "Cluster Grenade",
    },
    packs={
        "Shield Pack",
        "Jammer Pack",
    },
    skins={
        "Raider",
        "Mercenary",
        "Griever",
    },
    properties={
        HealthPool = 1200,
        RegenTime = 20,
        Mass = 100,
        RegenRate = 0.1,
        VehicleSpeedInheritance = 1,
    },
    armorValueMods={
        -- Raider Armor Upgrades
        RegenTimeBuff = 0.25,
        HealthBuff = 100,
        HealthRegenRateBuff = 0.25,
        EnergyBuff = 10,
    }
}

local itemDefs = {
    {
        name="Arx Buster", 
        changes={
            Damage = 600,
            StuckDamageMultiplier = 1,
            StuckMomentumMultiplier = 1,
            ExplosiveRadius = 360,
            SpareAmmo = 39,
        },
    },
    {
        name="Dust Devil", 
        changes={
            Damage = 500,
            StuckDamageMultiplier = 1,
            StuckMomentumMultiplier = 1,
            ExplosiveRadius = 410,
            SpareAmmo = 39,
        },
    },
    {
        name="Grenade Launcher", 
        changes={
            Damage = 550,
            ExplosiveRadius = 500,
            ClipAmmo = 5,
            SpareAmmo = 46,
        },
    },
    {
        name="Plasma Gun", 
        changes={
            Damage = 400,
            DirectHitMultiplier = 1.25,
            ExplosiveRadius = 270,
            ProjectileInheritance = 0.5,
            ProjectileSpeed = 3620,
            ProjectileMaxSpeed = 8000,
            ProjectileLifespan = 3,
            SelfImpactExtraZMomentum = 25000,
            ClipAmmo = 6,
            SpareAmmo = 50,
            ReloadTime = 1.8,
            FireInterval = 0.47,
            DamageAgainstShrikeMultiplier = 0.1,
        },
    },
    {
        name="NJ4 SMG", 
        changes={
            Damage = 75,
            ProjectileInheritance = 0,
            ClipAmmo = 28,
            SpareAmmo = 240,
            ReloadTime = 1.53,
            FireInterval = 0.11,
        },
    },
    {
        name="Desert NJ4 SMG", 
        changes={
            Damage = 70,
            ProjectileInheritance = 0,
            ClipAmmo = 28,
            SpareAmmo = 240,
            ReloadTime = 1.53,
            FireInterval = 0.1,
        },
    },
    {
        name="NJ5 SMG", 
        changes={
            Damage = 125,
            ClipAmmo = 24,
            SpareAmmo = 216,
            ReloadTime = 1.53,
            FireInterval = 0.2,
        },
    },
    {
        name="EMP Grenade", 
        changes={
            Damage = 600,
            ExplosiveRadius = 682,
            EnergyDrain = 192,
            SpareAmmo = 2,
        }
    },
    {
        name="EMP XL Grenade", 
        changes={
            Damage = 500,
            ExplosiveRadius = 858,
            EnergyDrain = 192,
            SpareAmmo = 2,
        }
    },
    {
        name="Blackout Grenade", 
        changes={            
            Damage = 50,
            SelfImpactExtraZMomentum = 50000,
        }
    },
    {
        name="Shield Pack", 
        changes={
            ShieldPackEnergyCostPerDamagePoint = 0.16,
            PackSustainedEnergyCost = 1.5,
        },
        valueMods={
            ShieldPackBuff = 0.01,
        },
    },
    {
        name="Jammer Pack", 
        changes={
            PackSustainedEnergyCost = 5,
            JammerPackRange = 6000,
        },
        valueMods={
            JammerPackRadiusBuff = 2,
        },
    },
}



return {items=itemDefs, class=classDef}