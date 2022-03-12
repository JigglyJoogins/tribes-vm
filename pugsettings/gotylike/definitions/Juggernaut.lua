local classDef = {
    ootbClass="Heavy",
    armorClass="Juggernaught",
    weapons={
        "Fusion Mortar",
        "Fusion Mortar Deluxe",
        "MIRV Launcher",
        "Spinfusor MKD",
        "Spinfusor MK-X",
        "Heavy Twinfusor",
        "X1 LMG",
        {class="Light", name="Shocklance"},
        {class="Medium", name="Long Range Repair Tool"}, -- Dummy tertiary weapon
    },
    beltItems={
        "Heavy AP Grenade",
        "Heavy AP-XL",
        "Spinfusor Disk",
    },
    packs={
        "Regen Pack",
    },
    skins={
        "Juggernaut",
        "The Forlorn",
    },
    properties={
        HealthPool = 2400,
        RegenTime = 20,
        RegenRate = 0.1,
        EnergyPool = 80,
        EnergyRechargeRate = 9,
        GroundSpeed = 360,
        Mass = 130,
        AirControlMaxMultiplier = 3.7,
        AirControlMinMultiplier = 0.4,
        VehicleSpeedInheritance = 0.75,
    },
    armorValueMods={
        -- Juggernaught Armor Upgrades
        HealthBuff = 200,
        RegenTimeBuff = 0.25,
        EnergyBuff = 10,
        HealthRegenRateBuff = 0.25,
    }
}

local itemDefs = {
    {
        name="Fusion Mortar", 
        changes={
            Damage = 1300,
            DirectHitMultiplier = 1,
            ExplosiveRadius = 700,
            ProjectileSpeed = 3500,
            ProjectileMaxSpeed = 7000,
            ProjectileTerminalVelocity = 7000,
            SpareAmmo = 25,
        },
    },
    {
        name="Fusion Mortar Deluxe", 
        changes={
            Damage = 1400,
            DirectHitMultiplier = 1,
            ExplosiveRadius = 650,
            ProjectileSpeed = 4000,
            ProjectileMaxSpeed = 8000,
            ProjectileTerminalVelocity = 8000,
            SpareAmmo = 25,
        },
    },
    {
        name="Spinfusor MKD", 
        changes={
            Damage = 600,
            ExplosiveRadius = 390,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 28,
            ReloadTime = 1.5,
            SelfImpactExtraZMomentum = 25000,
        },
    },
    {
        name="Spinfusor MK-X", 
        changes={
            Damage = 660,
            ExplosiveRadius = 360,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 28,
            ReloadTime = 1.5,
            SelfImpactExtraZMomentum = 25000,
        },
    },
    {
        name="Heavy Twinfusor", 
        changes={
            Damage = 440,
            ExplosiveRadius = 360,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 36,
            ImpactMomentum = 85000,
            SelfImpactMomentumMultiplier = 0.5,
            SelfImpactExtraZMomentum = 45000,
            ReloadTime = 1.9,
        },
    },
    {
        name="X1 LMG", 
        changes={
            Damage = 75,
            ProjectileInheritance = 0,
            ClipAmmo = 80,
            SpareAmmo = 460,
            ReloadTime = 1.925,
            FireInterval = 0.1,
            SpinupTime = 0.5,
        },
    },
    {
        name="Heavy AP Grenade", 
        changes={
            Damage = 1500,
            ExplosiveRadius = 624,
            SpareAmmo = 2,
        },
    },
    {
        name="Heavy AP-XL", 
        changes={
            Damage = 1300,
            ExplosiveRadius = 696,
            SpareAmmo = 2,
        },
    },
    {
        name="Spinfusor Disk", 
        changes={
            Damage = 650,
            ExplosiveRadius = 360,
            DirectHitMultiplier = 1.4,
            SpareAmmo=2,
        },
    },
    {
        name="Regen Pack", 
        valueMods={
            RegenTimeBuff = 0.14,
        },
    },
}



return {items=itemDefs, class=classDef}