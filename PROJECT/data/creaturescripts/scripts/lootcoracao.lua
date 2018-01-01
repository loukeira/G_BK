function onKill(cid, target, lastHit)
if isPlayer(cid) and isPlayer(target) then

		-- if (getPlayerStorageValue(target, 63638) == 0 )  then
			-- if(getPlayerLevel(target) > 50) then 





				 local config = {

				Kname = getPlayerName(cid),
				Tname = getPlayerName(target),
				Tlevel = getPlayerLevel(target),
				}

				local heart = doPlayerAddItem(cid, 12705, 1)

			
			
doItemSetAttribute(heart, "name", "" ..config.Tname.. " Heart's")
doItemSetAttribute(heart, "description", "Morto no Level "..config.Tlevel.." Pelo Player "..config.Kname..". " .. (getCreatureSkullType(cid) <= SKULL_GREEN and "(Unjustified)" or "(Justified)"))
doPlayerSendTextMessage(cid, 19, "Voce obteve o coracao do Player "..getPlayerName(target).."!")

				setPlayerStorageValue(target,63638,os.time() + (5*1000) )

				-- else
				doPlayerSendTextMessage(cid, 27, "O seu alvo nao e maior que level 50!")
			end
		-- else
		
		doPlayerSendTextMessage(cid, 27, "Voce deve aguardar "..getPlayerStorageValue(target,63638).." segundos para dropar o coracao dele!")
-- end
return true

end

-- end
 -- and getPlayerIp(target) ~= getPlayerIp(cid)