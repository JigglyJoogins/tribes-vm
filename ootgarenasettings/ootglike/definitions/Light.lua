local classDef = {
    ootbClass="Light",
    armorClass="Light",
    weapons={
        "Light Spinfusor",
        "Bolt Launcher",
        "Blinksfusor",
        "Light Twinfusor",
        "Dueling Spinfusor", -- TODO REMIX
        "Light Grenade Launcher",
        "Light Assault Rifle",
        "Shotgun",
        "Holdout Shotgun", -- TODO REMIX
        "Stealth Spinfusor", -- TODO REMIX
        "Jackal",
        "Rhino SMG",
        "Arctic Rhino SMG", -- TODO REMIX
        "SN7 Pistol",
        "Arctic SN7 Pistol", -- TODO REMIX
        "Throwing Knives",
        "BXT1",
        "BXT1A", -- TODO REMIX
        "Phase Rifle",
        "SAP20", -- TODO REMIX
        "Falcon",
        "Accurized Shotgun",
        {class="Light", name="Shocklance"},
    },
    beltItems={
        "Impact Nitron",
        "Explosive Nitron",
        "Compact Nitron", -- TODO REMIX
        "Sticky Grenades",
        "Sticky Grenades XL", -- TODO REMIX
        "Prism Mines",
        "Chaff Grenades",
        "T5 Grenades",
        "Claymore Mines",
        "Motion Mines",
    },
    packs={
        "Thrust Pack",
        -- The Energy pack is the SEN one now
        -- But in GOTY the two were identical
        "Light Energy Pack", -- TODO REMIX
        -- Light Utility pack is being converted
        -- into a 'Lightweight pack'
        "Light Utility Pack", -- TODO REMIX
        "Stealth Pack",
    },
    skins={
        "Pathfinder",
        "Freerunner",
        "Infiltrator",
        "Mercenary",
        "Assassin",
        "Sentinel",
        "Specter",
    },
    properties={
        HealthPool = 800,
        RegenTime = 20,
        Mass = 100,
        RegenRate = 0.1,
        EnergyPool = 100,
        EnergyRechargeRate = 14,
        GroundSpeed = 500,
        AirControlMaxMultiplier = 3.7,
        AirControlMinMultiplier = 1.4,
        VehicleSpeedInheritance = 1,
    },
    armorValueMods={
        -- Pathfinder Armor Upgrades
        RegenTimeBuff = 0.25,
        EnergyBuff = 10,
        HealthRegenRateBuff = 0.25,
        HealthBuff = 100,
        -- MassBuff = -0.1,

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
        -- Safe-ish Fall
        FallDamageReduction = 1.0,
    }
}

