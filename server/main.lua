ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('scratchoff', function(source)
  local Player = ESX.GetPlayerFromId(source)
  TriggerClientEvent('scratchoffs:view', source)
  Player.removeInventoryItem('scratchoff', 1)
end)

RegisterServerEvent('scratchoffs:dispenseReward')
AddEventHandler('scratchoffs:dispenseReward', function(amount)
  local xPlayer = ESX.GetPlayerFromId(source)
  xPlayer.addAccountMoney('bank', amount)
end)
