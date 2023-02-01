local RSGCore = exports['rsg-core']:GetCoreObject()

RSGCore.Functions.CreateUseableItem("joint", function(source, item)
    local Player = RSGCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent('rsg-drugeffects:JointAnim', source, item.name)
	TriggerClientEvent("rsg-drugeffects:SetGoldenHealth", source, item.name)
    end    
end)

RSGCore.Functions.CreateUseableItem("opium", function(source, item)
    local Player = RSGCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent('rsg-drugeffects:Opium', source, item.name)
	TriggerClientEvent("rsg-drugeffects:SetGoldenStamina", source, item.name)
    end
end)

RSGCore.Functions.CreateUseableItem("shrooms", function(source, item)
    local Player = RSGCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent('rsg-drugeffects:Mushroom', source, item.name)
	TriggerClientEvent("rsg-drugeffects:SetGoldenDeadeye", source, item.name)
    end
end)

RSGCore.Functions.CreateUseableItem("holy_trinity", function(source, item)
    local Player = RSGCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent('Consumables:client:Drink', source, item.name)
	TriggerClientEvent("rsg-drugeffects:SetGoldenTrinity", source, item.name)
    end
end)





