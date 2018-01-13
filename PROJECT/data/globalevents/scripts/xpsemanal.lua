local xp_de_comparacao = XP_DE_COMPARACAO
local diferenca_de_xp = DIFERENCA_DE_XP

function onThink(cid,think,interval,topos)


	if #getPlayersOnline() >= 1 then
		for i = 1,#getPlayersOnline() do
		
			if (getPlayerStorageValue(getPlayersOnline()[i],STORAGEPLAYER) == 0) then
					doPlayerSendTextMessage(getPlayersOnline()[i],18," VOCE NOVATO! AGORA ESTA PARTICIPANDO DO SISTEMA DE RANK XP!")
					setPlayerStorageValue(getPlayersOnline()[i],STORAGEPLAYER,1)
			end
			
			-- contador(getPlayersOnline()[i]) --verifica se zerou o tempo(e joga xpsto zero, e faz as config de base) e se tem player com a xpsto == 0 para reiniciar o sistema
	
			if tonumber(xpdapessoa(getPlayersOnline()[i])) < tonumber(antigaxp(getPlayersOnline()[i])) then
				db.executeQuery("UPDATE players SET xpbase = "..xpdapessoa(getPlayersOnline()[i]).." WHERE id = "..getPlayerGUID(getPlayersOnline()[i]).." ;")
			end
				  
		
			 
			doPlayerSendTextMessage(getPlayersOnline()[i], 27 ,"XP Atual: "..xpdapessoa(getPlayersOnline()[i]).."")      		   		   
		    doPlayerSendTextMessage(getPlayersOnline()[i] , 27 , "XP BASE:  "..antigaxp(getPlayersOnline()[i]).."") 
			
		   	doPlayerSendTextMessage ( getPlayersOnline()[i] , 27 , " Diferenca:   "..xprankdiferencial(getPlayersOnline()[i]).."!!") --pega a diferença e upa pro xprank database ainda	

		
		end
	-- elseif getGlobalStorageValue(STORAGEGLOBAL) < os.time() then
		-- setGlobalStorageValue(STORAGEGLOBAL, os.time() + (TEMPOSEMANAL))
		-- zerar_todos_os_xpsto()
				-- salvaserv()
   
end	
			salvaserv()


 return true 
end

 
