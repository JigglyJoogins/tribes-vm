local classDef = {
    ootbClass="Heavy",
    armorClass="Heavy",
    weapons={
        "Heavy Spinfusor",
        "Devastator Spinfusor", -- TODO REMIX
        "Gladiator",
        "Automatic Shotgun",
        "The Hammer", -- TODO REMIX
        "Nova Colt",
        "Plasma Cannon",
        "EFG",
        "Fusion Mortar",
        "Fusion Mortar Deluxe", -- TODO REMIX
        "MIRV Launcher",
        "Spinfusor MKD", -- TODO REMIX
        "Spinfusor MK-X", -- TODO REMIX
        "Heavy Twinfusor",
        "X1 LMG",
        "Chain Gun",
        "Chain Cannon", -- TODO REMIX
        "Heavy Bolt Launcher",
        "Saber Launcher",
        "Titan Launcher",
        {class="Light", name="Shocklance"},
        {class="Medium", name="Long Range Repair Tool"}, -- Dummy tertiary weapon
    },
    beltItems={
        "Fractal Grenade",
        "Extended Fractal", -- TODO REMIX
        "Light Sticky Grenade", -- TODO Double Check Definitions here
        "Heavy AP Grenade",
        "Heavy AP-XL", -- TODO REMIX
        "Spinfusor Disk",
        "Frag Grenade", -- TODO REMIX
        "Mines",
    },
    packs={
        "Heavy Shield Pack",
        "Heavy Energy Pack", -- TODO REMIX
        "Survival Pack",
        "Regen Pack", -- TODO REMIX
        "Forcefield",
    },
    skins={
        "Brute",
        "Crusher",
        "Juggernaut",
        "The Forlorn",
        "Doombringer",
        "Executioner",
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

        -- Perks
        -- Quick Draw
        QuickDraw = 0.5,
        QuickDrawBelt = 0.2,
        -- Rage
        Rage = true,
        RageTime = 15,
        RageEnergyRegen = 0.2,
        RageMassChange = -0.2,
        RageHealthRestoration = 0.5,
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
            -- Fire rate corresponding to ping-dependent GOTY rate of 0.24 for someone with ping 30
            FireInterval = 0.27,
            Damage = 190,
            HitscanRange = 10000,
            MinDamageProportion = 0.65,
            MaxDamageRangeProportion = 0.2,
            MinDamageRangeProportion = 0.4,
            Accuracy = 0.98,
            AccuracyLossOnShot = 0.45,
            AccuracyLossMax = 0.1,
            AccuracyCorrectionRate = 0.38,
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
            Accuracy = 0.85,
            AccuracyLossMax = 0.3,
            AccuracyLossOnShot = 0.0,
            AccuracyCorrectionRate = 0.18,
            ShotgunUseGOTYSpread = true,
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
            Accuracy = 0.85,
            AccuracyLossMax = 0.3,
            AccuracyLossOnShot = 0.0,
            AccuracyCorrectionRate = 0.18,
            ShotgunUseGOTYSpread = true,
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
            Damage = 350, -- Reduced final explosion damage
            ExplosiveRadius = 520,
            SpareAmmo = 2,
            ProjectileSpeed = 1200,
            ImpactMomentum = 40000,
            FractalDuration = 5.5,
            FractalShardInterval = 0.2,
            FractalAscentTime = 1,
            FractalAscentHeight = 90,
            FractalShardDistance = 900,
            FractalShardHeight = 100,
            FractalShardDamage = 350,
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
            SpareAmmo = 2,
        },
    },
    {
        name="Regen Pack", 
        valueMods={
            RegenTimeBuff = 0.14,
        },
    },
    {
        name="Chain Gun", 
        changes={
            Damage = 95,
            ProjectileSpeed = 18000,
            ProjectileMaxSpeed = 18000,
            ClipAmmo = 250,
            SpareAmmo = 250,
            ReloadTime = 1.925,
            FireInterval = 0.11,
            SpinupTime = 1.05,
            Accuracy = 0.98,
            AccuracyLossMax = 0.11,
            AccuracyCorrectionRate = 0.19,
        },
    },
    {
        name="Chain Cannon", 
        changes={
            Damage = 115,
            ProjectileSpeed = 18000,
            ProjectileMaxSpeed = 18000,
            ClipAmmo = 250,
            SpareAmmo = 250,
            ReloadTime = 1.925,
            FireInterval = 0.14,
            SpinupTime = 1.05,
            Accuracy = 0.98,
            AccuracyLossMax = 0.11,
            AccuracyCorrectionRate = 0.19,
        },
    },
    {
        name="Heavy Bolt Launcher", 
        changes={
            Damage = 750,
            ExplosiveRadius = 360,
            DirectHitMultiplier = 1.4,
            SelfImpactExtraZMomentum = 25000,
            ImpactMomentum=90000,
            SpareAmmo = 30,
            ReloadTime = 1.7,
        },
    },
    {
        -- Because of the OOTB change to Saber logic, it can't really be reverted
        -- I'm giving it slightly reduced explosive radius to compensate for its anti-shrike advantage
        name="Saber Launcher", 
        changes={
            Damage = 650,
            ExplosiveRadius = 360,
            DirectHitMultiplier = 1.25,
            ProjectileSpeed = 650,
            ProjectileMaxSpeed = 2800,
            ImpactMomentum = 55000,
            SelfImpactMomentumMultiplier = 1.2,
            SpareAmmo = 20,
            ReloadTime = 1.7,
            FireInterval = 0.5,
        },
    },
    {
        name="Titan Launcher", 
        changes={
            Damage = 650,
            ExplosiveRadius = 450,
            DirectHitMultiplier = 1.25,
            ProjectileSpeed = 3000,
            ProjectileMaxSpeed = 8000,
            ImpactMomentum  = 65000,
            SelfImpactMomentumMultiplier = 1.2,
            SpareAmmo = 20,
            ReloadTime = 1.7,
            FireInterval = 0.5,
            CollisionSize = 35,
        },
    },
    {
        name="Frag Grenade", 
        changes={
            Damage = 900,
            ExplosiveRadius = 572,
            SpareAmmo = 2,
            FuseTimer = 1.5,
        },
    },
    {
        name="Mine", 
        changes={
            Damage = 700,
            ExplosiveRadius = 400,
            SpareAmmo = 2,
            MineCollisionCylinderRadius = 180,
            MineCollisionCylinderHeight = 72,
        },
    },
    {
        name="Forcefield",
        changes={
            ForcefieldMinDamage = 100,
            ForcefieldMaxDamage = 800,
            ForcefieldMinDamageSpeed = 100,
            ForcefieldMaxDamageSpeed = 1800,
        },
    },
}



return {items=itemDefs, class=classDef}