local utils = {}

-- Whether a file exists
function utils:fileExists(name)
	local f = io.open(name,"r")
	if f ~= nil then io.close(f) return true else return false end
end

-- Converts a list of mods in the form of {ModNameA = ValueA, ModNameB = ValueB}
-- Into the TAMods accepted form of { {ValueMods.ModNameA, ValueA}, {ValueMods.ModNameB, ValueB} }
function utils:valueModsListDefConverter(valueModsList)
    local res = {}
    for modName, modVal in pairs(valueModsList) do
        table.insert(res, {ValueMods[modName], modVal})
    end
    return res
end

-- Log out the given set of properties for the given item
function utils:printItemProps(class, item, propNames)
    for idx, prop in pairs(propNames) do
        local propVal = Items.getProperty(class, item, Items.Properties[prop])
        if (propVal == nil) then
            Logger.debug("||| " .. item .. " | " .. prop .. " = nil")
        else
            Logger.debug("||| " .. item .. " | " .. prop .. " = " .. tostring(propVal))
        end
        
    end
end

-- Log out the given set of properties for the given class
function utils:printClassProps(class, propNames)
    for idx, prop in pairs(propNames) do
        local propVal = Classes.getProperty(class, Classes.Properties[prop])
        if (propVal == nil) then
            Logger.debug("||| " .. class .. " | " .. prop .. " = nil")
        else
            Logger.debug("||| " .. class .. " | " .. prop .. " = " .. tostring(propVal))
        end
        
    end
end

-- Log out the given set of properties for the given vehicle
function utils:printVehicleProps(vehicle, propNames)
    for idx, prop in pairs(propNames) do
        local propVal = Vehicles.getProperty(vehicle, Vehicles.Properties[prop])
        if (propVal == nil) then
            Logger.debug("||| " .. vehicle .. " | " .. prop .. " = nil")
        else
            Logger.debug("||| " .. vehicle .. " | " .. prop .. " = " .. tostring(propVal))
        end
        
    end
end

-- Log out the given set of properties for the given vehicle weapon
function utils:printVehicleWeaponProps(vehicleWeapon, propNames)
    for idx, prop in pairs(propNames) do
        local propVal = VehicleWeapons.getProperty(vehicleWeapon, VehicleWeapons.Properties[prop])
        if (propVal == nil) then
            Logger.debug("||| " .. vehicleWeapon .. " | " .. prop .. " = nil")
        else
            Logger.debug("||| " .. vehicleWeapon .. " | " .. prop .. " = " .. tostring(propVal))
        end
        
    end
end

function utils:printItemValueMods(class, item)
    local vms = Items.getValueMods(class, item)
    for idx, vm in pairs(vms) do
        Logger.debug("||| " .. item .. " | " .. vm[1] .. " = " .. tostring(vm[2]))
    end
end

return utils