

-- function onLogout(cid)
--     if getPlayerStorageValue(cid, 888123) > os.time() then
--         doPlayerSendCancel(cid, "Vc n pode logar enquanto esta em war! Espere "..getPlayerStorageValue(cid, 888123) - os.time().." segundos.")
--         return false
--     end
--     return true
-- end


function onLogin(cid)
		registerCreatureEvent(cid, "entrosaLogout_carlin") 
		registerCreatureEvent(cid, "kill_carlin")
		registerCreatureEvent(cid, "verificador_carlin")
    return true
end

function onLogout(cid)

		if getPlayerStorageValue(cid,war_carlin_log) > 0 then
		setPlayerStorageValue(cid, war_carlin_log , 0)

            remove_player_arena(cid) --soma -1 na area e divulga		

		end 

    return true
end


function onKill(cid,target)

if isInArea(getThingPos(cid), area.from1, area.to1) or  isInArea(getThingPos(cid), area.from2, area.to2) or isInArea(getThingPos(cid), area.from3, area.to3) or isInArea(getThingPos(cid), area.from4, area.to4) or isInArea(getThingPos(cid), area.from5, area.to5) or isInArea(getThingPos(cid), area.from6, area.to6) and isInArea(getThingPos(target), area.from1, area.to1) or  isInArea(getThingPos(target), area.from2, area.to2) or isInArea(getThingPos(target), area.from3, area.to3) or isInArea(getThingPos(target), area.from4, area.to4) or isInArea(getThingPos(target), area.from5, area.to5) or isInArea(getThingPos(target), area.from6, area.to6) then  

	contador_carlin_kill(cid)
   
end
                
return true
end


function onThink(cid, interval)
if(not isCreature(cid)) then return true end
	
if getGlobalStorageValue(carlin_power) == 0 then return true end

if tostring(getPlayerName(cid)) == "Account Manager" then return true end

if getPlayerAccountId(cid) == 1 or getPlayerAccountId(cid) ==18 then return true end

if isPlayer(cid) then

if getGlobalStorageValue(carlin_power) == 1 then
local tempo_auxiliar_1 = 529032

									if getPlayerStorageValue(cid,tempo_auxiliar_1) <= os.time() then
									setPlayerStorageValue(cid, tempo_auxiliar_1 , os.time() + 2)





terminou_carlin(cid)





										else
										 return false
											end

end
	end

	return true
end