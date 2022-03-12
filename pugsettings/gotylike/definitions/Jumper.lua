local classDef = {
    ootbClass="Light",
    armorClass="Jumper",
    weapons={
        "Light Spinfusor",
        "Bolt Launcher",
        "Blinksfusor",
        "Light Twinfusor",
        "Dueling Spinfusor",
        "Light Grenade Launcher",
        "Light Assault Rifle",
        "Shotgun",
        "Holdout Shotgun",
        "Sparrow",
        {class="Medium", name="Long Range Repair Tool"}, -- Dummy tertiary weapon
    },
    beltItems={
        "Impact Nitron",
        "Explosive Nitron",
        "Compact Nitron",
    },
    packs={
        "Thrust Pack",
        -- The Energy pack is the SEN one now
        -- But in GOTY the two were identical
        "Light Energy Pack",
        -- Light Utility pack is being converted
        -- into a 'Lightweight pack'
        "Light Utility Pack",
    },
    skins={
        -- "Pathfinder",
        "Freerunner",
    },
    properties={
        HealthPool = 800,
        EnergyPool = 100,
        EnergyRechargeRate = 14,
        GroundSpeed = 500,
        AirControlMaxMultiplier = 3.7,
        AirControlMinMultiplier = 1.4,
        VehicleSpeedInheritance = 1,
    },
    armorValueMods={
        -- QuickDraw
        QuickDraw = 0.5,
        BeltThrowSpeedBuff = 0.25,
        AcquisitionTimeByEnemyTurretsBuff = 0.5,
        -- Survivalist
        SurvivalistHealth = 0.3,
        SurvivalistEnergy = 0.2,
        -- Pathfinder Armor Upgrades
        RegenTimeBuff = 0.25,
        EnergyBuff = 10,
        HealthRegenRateBuff = 0.25,
        HealthBuff = 100,
        MassBuff = -0.1,
        -- -- Egocentric
        -- Egocentric = 0.35,
        -- Rage
        Rage = true,
        RageEnergyRegen = 0.2,
        RageTime = 15.0,
        RageMassReduction = -0.25,
    }
}

local itemDefs = {
   -- Already set by PTH
}



return {items=itemDefs, class=classDef}