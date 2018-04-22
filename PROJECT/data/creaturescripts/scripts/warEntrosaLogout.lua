

function onLogout(cid)
    if getPlayerStorageValue(cid, 888123) > os.time() then
        doPlayerSendCancel(cid, "Vc n pode logar enquanto esta em war! Espere "..getPlayerStorageValue(cid, 888123) - os.time().." segundos.")
        return false
    end
    return true
end

function onLogin(cid)
		registerCreatureEvent(cid, "entrosaLogin") 

		if getPlayerStorageValue(cid,war_log) > 0 then
		setPlayerStorageValue(cid, war_log , 0)

            remove_player_arena(cid) --soma -1 na area e divulga
			

		end 
    


    return true
end