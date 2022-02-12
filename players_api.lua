--vars
players = {}

--init
for i,v in pairs(game.Players:GetChildren()) do
    table.insert(players, v.Name)
end

--functions
game:GetService("Players").PlayerAdded:Connect(function(player)
    print("player joined ".. player.Name)
    table.insert(players, player.Name)
end)
game:GetService("Players").PlayerRemoving:Connect(function(player)
	print("player left ".. player.Name)
    table.remove(players, table.find(players, player.Name))
end)

--modules
function getPlayerId(input)
    for i = 1, #players do 
        local v = players[i]
        if v == input then
            return i
        end
    end
end
function getPlayerName(input)
    for i = 1, #players do 
        local v = players[i]
        if i == input then 
            return v
        end
    end
end
function getPlayers()
    return players
end
function getPlayerCount()
    count = 0
    for i = 1, #players do 
        count = i 
    end
    return count
end