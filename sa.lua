local ReplicatedStorage = game:GetService("ReplicatedStorage")
local remoteEvent = ReplicatedStorage:WaitForChild("FruitRemote")
local fruitName = "Dough" -- Tên trái mà bạn muốn random (ở đây là Dough)

remoteEvent.OnServerEvent:Connect(function(player)
    local randomNum = math.random(1, 100) -- Random từ 1 đến 100
    if randomNum <= 100 then -- 100 tỉ lệ random trái Dough
        remoteEvent:FireClient(player, fruitName)
    end
end)
