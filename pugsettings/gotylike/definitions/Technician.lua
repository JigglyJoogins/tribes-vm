local classDef = {
    ootbClass="Medium",
    armorClass="Technician",
    weapons={
        "Thumper",
        "TCN4",
        "TCN4 Rockwind",
        "Flak Cannon",
        "Improved Repair Tool",
        "Sawed Off Shotgun",
        {class="Light", name="Shocklance"},
        {class="Light", name="Sparrow"},
        {class="Medium", name="Long Range Repair Tool"}, -- Dummy tertiary weapon
    },
    beltItems={
        "TCNG",
        "TCNG Quickfuse",
        "Motion Sensor",
    },
    packs={
        "Light Turret",
        "EXR Turret",
    },
    skins={
        "Technician",
        "Specialist",
    },
    properties={
        HealthPool = 1200,
        RegenTime = 20,
        Mass = 100,
        RegenRate = 0.1,
        VehicleSpeedInheritance = 1,
    },
    armorValueMods={
        -- Technician Armor Upgrades
        RegenTimeBuff = 0.25,
        HealthBuff = 100,
        HealthRegenRateBuff = 0.25,
        EnergyBuff = 10,
        ExtraDeployables = 1,
    },
}

local itemDefs = {
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
            Accuracy = 1.0,
            AccuracyLossOnShot = 0.0,
            AccuracyLossMax = 0.0,
            AccuracyCorrectionRate = 0.0,
            AccuracyLossOnJump = 0.0,
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