local classDef = {
    ootbClass="Medium",
    armorClass="Medium",
    weapons={
        "Spinfusor",
        "Twinfusor",
        "Honorfusor",
        "Assault Rifle",
        "Gast Rifle", -- TODO REMIX
        "Spare Spinfusor", -- Now the Blinks
        "Thumper D",
        "Thumper DX", -- TODO REMIX
        "Eagle",
        "Arx Buster",
        "Dust Devil", -- TODO MOVE + REMIX, Heavy Dust Devil?
        "Grenade Launcher",
        "Plasma Gun",
        "NJ4 SMG", -- TODO REMIX
        "Desert NJ4 SMG", -- TODO REMIX
        "NJ5 SMG",
        "Thumper", -- TODO REMIX
        "TCN4", -- TODO REMIX
        "TCN4 Rockwind", -- TODO REMIX
        "Flak Cannon",
        "Improved Repair Tool",
        "Sawed Off Shotgun",
        {class="Light", name="Shocklance"},
        {class="Medium", name="Long Range Repair Tool"}, -- Dummy tertiary weapon
    },
    beltItems={
        "Frag Grenades XL",
        "Short-Fuse Frag Grenades",
        "AP Grenades", -- TODO REMIX
        "Proximity Grenades",
        "EMP Grenade",
        "EMP XL Grenade", -- TODO REMIX
        "Blackout Grenade",
        "Cluster Grenade",
        "TCNG", -- TODO REMIX
        "TCNG Quickfuse", -- TODO REMIX
        "Motion Sensor",
    },
    packs={
        "Energy Pack", -- TODO REMIX
        "Utility Pack",
        "Shield Pack",
        "Jammer Pack",
        "Light Turret",
        "EXR Turret",
    },
    skins={
        "Soldier",
        "Synthrall",
        "Raider",
        "Mercenary",
        "Griever",
        "Technician",
        "Specialist",
    },
    properties={
        HealthPool = 1200,
        RegenTime = 20,
        RegenRate = 0.1,
        Mass = 100,
        VehicleSpeedInheritance = 1,
        CollisionCylinderRadius = 24,
        CollisionCylinderHeight = 46,
    },
    armorValueMods={
        -- Soldier Armor Upgrades
        RegenTimeBuff = 0.25,
        HealthBuff = 100,
        HealthRegenRateBuff = 0.25,
        EnergyBuff = 5,

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
        name="Spinfusor", 
        changes={
            Damage = 650,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 28,
            ReloadTime = 1.5,
        },
    },
    {
        name="Honorfusor", 
        changes={
            Damage = 650,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 28,
            ReloadTime = 1.5,
        },
    },
    {
        name="Twinfusor", 
        changes={
            Damage = 410,
            ExplosiveRadius = 360,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 36,
            ImpactMomentum = 85000,
            SelfImpactMomentumMultiplier = 0.5,
            SelfImpactExtraZMomentum = 45000,
            ReloadTime = 1.6,
        },
    },
    {
        name="Assault Rifle", 
        changes={
            Damage = 80,
            ClipAmmo = 28,
            ReloadTime = 1.53,
            FireInterval = 0.11,
            SpareAmmo = 240,
        },
    },
    {
        name="Gast Rifle", 
        changes={
            ClipAmmo = 24,
            SpareAmmo = 200,
            ReloadTime = 1.53,
        },
    },
    {
        name="Thumper D", 
        changes={
            Damage = 550,
            ExplosiveRadius = 370,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 20,
            SelfImpactExtraZMomentum = 70000,
        },
    },
    {
        name="Thumper DX", 
        changes={
            Damage = 600,
            ExplosiveRadius = 350,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 20,
            SelfImpactExtraZMomentum = 70000,
        },
    },
    {
        name="Spare Spinfusor", 
        changes={
            Damage = 600,
            DirectHitMultiplier = 1.1,
            SpareAmmo = 28,
            ProjectileInheritance = 0.5,
            ReloadTime = 1.5,
        },
    },
    {
        name="Eagle", 
        changes={
            HoldToFire = false,
            Damage = 100,
            ClipAmmo = 20,
            SpareAmmo = 132,
            ReloadTime = 1.26,
            FireInterval = 0.16,
            -- Accuracy = 0.98,
            -- AccuracyLossOnShot = 0.45,
            -- AccuracyLossMax = 0.1,
            -- AccuracyCorrectionRate = 0.38,
            Accuracy = 0.9875,
            AccuracyLossOnShot = 0.45,
            AccuracyLossMax = 0.1,
            AccuracyCorrectionRate = 0.38,
            
            -- AccuracyCorrectionRate = 0.39,
        },
    },
    {
        name="Frag Grenade XL", 
        changes={
            Damage = 1000,
            ExplosiveRadius = 682,
            SpareAmmo = 2,
        },
    },
    {
        name="Short-Fuse Frag Grenades", 
        changes={
            Damage = 720,
            ExplosiveRadius = 550,
            SpareAmmo = 2,
        },
    },
    {
        name="AP Grenades", 
        changes={
            Damage = 1200,
            ExplosiveRadius = 600,
            SpareAmmo = 2,
        },
    },
    {
        name="Proximity Grenades", 
        changes={
            Damage = 620,
            ExplosiveRadius = 528,
            SpareAmmo = 2,
        },
    },
    {
        name="Energy Pack", 
        valueMods={
            EnergyBuff = 35,
        },
    },
    {
        name="Utility Pack", 
        valueMods={
            EnergyBuff = 20,
            ExtraBeltAmmo = 1,
            HealthBuff = 100,
            WalkSpeedBuff = 0.1,
        },
    },
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
            Accuracy = 0.99,
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
            PackSustainedEnergyCost = 1.75,
            JammerPackRange = 1300,
        }
    },
    {
        name="Thumper", 
        changes={
            Damage = 650,
            ExplosiveRadius = 360,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 35,
        },
    },
    {
        name="TCN4", 
        changes={
            Damage = 80,
            ClipAmmo = 32,
            SpareAmmo = 336,
            ReloadTime = 1.53,
        },
    },
    {
        name="TCN4 Rockwind", 
        changes={
            Damage = 105,
            ClipAmmo = 24,
            SpareAmmo = 240,
            ReloadTime = 1.53,
            FireInterval = 0.15,
        },
    },
    {
        name="Sawed Off Shotgun", 
        changes={
            Damage = 80,
            ShotgunShotCount = 8,
            ClipAmmo = 2,
            SpareAmmo = 50,
            HitscanRange = 3000,
            ReloadTime = 1.28,
            Accuracy = 0.85,
            AccuracyLossMax = 0.3,
            AccuracyLossOnShot = 0.0,
            AccuracyCorrectionRate = 0.18,
            ShotgunUseGOTYSpread = true,
        },
    },
    {
        class="Light",
        name="Sparrow", 
        changes={
            HoldToFire = false,
            Damage = 90,
            ClipAmmo = 28,
            SpareAmmo = 188,
            ReloadTime = 1.26,
            FireInterval = 0.16,
            -- Accuracy = 0.98,
            AccuracyLossOnShot = 0.45,
            AccuracyLossMax = 0.1,
            AccuracyCorrectionRate = 0.38,
        },
    },
    {
        name="TCNG", 
        changes={
            Damage = 900,
            ExplosiveRadius = 572,
            SpareAmmo = 2,
        },
    },
    {
        name="TCNG Quickfuse", 
        changes={
            Damage = 700,
            ExplosiveRadius = 528,
            SpareAmmo = 2,
            FuseTimer = 1.2,
        },
    },
    {
        name="Motion Sensor", 
        changes={
            Damage = 10,
            EnergyDrain = 100,
            ImpactMomentum = 1000,
            ExplosiveRadius = 572,
            SpareAmmo = 2,
            MineCollisionCylinderRadius = 300,
            MineCollisionCylinderHeight = 200,
        },
    },
}



return {items=itemDefs, class=classDef}