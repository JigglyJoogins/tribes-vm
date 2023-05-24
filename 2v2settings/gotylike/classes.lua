local utils = require("gotylike/utils")

local function applyCustomClass(className, class)
    local classDef = class.class
    utils:addClass(className, classDef.ootbClass, classDef.armorClass,
                   classDef.weapons, classDef.beltItems, classDef.packs,
                   classDef.skins)
    Classes.setValueMods(classDef.armorClass, utils:valueModsListDefConverter(classDef.armorValueMods))
    for propName, propVal in pairs(classDef.properties) do
        Classes.setProperty(classDef.armorClass, Classes.Properties[propName], propVal)
    end
end

local function applyClassItemDefs(class)
    for modIdx, modDef in pairs(class.items) do
        local item = {
            class=modDef.class or class.class.ootbClass,
            name=modDef.name
        }   
        -- Apply each property
        if modDef.changes ~= nil then
            for changeProp, changeVal in pairs(modDef.changes) do
                Items.setProperty(item.class, item.name, Items.Properties[changeProp], changeVal)
            end
        end
        -- Apply each valuemod
        if modDef.valueMods ~= nil then
            Items.setValueMods(item.class, item.name, 
                               utils:valueModsListDefConverter(modDef.valueMods))
        end
    end
end

------------------------------

local classNames = {
    "Pathfinder",
    -- "Jumper",
    "Infiltrator",
    "Sentinel",
    "Soldier",
    "Raider",
    "Technician",
    "Juggernaut",
    "Doombringer",
    "Brute",
}

local classes = {}

-- Enable Custom Classes
ServerSettings.CustomClasses.Enabled = true

-- Load class definitions
for idx, className in pairs(classNames) do

    if utils:fileExists(Core.ConfigPath .. "gotylike/definitions/" .. className .. ".lua") then
        classes[className] = require("gotylike/definitions/" .. className)
    else
        Logger.error("Failed to find definition for class " .. className)
    end
end

for className, class in pairs(classes) do
    -- Apply this class's class definition
    applyCustomClass(className, class)

    -- Apply this class's item definitions
    applyClassItemDefs(class)
end