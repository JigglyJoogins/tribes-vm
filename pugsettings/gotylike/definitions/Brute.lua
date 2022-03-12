local classDef = {
    ootbClass="Heavy",
    armorClass="Brute",
    weapons={
        "Heavy Spinfusor",
        "Devastator Spinfusor",
        "Gladiator",
        "Automatic Shotgun",
        "The Hammer",
        "Nova Colt",
        "Plasma Cannon",
        "EFG",
        {class="Light", name="Shocklance"},
        {class="Medium", name="Long Range Repair Tool"}, -- Dummy tertiary weapon
    },
    beltItems={
        "Fractal Grenade",
        "Extended Fractal",
        "Light Sticky Grenade",
    },
    packs={
        "Heavy Shield Pack",
        "Heavy Energy Pack",
        "Survival Pack",
    },
    skins={
        "Brute",
        "Crusher",
    },
    properties={
        HealthPool = 2400,
        RegenTime = 20,
        Mass = 130,
        RegenRate = 0.1,
        EnergyPool = 80,
        VehicleSpeedInheritance = 0.75,
    },
    armorValueMods={
        -- Brute Armor Upgrades
        HealthBuff = 200,
        RegenTimeBuff = 0.25,
        EnergyBuff = 5,
        HealthRegenRateBuff = 0.25,
    }
}

local itemDefs = {
    {
        name="Heavy Spinfusor", 
        changes={
            Damage = 750,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 30,
            ImpactMomentum = 90000,
            SelfImpactExtraZMomentum = 25000,
            ReloadTime = 1.8,
        },
    },
    {
        name="Devastator Spinfusor", 
        changes={
            Damage = 700,
            DirectHitMultiplier = 1.72,
            ProjectileInheritance = 0.5,
            SpareAmmo = 30,
            ImpactMomentum = 90000,
            ReloadTime = 1.8,
            ExplosiveRadius = 390,
        },
    },
    {
        name="Gladiator", 
        changes={
            Damage = 800,
            ExplosiveRadius = 200,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 20,
            ReloadTime = 1.4,
        },
    },
    {
        name="Nova Colt", 
        changes={
            HoldToFire = false,
            ClipAmmo = 6,
            SpareAmmo = 72,
            LowAmmoCutoff = 1,
            ReloadTime = 1.4,
            -- Fire rate slightly slower than GOTY
            FireInterval = 0.3,
            Damage = 150,
            HitscanRange = 7500,
            MinDamageProportion = 0.50,
            MaxDamageRangeProportion = 0.24,
            MinDamageRangeProportion = 0.95,
            Accuracy = 1.0,
            AccuracyLossOnShot = 0.0,
            AccuracyLossMax = 0.0,
            AccuracyCorrectionRate = 0.0,
            AccuracyLossOnJump = 0.0,
        },
    },
    {
        name="Auto Shotgun", 
        changes={
            Damage = 50,
            ShotgunShotCount = 8,
            ClipAmmo = 8,
            SpareAmmo = 60,
            HitscanRange = 3000,
            ReloadTime = 1.35,
        },
    },
    {
        name="The Hammer", 
        changes={
            Damage = 60,
            ShotgunShotCount = 8,
            ClipAmmo = 6,
            SpareAmmo = 50,
            HitscanRange = 3000,
            ReloadTime = 1.35,
        },
    },
    {
        name="Plasma Cannon", 
        changes={
            Damage = 460,
            DirectHitMultiplier = 1.25,
            ExplosiveRadius = 270,
            ProjectileInheritance = 0.5,
            ProjectileSpeed = 3620,
            ProjectileMaxSpeed = 8000,
            ProjectileLifespan = 3,
            SelfImpactExtraZMomentum = 45000,
            ClipAmmo = 10,
            SpareAmmo = 60,
            ReloadTime = 2.75,
            FireInterval = 0.85,
            DamageAgainstShrikeMultiplier = 0.1,
        },
    },
    {
        name="Light Sticky Grenade",
        valueMods={
            ExtraBeltAmmo = 0,
            BeltDamageRadiusBuff = 0.1,
            BeltArmorPenetrationBuff = 0.2,
        },
    },
    {
        name="Fractal Grenade",
        changes={
            Damage = 370, -- Reduced final explosion damage
            ExplosiveRadius = 520,
            SpareAmmo = 2,
            ProjectileSpeed = 1200,
            ImpactMomentum = 40000,
            FractalDuration = 4.5,
            FractalShardInterval = 0.2,
            FractalAscentTime = 1,
            FractalAscentHeight = 90,
            FractalShardDistance = 900,
            FractalShardHeight = 100,
            FractalShardDamage = 370,
            FractalShardDamageRadius = 300,
            MinDamageProportion = 1,
            MaxDamageRangeProportion = 0.5,
            MinDamageRangeProportion = 0.9,
        },
    },
    {
        name="Extended Fractal Grenade",
        changes={
            Damage = 300, -- Reduced final explosion damage
            ExplosiveRadius = 520,
            SpareAmmo = 2,
            ProjectileSpeed = 1200,
            ImpactMomentum = 20000,
            FractalDuration = 5.5,
            FractalShardInterval = 0.2,
            FractalAscentTime = 2,
            FractalAscentHeight = 90,
            FractalShardDistance = 900,
            FractalShardHeight = 100,
            FractalShardDamage = 270,
            FractalShardDamageRadius = 300,
            MinDamageProportion = 1,
            MaxDamageRangeProportion = 0.5,
            MinDamageRangeProportion = 0.9,
        },
    },
    {
        name="Survival Pack",
        valueMods={
            HealthBuff = 200,
            EnergyBuff = 15,
            WalkSpeedBuff = 0.25,
            EnergyRegenRateBuff = 0.15,
        },
    },
    {
        name="Heavy Energy Pack",
        valueMods={
            EnergyBuff = 35,
        },
    },
    {
        name="Heavy Shield Pack",
        changes={
            PackSustainedEnergyCost = 4.25,
        },
        valueMods={
            ShieldPackBuff = 0.036,
        },
    },
}



return {items=itemDefs, class=classDef}