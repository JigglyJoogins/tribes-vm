local utils = require("gotylike/utils")

local proj_propsToPrint = {
    "Damage",
    "ExplosiveRadius",
    "DirectHitMultiplier",
    "ImpactMomentum",
    "SelfImpactMomentumMultiplier",
    "SelfImpactExtraZMomentum",
    "ProjectileSpeed",
    "ProjectileMaxSpeed",
    "ProjectileInheritance",
    "CollisionSize",
    "ProjectileLifespan",
    "ProjectileGravity",
    "ProjectileTerminalVelocity",
    "Accuracy",
    "ClipAmmo",
    "SpareAmmo",
    "LowAmmoCutoff",
    "ReloadTime",
    "FireInterval",
    "BulletDamageRange",
    "MinDamageProportion",
    "MaxDamageRangeProportion",
    "MinDamageRangeProportion",
}

local grenade_propsToPrint = {
    "Damage",
    "ExplosiveRadius",
    "DirectHitMultiplier",
    "ImpactMomentum",
    "ProjectileSpeed",
    "ProjectileMaxSpeed",
    "ProjectileInheritance",
    "CollisionSize",
    "ProjectileLifespan",
    "ProjectileGravity",
    "ProjectileTerminalVelocity",
    "Accuracy",
    "ClipAmmo",
    "SpareAmmo",
    "LowAmmoCutoff",
    "ReloadTime",
    "FireInterval",
    "ThrowDelay",
    "ThrowPullPinTime",
    "StuckDamageMultiplier",
    "StuckMomentumMultiplier",
    "FuseTimer",
    "ExplodeOnContact",
    "ExplodeOnFuse",
    "MustBounceBeforeExplode",
    "EnergyDrain",
    "MinDamageProportion",
    "MaxDamageRangeProportion",
    "MinDamageRangeProportion",
}

local mine_propsToPrint = {
    "Damage",
    "ExplosiveRadius",
    "ImpactMomentum",
    "ProjectileSpeed",
    "ProjectileMaxSpeed",
    "ProjectileInheritance",
    "ClipAmmo",
    "SpareAmmo",
    "LowAmmoCutoff",
    "ReloadTime",
    "FireInterval",
    "EnergyDrain",
    "MineDeployTime",
    "MineMaxAllowed",
    "MineCollisionCylinderRadius",
    "MineCollisionCylinderHeight",
    "MinDamageProportion",
    "MaxDamageRangeProportion",
    "MinDamageRangeProportion",
}

local hitscan_propsToPrint = {
    "Damage",
    "Accuracy",
    "AccuracyLossOnShot",
    "AccuracyLossOnJump",
    "AccuracyLossMax",
    "AccuracyCorrectionRate",
    "ClipAmmo",
    "SpareAmmo",
    "LowAmmoCutoff",
    "ReloadTime",
    "FireInterval",
    "HitscanRange",
    "MinDamageProportion",
    "MaxDamageRangeProportion",
    "MinDamageRangeProportion",
    "ShotgunShotCount",
    "ShotgunInnerAccuracy",
}

local pack_propsToPrint = {
    -- "ClipAmmo",
    -- "SpareAmmo",
    "PackSustainedEnergyCost",
    "PackBuffAmount",
    "ShieldPackEnergyCostPerDamagePoint",
    "JammerPackRange",
}

-- utils:printItemProps("Medium", "Spinfusor", proj_propsToPrint)
-- utils:printItemProps("Heavy", "Chain Gun", proj_propsToPrint)
-- utils:printItemProps("Heavy", "Frag Grenades", grenade_propsToPrint)
-- utils:printItemProps("Heavy", "Mines", mine_propsToPrint)
-- utils:printItemProps("Medium", "Sawed Off Shotgun", hitscan_propsToPrint)
-- utils:printItemProps("Heavy", "Regen Pack", pack_propsToPrint)


