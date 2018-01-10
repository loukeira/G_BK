local xp_de_comparacao = 8002
local globau = 16856
local diferenca_de_xp = 16806

function onThink(cid,think,interval,topos)

              -- vai ficar gritando toda hr a storage
	       -- doPlayerSendTextMessage(getPlayersOnline()[i],22,"Seu valor de storage indiv e:  "..(getPlayerStorageValue(getPlayersOnline()[i], 16739)).." !!! ")
		   -- doPlayerSendTextMessage(getPlayersOnline()[i],22,"Seu valor de storage GERAL e:  "..(getPlayerStorageValue(getPlayersOnline()[i], 16738)).." !!! ")

	       -- fala a xp atual	
	if #getPlayersOnline() >= 1 then
		for i = 1,#getPlayersOnline() do
		     -- if isCreature(getPlayersOnline()[i]) then
			 			 salvaserv1()

			 doPlayerSendTextMessage(getPlayersOnline()[i],18," valor 1 : "..getPlayerStorageValue(getPlayersOnline()[i], xp_de_comparacao).." ! "..getPlayerStorageValue(getPlayersOnline()[i],globau).." ! "..getPlayerStorageValue(getPlayersOnline()[i],diferenca_de_xp).." !!! ")
			 
			 contador(getPlayersOnline()[i])
	
			-- if (getPlayerStorageValue(getPlayersOnline()[i],INDIVIDUALXP) < xpdapessoa(getPlayersOnline()[i])) and getPlayerStorageValue(getPlayersOnline()[i], STORAGEAUX) == -1 then
			      -- setPlayerStorageValue(getPlayersOnline()[i], INDIVIDUALXP, xpdapessoa(getPlayersOnline()[i]))
			      -- setPlayerStorageValue(getPlayersOnline()[i], STORAGEAUX, 0)

				  
			-- end
			 
			doPlayerSendTextMessage(getPlayersOnline()[i], 23 ,"XP Atual: "..xpdapessoa(getPlayersOnline()[i]).."")
		      		   
		   --fala a xp antiga
		   
			
			
		   doPlayerSendTextMessage(getPlayersOnline()[i] , 23 , "XP antigo:  "..getPlayerStorageValue(getPlayersOnline()[i], xp_de_comparacao).."") 
		   		   
		   --vai na lib verificar se ja acabou a semana
		   	   
		   -- doPlayerSendTextMessage( getPlayersOnline()[i],18, "nova "..nova.." , antiga "..getPlayerStorageValue(getPlayersOnline()[i],16739)..", as duas "..nova-getPlayerStorageValue(getPlayersOnline()[i],16739).."")
		   -- fala a diferença de xp
		   
		   setPlayerStorageValue(getPlayersOnline()[i], diferenca_de_xp, xpdapessoa(getPlayersOnline()[i]) - getPlayerStorageValue(getPlayersOnline()[i],xp_de_comparacao) )
		   		   
			doPlayerSendTextMessage ( getPlayersOnline()[i] , 23 , " Diferenca:   "..getPlayerStorageValue(getPlayersOnline()[i], diferenca_de_xp).."  !!"  )		

			doPlayerSendTextMessage ( getPlayersOnline()[i] , 27 , " Diferenca22:   "..xprankdiferencial(getPlayersOnline()[i]).."  !!"  )		
			-- db.executeQuery("UPDATE `players` set `xprank` =  "..getPlayerStorageValue(getPlayersOnline()[i],INDIVIDUALXP).." where `id` = " .. getPlayerGUID(getPlayersOnline()[i]) .. ";")

		   -- end
		
   end
end

 return true 
end

 
