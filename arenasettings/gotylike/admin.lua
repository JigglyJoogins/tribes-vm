local commands = {
    {
        name      = "NextMap",
        arguments = {
            {"MapId", Admin.Command.ArgumentType.Int},
        },
        func      = function (player, role, MapId)
            if Admin.Game.NextMap(MapId) then
                Admin.SendConsoleMessageToPlayer(player, "Set next map to " .. MapId)     
                Admin.SendConsoleMessageToAllPlayers(player .. " set next map id to " .. MapId)
            else
                Admin.SendConsoleMessageToPlayer(player, "Failed to set next map to " .. MapId)
            end
            
        end,
    },
    {
        name      = "NextMapName",
        arguments = {
            {"MapName", Admin.Command.ArgumentType.String},
        },
        func      = function (player, role, MapName)
            if Admin.Game.NextMapByFilename(MapName) then
                Admin.SendConsoleMessageToPlayer(player, "Set next map to " .. MapName)
                Admin.SendConsoleMessageToAllPlayers(player .. " set next map name to " .. MapId)
            else
                Admin.SendConsoleMessageToPlayer(player, "Failed to set next map to " .. MapName)
            end
            
        end,
    },
    {
        name      = "StartMap",
        arguments = {},
        func      = function (player, role)
            Admin.Game.StartMap()
            Admin.SendConsoleMessageToPlayer(player, "Map started")
            Admin.SendConsoleMessageToAllPlayers("Map started by " .. player)
        end,
    },
    {
        name      = "EndMap",
        arguments = {},
        func      = function (player, role)
            Admin.Game.EndMap()
            Admin.SendConsoleMessageToPlayer(player, "Map ended")
            Admin.SendConsoleMessageToAllPlayers("Map ended by " .. player)
        end,
    },
    {
        name      = "sm",
        arguments = {},
        func      = function (player, role)
            Admin.Game.StartMap()
            Admin.SendConsoleMessageToPlayer(player, "Map started")
            Admin.SendConsoleMessageToAllPlayers("Map started by " .. player)
        end,
    },
    {
        name      = "em",
        arguments = {},
        func      = function (player, role)
            Admin.Game.EndMap()
            Admin.SendConsoleMessageToPlayer(player, "Map ended")
            Admin.SendConsoleMessageToAllPlayers("Map ended by " .. player)
        end,
    },
    {
        name      = "help",
        arguments = {},
        func      = function (player, role)
            Admin.SendConsoleMessageToPlayer(player, "Use '/srvcmd sm' to start maps.")
            Admin.SendConsoleMessageToPlayer(player, "Use '/srvcmd em' to end the map.")
        end,
    },
}

function doSetupRoles(roles)
    for cmdIdx, command in pairs(commands) do
        Admin.Command.define(command.name, command.arguments, command.func)
    end
    -------------- With Login --------------
    for roleIdx, role in pairs(roles) do
        Admin.Roles.add(role.name, role.password, role.canLua)
        
        for cmdIdx, cmdName in pairs(role.commands) do
            Admin.Roles.addAllowedCommand(role.name, cmdName)
        end
    end
end

function doSetupRoles(roles, loginlessRoles)
    for cmdIdx, command in pairs(commands) do
        Admin.Command.define(command.name, command.arguments, command.func)
    end

    -------------- With Login --------------
    for roleIdx, role in pairs(roles) do
        Admin.Roles.add(role.name, role.password, role.canLua)

        for cmdIdx, cmdName in pairs(role.commands) do
            Admin.Roles.addAllowedCommand(role.name, cmdName)
        end
    end

    -------------- Without Login --------------
    for roleIdx, role in pairs(loginlessRoles) do
        Admin.Roles.addLoginlessRole(role.name, role.canLua)

        for cmdIdx, cmdName in pairs(role.commands) do
            Admin.Roles.addAllowedCommand(role.name, cmdName)
        end
    end
end