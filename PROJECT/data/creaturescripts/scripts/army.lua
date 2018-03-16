function onLogin(cid)

    local temporary_level = getPlayerStorageValue(cid, ARMY_LEVEL) 
    local temporary_exp = getPlayerStorageValue(cid, ARMY_EXPERIENCE)
	
	
	-- if valor_da_patente(cid) == 5 then
	-- db.executeQuery("UPDATE `players` SET `army_level` = 0  WHERE `id` = " .. getPlayerGUID(cid) .. ";")
	-- doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "O sistema de patente foi reiniciado!")
	-- db.executeQuery("UPDATE `players` SET `reiniciar_patente` = 10  WHERE `id` = " .. getPlayerGUID(cid) .. ";")	
	-- 	return true
	-- end
 -- db.executeQuery("UPDATE `players` SET `army_level` = 5 WHERE id = "..getPlayerGUID(cid).." ;")




    if (temporary_level < #ARMY) then
        if (tonumber(temporary_exp) == -1) or (tonumber(temporary_level)  == -1) then
            setPlayerStorageValue(cid, ARMY_LEVEL, 1)
            setPlayerStorageValue(cid, ARMY_EXPERIENCE, 0)
            db.executeQuery("UPDATE `players` SET `army_level` = 1  WHERE `id` = "..getPlayerGUID(cid).." ;")

        end
    end     
    return true
end
    

function onKill(cid, target)
if isPlayer(cid) and isPlayer(target) then

-- if getPlayerIp(target) == getPlayerIp(cid) then return true end

local temporary_level = getPlayerStorageValue(cid, ARMY_LEVEL) 
local temporary_exp = getPlayerStorageValue(cid, ARMY_EXPERIENCE)
        local valor = retornar_army_max()
         if (valor == #ARMY) then

               if valor_do_army(cid) == 20 then 
                      if getPlayerStorageValue(cid,ARMY_EXPERIENCE) < tonumber(ARMY[temporary_level][2]) then
                         setPlayerStorageValue(cid, ARMY_EXPERIENCE, (temporary_exp + ARMY[getPlayerStorageValue(cid, ARMY_LEVEL)][1]))
                         doPlayerSendTextMessage(cid, 18, "Voce matou  "..getCreatureName(target).." e ganhou "..ARMY[getPlayerStorageValue(cid, ARMY_LEVEL)][1].." faltando entao "..(ARMY[getPlayerStorageValue(cid, ARMY_LEVEL)][2] - getPlayerStorageValue(cid, ARMY_EXPERIENCE)).." army points para chegar ao limite do seu nivel! (lembrando que ja existe alguem CHALLENGER, nao sendo possivel ter 2 ou + CHALLENGERS!)")
                         doSendMagicEffect(getCreaturePosition(cid), 13)
                        else
                            doPlayerSendCancel(cid,  "Voce ja chegou ao limite de army points da sua patente! E ja existe alguem CHALLENGER!")
                        end
                        return true
                    end

          end


    if (temporary_level < #ARMY) then
        if (getPlayerLevel(target) >= getPlayerLevel(cid)) and not getTileInfo(getCreaturePosition(cid)).hardcore then
            if ((tonumber(temporary_exp) + tonumber(ARMY[temporary_level][1])) >= tonumber(ARMY[temporary_level][2])) then
			





                



                doPlayerAddMoney(cid, ARMY[temporary_level][4]) --lugar q arruma o premio
				
                setPlayerStorageValue(cid, ARMY_LEVEL, temporary_level + 1)
                db.query("UPDATE `players` SET `army_level` = `army_level`+1  WHERE `id` = " .. getPlayerGUID(cid) .. ";")
                setPlayerStorageValue(cid, ARMY_EXPERIENCE, temporary_exp - tonumber(ARMY[temporary_level][2]) > 0 or 0)
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "You has been gained a new patent: "..ARMY[getPlayerStorageValue(cid, ARMY_LEVEL)][3]..".")
                doSendMagicEffect(getCreaturePosition(cid), 27)

                                if (getPlayerStorageValue(cid, ARMY_LEVEL) >= #ARMY) then


                				
                                    doPlayerAddMoney(cid, ARMY[temporary_level][4]) --lugar que arruma o premio				
                                    setPlayerStorageValue(cid, ARMY_EXPERIENCE, 0)
                                    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "You receive the best patent, congratulations "..ARMY[#ARMY][3]..".")
                                    doSendMagicEffect(getCreaturePosition(cid), 27)


                                end





            return true
            end
            setPlayerStorageValue(cid, ARMY_EXPERIENCE, (temporary_exp + ARMY[getPlayerStorageValue(cid, ARMY_LEVEL)][1]))
            doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "Voce matou  "..getCreatureName(target).." e ganhou "..ARMY[getPlayerStorageValue(cid, ARMY_LEVEL)][1].." faltando entao "..(ARMY[getPlayerStorageValue(cid, ARMY_LEVEL)][2] - getPlayerStorageValue(cid, ARMY_EXPERIENCE)).." army points para avancar de nivel!")
            doSendMagicEffect(getCreaturePosition(cid), 13)
        end
    end
end
local temporary_level, temporary_exp = nil, nil
return true
end

function getPlayerFrags(cid)
    local time = os.time()
    local times = {today = (time - 86400), week = (time - (7 * 86400))}
 
    local contents, result = {day = {}, week = {}, month = {}}, db.getResult("SELECT `pd`.`date`, `pd`.`level`, `p`.`name` FROM `player_killers` pk LEFT JOIN `killers` k ON `pk`.`kill_id` = `k`.`id` LEFT JOIN `player_deaths` pd ON `k`.`death_id` = `pd`.`id` LEFT JOIN `players` p ON `pd`.`player_id` = `p`.`id` WHERE `pk`.`player_id` = " .. getPlayerGUID(cid) .. " AND `k`.`unjustified` = 1 AND `pd`.`date` >= " .. (time - (30 * 86400)) .. " ORDER BY `pd`.`date` DESC")
    if(result:getID() ~= -1) then
        repeat
            local content = {date = result:getDataInt("date")}
            if(content.date > times.today) then
                table.insert(contents.day, content)
            elseif(content.date > times.week) then
                table.insert(contents.week, content)
            else
                table.insert(contents.month, content)
            end
        until not result:next()
        result:free()
    end
 
    local size = {
        day = table.maxn(contents.day),
        week = table.maxn(contents.week),
        month = table.maxn(contents.month)
    } 
    return size.day + size.week + size.month
end 
  

-- function onLook(cid, thing, position, lookDistance)
-- -- inicio
 
		
       
	  

-- -- fim
    -- if isPlayer(thing.uid) and thing.uid ~= cid then
        -- local temporary_level = getPlayerStorageValue(thing.uid, ARMY_LEVEL)
        -- if temporary_level >= 1 then
        -- doPlayerSetSpecialDescription(thing.uid, "[Frags: "..getPlayerFrags(thing.uid).."]. "..(getPlayerSex(thing.uid) == 0 and "She" or "He").." is "..ARMY[getPlayerStorageValue(thing.uid, ARMY_LEVEL)][3].." and have "..getPlayerStorageValue(thing.uid, ARMY_EXPERIENCE).." of "..ARMY[getPlayerStorageValue(thing.uid, ARMY_LEVEL)][2].." army points.")
        -- else
        -- doPlayerSetSpecialDescription(thing.uid, "[Frags: "..getPlayerFrags(thing.uid).."] No have army points.")
        -- end
        -- local temporary_level = nil
					

		
        -- return true
    -- elseif thing.uid == cid then
        -- local temporary_level = getPlayerStorageValue(cid, ARMY_LEVEL)
        -- if temporary_level >= 1 then
        -- doPlayerSetSpecialDescription(cid, "[Frags: "..getPlayerFrags(cid).."]. You are "..ARMY[getPlayerStorageValue(cid, ARMY_LEVEL)][3].." and have "..getPlayerStorageValue(cid, ARMY_EXPERIENCE).." of "..ARMY[getPlayerStorageValue(cid, ARMY_LEVEL)][2].." army points.")
        -- else
        -- doPlayerSetSpecialDescription(cid, "[Frags: "..getPlayerFrags(cid).."] You no have army points.")
        -- end
		
        -- local temporary_level = nil      
        -- local string = 'You see yourself.'
        -- if getPlayerFlagValue(cid, PLAYERFLAG_SHOWGROUPINSTEADOFVOCATION) then
            -- string = string..' You are '.. getPlayerGroupName(cid) ..'.'
        -- elseif getPlayerVocation(cid) ~= 0 then
            -- string = string..' You are '.. getPlayerVocationName(cid) ..'.'
        -- else
            -- string = string..' You have no vocation.'
        -- end
        -- string = string..getPlayerSpecialDescription(cid)..''

			  -- -- if getPlayerStorageValue(cid,6729) > 0 then
			-- -- string = string..' You Have '..getPlayerStorageValue(cid,6724)..'Years, '..getPlayerStorageValue(cid,6723)..' Months and '..getPlayerStorageValue(cid, 6722)..' Days'
            -- -- string = getPlayerGuildNick(cid) ~= '' and string..' ('.. getPlayerGuildNick(cid) ..').' or string..'.'
			-- -- end
       
			
		
        -- if getPlayerGuildId(cid) > 0 then 
            -- string = string..' You are ' .. (getPlayerGuildRank(cid) == '' and 'a member' or getPlayerGuildRank(cid)) ..' of the '.. getPlayerGuildName(cid)
            -- string = getPlayerGuildNick(cid) ~= '' and string..' ('.. getPlayerGuildNick(cid) ..').' or string..'.'
        -- end 
 
        -- if getPlayerFlagValue(cid, PLAYERCUSTOMFLAG_CANSEECREATUREDETAILS) then
            -- string = string..'nHealth: ['.. getCreatureHealth(cid) ..' / '.. getCreatureMaxHealth(cid) ..'], Mana: ['.. getCreatureMana(cid) ..' / '.. getCreatureMaxMana(cid) ..'].'
            -- string = string..'nIP: '.. doConvertIntegerToIp(getPlayerIp(cid)) ..'.'
        -- end
 
        -- if getPlayerFlagValue(cid, PLAYERCUSTOMFLAG_CANSEEPOSITION) then
            -- string = string..'nPosition: [X:'.. position.x..'] [Y:'.. position.y..'] [Z:'.. position.z..'].'
        -- end
        -- doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, string)  
        -- return false
    -- end
    -- return true
-- end