local itemDefs = {
    {
        name="Light Spinfusor", 
        changes={
            Damage = 550,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 28,
            ReloadTime = 1.24,
        },
    },
    {
        name="Dueling Spinfusor", 
        changes={
            Damage = 550,
            DirectHitMultiplier = 1.6,
            SpareAmmo = 28,
            ReloadTime = 1.24,
            ExplosiveRadius = 340,
        },
    },
    {
        name="Blinksfusor", 
        changes={
            Damage = 550,
            DirectHitMultiplier = 1.6,
            SpareAmmo = 28,
            ReloadTime = 1.24,
        },
    },
    {
        name="Light Twinfusor", 
        changes={
            Damage = 380,
            ExplosiveRadius = 360,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 36,
            ImpactMomentum = 85000,
            SelfImpactMomentumMultiplier = 0.5,
            SelfImpactExtraZMomentum = 45000,
            ReloadTime = 1.4,
        },
    },
    {
        name="Bolt Launcher", 
        changes={
            Damage = 650,
            DirectHitMultiplier = 1.35,
            SpareAmmo = 28,
        },
    },
    {
        name="Light Assault Rifle", 
        changes={
            Damage = 80,
            ClipAmmo = 24,
            SpareAmmo = 204,
            ReloadTime = 1.53,
            FireInterval = 0.1,
        },
    },
    {
        name="Shotgun", 
        changes={
            Damage = 80,
            ShotgunShotCount = 8,
            ClipAmmo = 6,
            SpareAmmo = 50,
            HitscanRange = 3000,
            Accuracy = 0.85,
            AccuracyLossMax = 0.3,
            AccuracyLossOnShot = 0.0,
            AccuracyCorrectionRate = 0.18,
            ShotgunUseGOTYSpread = true,
        },
    },
    {
        name="Holdout Shotgun", 
        changes={
            Damage = 85,
            ShotgunShotCount = 8,
            ClipAmmo = 5,
            SpareAmmo = 46,
            HitscanRange = 3000,
            Accuracy = 0.85,
            AccuracyLossMax = 0.3,
            AccuracyLossOnShot = 0.0,
            AccuracyCorrectionRate = 0.18,
            ShotgunUseGOTYSpread = true,
        },
    },
    {
        name="Impact Nitron", 
        changes={
            Damage=300,
            ExplosiveRadius=506,
            DirectHitMultiplier=1,
            SpareAmmo=3,
        },
    },
    {
        name="Explosive Nitron", 
        changes={
            Damage=650,
            ExplosiveRadius=396,
            DirectHitMultiplier=1,
            SpareAmmo=3,
        },
    },
    {
        name="Compact Nitron", 
        changes={
            Damage=300,
            ExplosiveRadius=440,
            DirectHitMultiplier=1,
            SpareAmmo=4,
        },
    },
    {
        name="Light Energy Pack", 
        valueMods={
            EnergyRegenRateBuff=0.18
        },
    },
    {
        -- Converted into a 'lightweight pack'
        name="Light Utility Pack", 
        valueMods={
            EnergyBuff=25,
            MassBuff=-0.3
        },
    },
    {
        -- Converted into a 'lightweight pack'
        name="Shocklance", 
        changes={
            Damage = 700,
            HitscanRange = 500,
            ShotEnergyCost = 10,
        },
    },
    {
        name="BXT1", 
        changes={
            Damage = 10, -- Uncharged damage
            BXTChargeMaxDamage = 500,
            BXTChargeTime = 2.5,
            BXTChargeMultCoefficient = 16,
            BXTChargeDivCoefficient = 100,
            ReloadTime = 1.4,
            FireInterval = 1.0,
            ClipAmmo = 5,
            SpareAmmo = 32,
            HitscanRange = 100000,
            MinDamageProportion = 0.45,
            MaxDamageRangeProportion = 0.12,
            MinDamageRangeProportion = 0.24,
            DamageAgainstShrikeMultiplier = 0.1,
        },
    },
    {
        name="BXT1A", 
        changes={
            Damage = 10, -- Uncharged damage
            BXTChargeMaxDamage = 500,
            BXTChargeTime = 2.8,
            BXTChargeMultCoefficient = 16,
            BXTChargeDivCoefficient = 100,
            ReloadTime = 1.4,
            FireInterval = 1.0,
            ClipAmmo = 6,
            SpareAmmo = 34,
            HitscanRange = 100000,
            MinDamageProportion = 0.45,
            MaxDamageRangeProportion = 0.12,
            MinDamageRangeProportion = 0.24,
            DamageAgainstShrikeMultiplier = 0.1,
        },
    },
    {
        name="Phase Rifle", 
        changes={
            Damage = 60, -- Damage with no energy
            PhaseDamagePerEnergy = 5.0,
            PhaseMaxConsumedEnergy = 90.0,
            ReloadTime = 1.4,
            FireInterval = 1.0,
            ClipAmmo = 5,
            SpareAmmo = 32,
            HitscanRange = 100000,
            MinDamageProportion = 0.45,
            MaxDamageRangeProportion = 0.12,
            MinDamageRangeProportion = 0.24,
            DamageAgainstShrikeMultiplier = 0.1,
        },
        valueMods={}
    },
    {
        name="SAP20", 
        changes={
            Damage = 100, -- Damage with no energy
            PhaseDamagePerEnergy = 5.0,
            PhaseMaxConsumedEnergy = 95.0,
            ReloadTime = 1.4,
            FireInterval = 1.0,
            ClipAmmo = 3,
            SpareAmmo = 32,
            HitscanRange = 100000,
            MinDamageProportion = 0.45,
            MaxDamageRangeProportion = 0.12,
            MinDamageRangeProportion = 0.24,
            DamageAgainstShrikeMultiplier = 0.1,
        },
        valueMods={}
    },
    {
        name="Falcon", 
        changes={
            Damage = 65,
            ProjectileInheritance = 0,
            ClipAmmo = 24,
            ReloadTime = 1.53,
            FireInterval = 0.1,
        },
    },
    {
        name="Accurized Shotgun", 
        changes={
            Damage = 70,
            ShotgunShotCount = 8,
            ClipAmmo = 6,
            SpareAmmo = 50,
            HitscanRange = 3000,
            Accuracy = 0.86,
            AccuracyLossMax = 0.3,
            AccuracyLossOnShot = 0.0,
            AccuracyCorrectionRate = 0.18,
            ShotgunUseGOTYSpread = true,
        },
    },
    {
        name="Claymore Mines",
        changes={
            Damage=700,
            DamageAgainstArmorMultiplier=0.50,
            DamageAgainstGeneratorMultiplier=1.0,
            DamageAgainstBeowulfMultiplier=0.50,
            DamageAgainstGravCycleMultiplier=0.50,
            DamageAgainstBaseTurretMultiplier=2.50,
            DamageAgainstBaseSensorMultiplier=2.50,
            DamageAgainstShrikeMultiplier=2.50,
        },
    },
    {
        name="T5 Grenades", 
        changes={
            Damage = 1100,
            ExplosiveRadius = 682,
            SpareAmmo = 2,
        },
    },
    {
        name="Stealth Spinfusor",
        changes={
            Damage = 500,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 28,
        },
    },
    {
        name="Jackal",
        changes={
            Damage = 200,
            ExplosiveRadius = 360,
            StuckDamageMultiplier = 2,
            StuckMomentumMultiplier = 2,
            DirectHitMultiplier = 1.4,
            SpareAmmo = 39,
            FireInterval = 0.35,
        },
    },
    {
        name="Rhino SMG",
        changes={
            Damage = 70,
            ClipAmmo = 30,
            SpareAmmo = 260,
            ReloadTime = 1.53,
            FireInterval = 0.1,
        },
    },
    {
        name="Arctic Rhino SMG",
        changes={
            Damage = 80,
            ClipAmmo = 30,
            SpareAmmo = 260,
            ReloadTime = 1.53,
            FireInterval = 0.11,
        },
    },
    {
        name="SN7 Pistol",
        changes={
            Damage = 170,
            ClipAmmo = 16,
            SpareAmmo = 84,
            ReloadTime = 1.26,
            FireInterval = 0.2,
            HoldToFire = false,
        },
    },
    {
        name="Arctic SN7 Pistol",
        changes={
            Damage = 180,
            ClipAmmo = 14,
            SpareAmmo = 80,
            ReloadTime = 1.26,
            FireInterval = 0.2,
            HoldToFire = false,
        },
    },
    {
        name="Throwing Knives",
        changes={
            Damage = 100,
            DirectHitMultiplier = 3.75,
            ExplosiveRadius = 120,
            ProjectileSpeed = 15000,
            ProjectileLifespan = 1.0,
            ClipAmmo = 6,
            SpareAmmo = 35,
            ReloadTime = 1.26,
            FireInterval = 0.5,
            MinDamageProportion = 1, -- No falloff
            CollisionSize = 50,
        },
    },
    {
        name="Sticky Grenade", 
        changes={
            Damage = 1000,
            ExplosiveRadius = 555,
            StuckDamageMultiplier = 1,
            StuckMomentumMultiplier = 1,
            ProjectileSpeed = 1200,
            SpareAmmo = 4,
        }
    },
    {
        name="Sticky Grenade XL", 
        changes={
            Damage = 800,
            ExplosiveRadius = 660,
            StuckDamageMultiplier = 1,
            StuckMomentumMultiplier = 1,
            ProjectileSpeed = 1200,
            SpareAmmo = 4,
        }
    },
    {
        name="Prism Mines", 
        changes={
            Damage = 800,
            ExplosiveRadius = 583,
            PrismMineTripDistance = 512,
            MineDeployTime=2,
            MineMaxAllowed=3,
            MineCollisionCylinderRadius=300,
            MineCollisionCylinderHeight=100,
            SpareAmmo=3,
        }
    },
    {
        name="Stealth Pack", 
        changes={
            PackSustainedEnergyCost = 5,
        }
    },
}



return {items=itemDefs, class=classDef}