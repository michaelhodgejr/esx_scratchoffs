ESX = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

RegisterNetEvent("scratchoffs:view")
AddEventHandler("scratchoffs:view", function()
  ESX.UI.Menu.CloseAll()

  if scratchoffIsAWinner() then
    reward = determineWinningAmount()
    dispenseReward(reward)
    showWonNotification(reward)
  else
    TriggerServerEvent('scratchoffs:dispenseUsedScratchoff')
    showLostNotification()
  end

end)

--[[
 Determines if this scratchoff is a winner.

 Returns
   boolean
]]
function scratchoffIsAWinner()
  math.randomseed(GetGameTimer())
  return (math.random(1, Config.OneInChanceOfWinning) == 1)
end


--[[
 Determines the amount of the winning ticket

 Returns
   integer
]]
function determineWinningAmount()
  math.randomseed(GetGameTimer())
  return math.random(Config.WinningAmountMinimum, Config.WinningAmountMaximum)
end

--[[
 Triggers the server event to add the money to the users bank account

 Params
   amount - integer
 Returns
   void
]]
function dispenseReward(amount)
  TriggerServerEvent('scratchoffs:dispenseReward', amount)
end

--[[
 Shows the winning notification to the player

 Params
   amount - integer
 Returns
   void
]]
function showWonNotification(amount)
  ESX.ShowNotification("~o~Scratchoff Ticket~n~~g~You Won!~n~~s~Congratulations, you won ~g~$" .. amount .. "~s~!")
end

--[[
 Shows the losing notification to the player

 Params
   amount - integer
 Returns
   void
]]
function showLostNotification()
  ESX.ShowNotification("~o~Scratchoff Ticket~n~~r~You Lost!~n~~s~Better luck next time!")
end