-- Definitions here are for things which affect many weapons or cross-class weapons
-- Each class's weapons are defined in that class's individual definition
itemChangeDefs = {
    groups = {
        direct_hit_explosives = {
            -- Normal direct hit explosives (to change proj hitbox size)
            -- Light
            {class="Light", name="Light Spinfusor"},
            {class="Light", name="Dueling Spinfusor"},
            {class="Light", name="Stealth Spinfusor"},
            {class="Light", name="Light Twinfusor"},
            {class="Light", name="Blinksfusor"},
            {class="Light", name="Bolt Launcher"},
            -- Medium
            {class="Medium", name="Spinfusor"},
            {class="Medium", name="Twinfusor"},
            {class="Medium", name="Spare Spinfusor"},
            {class="Medium", name="Honorfusor"},
            {class="Medium", name="Thumper"},
            {class="Medium", name="Thumper D"},
            {class="Medium", name="Thumper DX"},
            -- Heavy
            {class="Heavy", name="Spinfusor MKD"},
            {class="Heavy", name="Spinfusor MK-X"},
            {class="Heavy", name="Heavy Spinfusor"},
            {class="Heavy", name="Devastator Spinfusor"},
            {class="Heavy", name="Heavy Twinfusor"},
            {class="Heavy", name="Heavy Bolt Launcher"},
            {class="Heavy", name="Spinfusor Disk"},
        },
        spinfusors = {
            -- Light
            {class="Light", name="Light Spinfusor"},
            {class="Light", name="Dueling Spinfusor"},
            {class="Light", name="Stealth Spinfusor"},
            {class="Light", name="Light Twinfusor"},
            {class="Light", name="Blinksfusor"},
            -- Medium
            {class="Medium", name="Spinfusor"},
            {class="Medium", name="Twinfusor"},
            {class="Medium", name="Spare Spinfusor"},
            {class="Medium", name="Honorfusor"},
            -- Heavy
            {class="Heavy", name="Spinfusor MKD"},
            {class="Heavy", name="Spinfusor MK-X"},
            {class="Heavy", name="Heavy Spinfusor"},
            {class="Heavy", name="Devastator Spinfusor"},
            {class="Heavy", name="Heavy Twinfusor"},
            {class="Heavy", name="Spinfusor Disk"},
        },
        chain = {
            -- For setting hitbox + damage falloff
            -- Falloff is between 4200 and 6000 Unreal Units, and down to 75% dmg
            -- Light
            {class="Light", name="Rhino SMG"},
            {class="Light", name="Arctic Rhino SMG"},
            {class="Light", name="Light Assault Rifle"},
            {class="Light", name="SN7 Pistol"},
            {class="Light", name="Arctic SN7 Pistol"},
            {class="Light", name="Falcon"},
            -- Medium
            {class="Medium", name="Assault Rifle"},
            {class="Medium", name="Gast Rifle"},
            {class="Medium", name="TCN4"},
            {class="Medium", name="TCN4 Rockwind"},
            {class="Medium", name="NJ4 SMG"},
            {class="Medium", name="Desert NJ4 SMG"},
            {class="Medium", name="NJ5 SMG"},
            -- Heavy
            {class="Heavy", name="Chain Gun"},
            {class="Heavy", name="Chain Cannon"},
            {class="Heavy", name="X1 LMG"},
        },
        hitscan_pistols = {
            {class="Light", name="Sparrow"},
            {class="Medium", name="Eagle"},
        },
        shotguns = {
            {class="Light", name="Shotgun"},
            {class="Light", name="Holdout Shotgun"},
            {class="Light", name="Accurized Shotgun"},
            {class="Medium", name="Sawed Off Shotgun"},
            {class="Heavy", name="Auto Shotgun"},
            {class="Heavy", name="The Hammer"},
        },
        explosive_weapon_dmg_banding = {
            -- All explosive weapons that use the common damage banding values
            -- of min damage of 50%, banding range between 50%-90% of damage radius
            -- Light
            {class="Light", name="Light Spinfusor"},
            {class="Light", name="Dueling Spinfusor"},
            {class="Light", name="Stealth Spinfusor"},
            {class="Light", name="Light Twinfusor"},
            {class="Light", name="Blinksfusor"},
            {class="Light", name="Bolt Launcher"},
            {class="Light", name="Light Grenade Launcher"},
            {class="Light", name="Jackal"},
            -- Medium
            {class="Medium", name="Spinfusor"},
            {class="Medium", name="Twinfusor"},
            {class="Medium", name="Spare Spinfusor"},
            {class="Medium", name="Honorfusor"},
            {class="Medium", name="Thumper"},
            {class="Medium", name="Thumper D"},
            {class="Medium", name="Thumper DX"},
            {class="Medium", name="Arx Buster"},
            {class="Medium", name="Dust Devil"},
            {class="Medium", name="Grenade Launcher"},
            {class="Medium", name="Plasma Gun"},
            {class="Medium", name="Cluster Grenade"},
            -- Heavy
            {class="Heavy", name="Fusion Mortar"},
            {class="Heavy", name="Fusion Mortar Deluxe"},
            {class="Heavy", name="MIRV Launcher"},
            {class="Heavy", name="Spinfusor MKD"},
            {class="Heavy", name="Spinfusor MK-X"},
            {class="Heavy", name="Spinfusor Disk"},
            {class="Heavy", name="Heavy Spinfusor"},
            {class="Heavy", name="Devastator Spinfusor"},
            {class="Heavy", name="Heavy Twinfusor"},
            {class="Heavy", name="Heavy Bolt Launcher"},
            {class="Heavy", name="Saber Launcher"},
            {class="Heavy", name="Titan Launcher"},
            {class="Heavy", name="Plasma Cannon"},
        },
        grenade_dmg_banding = {
            -- All explosive grenades that use the common damage banding values
            -- of min damage of 30%, banding range between 50%-90% of damage radius
            -- Light
            {class="Light", name="Impact Nitron"},
            {class="Light", name="Explosive Nitron"},
            {class="Light", name="Compact Nitron"},
            {class="Light", name="Sticky Grenades"},
            {class="Light", name="Sticky Grenade XL"},
            {class="Light", name="Sticky Grenade XL"},
            {class="Light", name="Chaff Grenade"},
            {class="Light", name="T5 Grenade"},
            {class="Medium", name="Frag Grenade XL"},
            {class="Medium", name="Short-Fuse Frag Grenade"},
            {class="Medium", name="AP Grenade"},
            {class="Medium", name="Proximity Grenade"},
            {class="Medium", name="EMP Grenade"},
            {class="Medium", name="EMP XL Grenade"},
            {class="Medium", name="Blackout Grenade"},
            {class="Medium", name="TCNG"},
            {class="Medium", name="TCNG Quickfuse"},
            {class="Heavy", name="Heavy AP Grenade"},
            {class="Heavy", name="Heavy AP-XL"},
            {class="Heavy", name="Heavy AP-XL"},
            {class="Heavy", name="Frag Grenade"},
            {class="Heavy", name="Light Sticky Grenade"},
        },
        mines = {
            {class="Light", name="Prism Mines"},
            {class="Light", name="Claymore Mines"},
            {class="Light", name="Motion Mines"},
            {class="Medium", name="Motion Sensor"},
            {class="Heavy", name="Mines"},
        },
    },
    mods = {
        ---------------------
        -- GROUPS
        ---------------------
        {
            group="direct_hit_explosives", 
            changes={
                -- Same as GOTY, smaller than OOTB
                CollisionSize = 10,
            }
        },
        {
            group="explosive_weapon_dmg_banding", 
            changes={
                -- GOTY damage banding
                MinDamageProportion = 0.5,
                MaxDamageRangeProportion = 0.5,
                MinDamageRangeProportion = 0.9,
                SelfImpactMomentumMultiplier = 1.2,
                SelfImpactExtraZMomentum = 90000,
                DamageAgainstShrikeMultiplier = 3,
                DamageAgainstGravCycleMultiplier = 1.2,
                DamageAgainstBeowulfMultiplier = 1.2,
            }
        },
        {
            group="grenade_dmg_banding", 
            changes={
                -- GOTY damage banding
                MinDamageProportion = 0.3,
                MaxDamageRangeProportion = 0.5,
                MinDamageRangeProportion = 0.9,
                CollisionSize = 42,
                DamageAgainstShrikeMultiplier = 0.25,
                DamageAgainstGravCycleMultiplier = 1.2,
                DamageAgainstBeowulfMultiplier = 1.2,
                SelfImpactExtraZMomentum = 90000,
            }
        },
        {
            group="chain", 
            changes={
                -- Accuracy = 0.98,
                Accuracy = 1.0,
                AccuracyLossOnShot = 0,
                AccuracyLossMax = 0,
                AccuracyCorrectionRate = 0,
                CollisionSize = 25,
                ProjectileLifespan = 1.0,
                -- GOTY damage falloff
                MinDamageProportion = 0.75,
                MaxDamageRangeProportion = 0.75,
                MinDamageRangeProportion = 1,
                DamageAgainstShrikeMultiplier = 0.65,
                DamageAgainstGravCycleMultiplier = 0,
                DamageAgainstBeowulfMultiplier = 0,
            }
        },
        {
            group="shotguns", 
            changes={
                Accuracy = 1.0,
                AccuracyLossOnShot = 0,
                AccuracyLossMax = 0,
                AccuracyCorrectionRate = 0,
                -- GOTY falloff
                MinDamageProportion = 0.3,
                MaxDamageRangeProportion = 0.5,
                MinDamageRangeProportion = 0.9,
                DamageAgainstShrikeMultiplier = 0.65,
                DamageAgainstGravCycleMultiplier = 0,
                DamageAgainstBeowulfMultiplier = 0,
            }
        },
        {
            group="hitscan_pistols",
            changes={
                HitscanRange=7500,
                MinDamageProportion = 0.50,
                MaxDamageRangeProportion = 0.4,
                MinDamageRangeProportion = 0.95,
                DamageAgainstShrikeMultiplier = 0.65,
                DamageAgainstGravCycleMultiplier = 0,
                DamageAgainstBeowulfMultiplier = 0,
                Accuracy = 1.0,
                AccuracyLossOnShot = 0.0,
                AccuracyLossMax = 0.0,
                AccuracyCorrectionRate = 0.0,
                AccuracyLossOnJump = 0.0,
            }
        },
        {
            group="mines",
            changes={

            }
        },
        ---------------------
        -- CROSS-CLASS
        ---------------------
        {
            class="Light", -- Will apply across classes 
            name="Melee", 
            changes={
                Damage = 900,
            },
        },
        

        ---------------------
        -- PERKS
        ---------------------
        {
            class="Light", -- Will apply across classes
            name="Bounty Hunter",
            valueMods={
                -- This doesn't do anything because credits don't exist...
            }
        },
        {
            class="Light", -- Will apply across classes
            name="Close Combat",
            valueMods={
                MeleeDamageReduction = 0.6,
                BackstabMeleeBuff = 1,
            }
        },
        {
            class="Light", -- Will apply across classes
            name="Determination",
            valueMods={
                Determination = true,
            }
        },
        {
            class="Light", -- Will apply across classes
            name="Egocentric",
            valueMods={
                SelfDamageReduction = 0.35,
                IgnoreGrenadeEffectsOnSelf = true,
            }
        },
        {
            class="Light", -- Will apply across classes
            name="Lightweight",
            valueMods={
                --MassBuff = -0.3,
                --RegenTimeBuff = -2.0
            }
        },
        {
            class="Light", -- Will apply across classes
            name="Looter",
            valueMods={
                AmmoPickupBuff = 1.0,
                BeltPickupBuff = 1,
            }
        },
        {
            class="Light", -- Will apply across classes
            name="Mechanic",
            valueMods={
                RepairToolDamagesEnemyObjectives = true,
                RepairRateBuff = 0.2,
                VehiclePassengerDamageReductionBuff = 0.25,
            }
        },
        {
            class="Light", -- Will apply across classes
            name="Pilot",
            valueMods={
                VehicleHealthBuff = 0.2,
                EjectionSeat = true,
            }
        },
        {
            class="Light", -- Will apply across classes
            name="Potential Energy",
            valueMods={
                PotentialEnergy = true,
                PotentialEnergyDamageTransferBuff = 0.06,
                PotentialEnergyOnFallDamage = true,
            }
        },
        {
            class="Light", -- Will apply across classes
            name="Quick Draw",
            valueMods={
                QuickDraw = 0.5,
                QuickDrawBelt = 0.2,
            }
        },
        {
            class="Light", -- Will apply across classes
            name="Rage",
            valueMods={
                Rage = true,
                RageTime = 13,
                RageEnergyRegen = 0.2,
                RageMassChange = -0.2,
                RageHealthRestoration = 0.5,
            }
        },
        {
            class="Light", -- Will apply across classes
            name="Reach",
            valueMods={
                Reach = true,
                ReachTier = 3,
                ReachOnPickups = true,
            }
        },
        {
            class="Light", -- Will apply across classes
            name="Safe Fall",
            valueMods={
                FallDamageReduction = 1.0,
                RunoverDamageReduction = 1.0,
            }
        },
        {
            class="Light", -- Will apply across classes
            name="Safety Third",
            valueMods={
                ExtraBeltAmmo = 1,
                BeltDamageRadiusBuff = 0.1,
                ExtraMines = 1,
            }
        },
        {
            class="Light", -- Will apply across classes
            name="Sonic Punch",
            valueMods={
                SonicPunch = true,
                SonicPunchRange = 315,
                SonicPunchKnockback = 750,
                SonicPunchFlagDrop = true,
            }
        },
        {
            class="Light", -- Will apply across classes
            name="Stealthy",
            valueMods={
                Stealthy = 0.9,
                TurretTargetAcquisitionBuff = 0.3,
            }
        },
        {
            class="Light", -- Will apply across classes
            -- aka Ultra Capacitor I
            name="Super Capacitor",
            valueMods={
                EnergyBuff = 10,
            }
        },
        {
            class="Light", -- Will apply across classes
            name="Super Heavy",
            valueMods={
                MassBuff = 0.8,
                SuperHeavy = true,
            }
        },
        {
            class="Light", -- Will apply across classes
            name="Survivalist",
            valueMods={
                SurvivalistHealth = 0.2,
                SurvivalistEnergy = 0.4,
            }
        },
        {
            class="Light", -- Will apply across classes
            -- aka Ultra Capacitor II
            name="Ultra Capacitor",
            valueMods={
                EnergyBuff = 10,
            }
        },
        {
            class="Light", -- Will apply across classes
            name="Wheel Deal",
            valueMods={
                VehicleCostReduction = 0.3,
                VehicleEnergyBuff = 0.25,
            }
        },
    },
}

for modIdx, modDef in pairs(itemChangeDefs.mods) do
    -- Find item/s to apply on
    local itemsToApplyTo = {}
    if modDef.group ~= nil then
        for gpIdx, item in pairs(itemChangeDefs.groups[modDef.group]) do
            table.insert(itemsToApplyTo, item)
        end
    else
        table.insert(itemsToApplyTo, {class=modDef.class, name=modDef.name})
    end

    -- Apply each property
    if modDef.changes ~= nil then
        for changeProp, changeVal in pairs(modDef.changes) do
            for itemIdx, item in pairs(itemsToApplyTo) do
                Items.setProperty(item.class, item.name, Items.Properties[changeProp], changeVal)
            end
        end
    end

    -- Apply each valuemod
    if modDef.valueMods ~= nil then
        for itemIdx, item in pairs(itemsToApplyTo) do
            Items.setValueMods(item.class, item.name, utils:valueModsListDefConverter(modDef.valueMods))
        end
    end

end