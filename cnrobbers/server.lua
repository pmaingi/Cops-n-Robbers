
--[[
  Cops and Robbers Server Dependencies
  Created by Michael Harris (mike@harrisonline.us)
  05/11/2019
  
  This file contains all information that will be stored, used, and
  manipulated by any CNR scripts in the gamemode. For example, a
  player's level will be stored in this file and then retrieved using
  an export; Rather than making individual SQL queries each time.
  
  No one may edit, redistribute, or otherwise use this script.
--]]

local zone = {
  timer  = 300,      -- Time in minutes between zone changes
  count  = 4,        -- Number of zones to use
  active = 1,        -- The currently active zone
  pick   = 18000000, -- The next time to pick a zone
}
local unique = {}
local wanted = {}

function CurrentZone()
  return (zone.active)
end

function ZoneNotification(i, t, s, m)
  TriggerClientEvent('cnr:chat_notify', (-1), i, t, s, m)
end

--- EXPORT: GetUniqueId()
-- Returns the player's Unique ID
-- @return The player's UID or nil
function GetUniqueId(ply)
  print("DEBUG - GetUniqueId("..tostring(ply)..") = "..tostring(unique[ply]))
  return unique[ply]
end

AddEventHandler('cnr:unique_id', function(ply, uid)
  print("DEBUG - unique["..tostring(ply).."] = "..tostring(uid))
  unique[ply] = uid
end)

--- CheckIfWanted()
-- Checks if the player is wanted via SQL and then adds them to the table
-- if they are wanted, otherwise, does nothing
function CheckIfWanted(ply)
  local uid = GetUniqueId(ply)
  
  if uid then
    exports['ghmattimysql']:scalar(
      "SELECT wanted FROM players WHERE idUnique = @uid",
      {['uid'] = uid},
      function(wp)
        -- If player being checked is wanted, send update for that player
        if not wp then 
          print("^1[CNR ERROR] ^7SQL gave no response for wanted level query.")
          return
        end
        if wp > 0 then
          wanted[ply] = wp
          TriggerClientEvent('cnr:cl_wanted_client', (-1), ply, wp)
        end
      end
    )
  else
    print("^1[CNR ERROR] ^7Unique ID was invalid ("..tostring(uid)..").")
  end
end

-- When a client has loaded in the game, send them their active zone
-- Also check if they're wanted, and then update the wanted table
RegisterServerEvent('cnr:client_loaded')
AddEventHandler('cnr:client_loaded', function()
  local ply = source
  TriggerClientEvent('cnr:active_zone', ply, zone.active)
  TriggerClientEvent('cnr:cl_wanted_list', (-1), wanted)
  Citizen.Wait(100)
  CheckIfWanted(ply)
end)

-- Received by a client whose wanted points has changed
-- Finished by sending all connected players the client's updated WP
RegisterServerEvent('cnr:wanted_points')
AddEventHandler('cnr:wanted_points', function(points)
  local ply = source
  wanted[ply] = points
  TriggerClientEvent('cnr:cl_wanted_client', (-1), ply, wanted[ply])
end)

-- Performs table optimization/cleanup when a player drops
-- Sends the new table to all players when finished if affected
AddEventHandler('playerDropped', function(rsn)
  local ply = source
  if wanted[ply] then
    wanted[ply] = nil
    TriggerClientEvent('cnr:cl_wanted_list', (-1), wanted[ply])
  end
  print(
    "[CNR "..(os.date("%H:%M:%I", os.time())).."] ^1"..
    GetPlayerName(ply).." ("..ply..") disconnected.^7"
  )
end)




--- ZoneChange()
-- Handles changing over the zone
function ZoneChange()
  local newZone = math.random(zone.count)
  while newZone == zone.active do 
    newZone = math.random(zone.count)
    print("DEBUG - Active Zone ["..zone.active.."] New Zone ["..newZone.."]")
    Citizen.Wait(1)
  end
  local dt = os.date("%H:%M", os.time())
  local n  = 300
  print("[CNR "..dt.."] Zone "..(newZone).." will unlock in 5 minutes.")
  while n > 30 do 
    if n % 60 == 0 then
      local mins = (n/60).." minutes"
      if n/60 == 1 then mins = "1 minute"
      end
      TriggerClientEvent('chat:addMessage', (-1), 
        {args = {"^1The active zone is changing in ^3"..mins.."^1!"}}
      )
      ZoneNotification("CHAR_SOCIAL_CLUB",
        "Zone Change", "~r~"..mins, 
        "The active zone is changing!"
      )
    end
    n = n - 1
    Wait(1000)
  end
  
  Citizen.Wait(20000)
  
  for i = 0, 9 do 
    TriggerClientEvent('chat:addMessage', (-1), 
      {args = {"^1Zone ^3#"..newZone.." ^1activates in ^3"..(10-i).." Second(s)^1!!"}}
    )
    Citizen.Wait(1000)
  end
  
  dt = os.date("%H:%M", os.time())
  print("[CNR "..dt.."] Zone "..(zone.active).." is now active.")
  zone.active = newZone
  TriggerClientEvent('chat:addMessage', (-1), 
    {args = {"^2Zone ^7#"..newZone.." ^2is now the active Zone! (^7/zones^2)"}}
  )
  ZoneNotification("CHAR_SOCIAL_CLUB",
    "Zone Change", "~g~New Zone Active", 
    "Zone #"..newZone.." is active."
  )
end

Citizen.CreateThread(function()
  Citizen.Wait(1000)
  while true do 
    if GetGameTimer() > zone.pick then
      zone.pick = GetGameTimer() + (zone.timer * 60 * 1000)
      Citizen.CreateThread(ZoneChange)
    end
    Citizen.Wait(1000)
  end
end)