local playerapi = {};
local players = {}
--init
for i,v in pairs(game.Players:GetChildren()) do table.insert(players, v.Name) end
game:GetService("Players").PlayerAdded:Connect(function(player) table.insert(players, player.Name) end)
game:GetService("Players").PlayerRemoving:Connect(function(player) table.remove(players, table.find(players, player.Name)) end)

--modules
function playerapi:getPlayerId(input)
    for i = 1, #players do 
        local v = players[i]
        if v == input then
            return i
        end
    end
end
function playerapi:getPlayerName(input)
    for i = 1, #players do 
        local v = players[i]
        if i == input then 
            return v
        end
    end
end
function playerapi:getPlayers()
    return players
end
function playerapi:getPlayerCount()
    return #players
end
return playerapi;
