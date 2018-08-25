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

  if Config.GiveUsedScratchoffAfterUse then
    xPlayer.addInventoryItem('scratchoff_used', 1)
  end
end)

RegisterServerEvent('scratchoffs:dispenseUsedScratchoff')
AddEventHandler('scratchoffs:dispenseUsedScratchoff', function()
  local xPlayer = ESX.GetPlayerFromId(source)
  
  if Config.GiveUsedScratchoffAfterUse then
    xPlayer.addInventoryItem('scratchoff_used', 1)
  end
end)
