function onLogin(cid)

    local temporary_level = getPlayerStorageValue(cid, ARMY_LEVEL) 
    local temporary_exp = getPlayerStorageValue(cid, ARMY_EXPERIENCE)
	
	
	-- if valor_da_eloe(cid) == 5 then
	-- db.executeQuery("UPDATE `players` SET `army_level` = 0  WHERE `id` = " .. getPlayerGUID(cid) .. ";")
	-- doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "O sistema de eloe foi reiniciado!")
	-- db.executeQuery("UPDATE `players` SET `reiniciar_eloe` = 10  WHERE `id` = " .. getPlayerGUID(cid) .. ";")	
	-- 	return true
	-- end
 -- db.executeQuery("UPDATE `players` SET `army_level` = 5 WHERE id = "..getPlayerGUID(cid).." ;")





    if (temporary_level < #ARMY) then
        if (tonumber(temporary_exp) == -1) or (tonumber(temporary_level)  == -1) then
            setPlayerStorageValue(cid, ARMY_LEVEL, 1)
            setPlayerStorageValue(cid, ARMY_EXPERIENCE, 0)
            db.executeQuery("UPDATE `players` SET `army_level` = 1  WHERE `id` = "..getPlayerGUID(cid).." ;")
            db.executeQuery("UPDATE `players` SET `army_experience` = 0  WHERE `id` = "..getPlayerGUID(cid).." ;")

        end
    end     
    return true
end
    







function onKill(cid, target)
if isPlayer(cid) and isPlayer(target) then

-- if getPlayerIp(target) == getPlayerIp(cid) then return true end

local temporary_level = getPlayerStorageValue(cid, ARMY_LEVEL) 
local temporary_exp = getPlayerStorageValue(cid, ARMY_EXPERIENCE)
-- local valor = retornar_army_max()



-- if (valor == #ARMY) then
--                 local storageglobal21 = 1432234
--                 if (getGlobalStorageValue(storageglobal21) == -1) then 
--                     setGlobalStorageValue(storageglobal21,1) 
--                 end
--                         if valor_do_army(cid) == 21 then
--                         doPlayerSendCancel(cid,"Voce ja chegou no nivel maximo!(Challenger)") 
--                         return true 
--                         end


--                 if valor_do_army(cid) == 20 then 
--                     -- local global_army = 47543 
--                         if getPlayerStorageValue(cid,ARMY_EXPERIENCE) < tonumber(ARMY[temporary_level][2]) then
--                          setPlayerStorageValue(cid, ARMY_EXPERIENCE, (temporary_exp + ARMY[getPlayerStorageValue(cid, ARMY_LEVEL)][1]))
--                          doPlayerSendTextMessage(cid, 18, "Voce matou  "..getCreatureName(target).." e ganhou "..ARMY[getPlayerStorageValue(cid, ARMY_LEVEL)][1].." faltando entao "..(ARMY[getPlayerStorageValue(cid, ARMY_LEVEL)][2] - getPlayerStorageValue(cid, ARMY_EXPERIENCE)).." army points para chegar ao limite do seu nivel! (lembrando que ja existe alguem CHALLENGER, nao sendo possivel ter 2 ou + CHALLENGERS!)")
--                          doSendMagicEffect(getCreaturePosition(cid), 13)
--                              else
--                             doPlayerSendCancel(cid,  "Voce ja chegou ao limite de army points do seu elo! E ja existe alguem CHALLENGER!")
--                         end
--                          return true 
--                 end

--     end




                    
                              


 temporary_level = getPlayerStorageValue(target, ARMY_LEVEL) 
 temporary_exp = getPlayerStorageValue(target, ARMY_EXPERIENCE)
if valor_do_army(target) >= 16 then
if valor_do_army(target) > valor_do_army(target) then

    setPlayerStorageValue(target, ARMY_EXPERIENCE, (temporary_exp - ARMY[getPlayerStorageValue(target, ARMY_LEVEL)][1]))

    if getPlayerStorageValue(target,ARMY_EXPERIENCE) < 0 then
            setPlayerStorageValue(target, ARMY_LEVEL, temporary_level - 1)
            db.query("UPDATE `players` SET `army_level` = `army_level`-1  WHERE `id` = " .. getPlayerGUID(target) .. ";")
            db.query("UPDATE `players` SET `army_experience` = 0  WHERE `id` = " .. getPlayerGUID(target) .. ";")
            setPlayerStorageValue(target, ARMY_EXPERIENCE,  0)
            doPlayerSendTextMessage(target, MESSAGE_STATUS_CONSOLE_RED, "You has been downgrade to elo: "..ARMY[getPlayerStorageValue(target, ARMY_LEVEL)][3]..".")

if valor_do_army(target) == 21 then sturagearmy,down = 144451,144450 elseif valor_do_army(target) == 20 then sturagearmy,down = 144450,144449 elseif valor_do_army(target) == 19 then sturagearmy,down = 144449,144448 elseif valor_do_army(target) == 18 then sturagearmy,down = 144448,144447 elseif valor_do_army(target) == 17 then sturagearmy,down = 144447,144446 elseif valor_do_army(target) == 16 then sturagearmy = 144446 end

             db.query("UPDATE `global_storage` SET `value` = `value`- 1  WHERE `key` = " ..sturagearmy.. ";")
               if valor_do_army(target) > 15 then
                db.query("UPDATE `global_storage` SET `value` = `value`+ 1  WHERE `key` = " ..down.. ";")
                 end



    end
  db.executeQuery("UPDATE `players` SET `army_experience` = "..getPlayerStorageValue(target,ARMY_EXPERIENCE).."  WHERE `id` = "..getPlayerGUID(target).." ;")

end
end






    local tempo = 10
                local storage_do_elo = 1234567
             setPlayerStorageValue(cid, storage_do_elo , 0)
        setPlayerStorageValue(cid, storage_do_elo , os.time() + tempo)

if valor_do_army(cid) == 21 then                local tempo = 10
                local storage_do_elo = 1234567
         setPlayerStorageValue(cid, storage_do_elo , 0)
        setPlayerStorageValue(cid, storage_do_elo , os.time() + tempo)
elseif valor_do_army(cid) == 20 then
        local tempo = 10
                local storage_do_elo = 1234567
         setPlayerStorageValue(cid, storage_do_elo , 0)
        setPlayerStorageValue(cid, storage_do_elo , os.time() + tempo)
elseif valor_do_army(cid) == 19 then
     local tempo = 10
                local storage_do_elo = 1234567
                         setPlayerStorageValue(cid, storage_do_elo , 0)
        setPlayerStorageValue(cid, storage_do_elo , os.time() + tempo)
elseif valor_do_army(cid) == 18 then
     local tempo = 10
               local storage_do_elo = 1234567
                 setPlayerStorageValue(cid, storage_do_elo , 0)
        setPlayerStorageValue(cid, storage_do_elo , os.time() + tempo)
elseif valor_do_army(cid) == 17 then
     local tempo = 10
                local storage_do_elo = 1234567
                 setPlayerStorageValue(cid, storage_do_elo , 0)
        setPlayerStorageValue(cid, storage_do_elo , os.time() + tempo)
elseif valor_do_army(cid) == 16 then
     local tempo = 10
                local storage_do_elo = 1234567
             setPlayerStorageValue(cid, storage_do_elo , 0)
        setPlayerStorageValue(cid, storage_do_elo , os.time() + tempo)
end
          


    if (temporary_level < #ARMY) then
        local lvlboneco = getPlayerLevel(cid)
        local formula = math.ceil( (lvlboneco*0.75) )
        if ( (getPlayerLevel(target) >= getPlayerLevel(cid)) or (getPlayerLevel(target) >= formula) ) and not getTileInfo(getCreaturePosition(cid)).hardcore then






local konstante_dia = 1522450
    local dia = 10*60
    if getPlayerStorageValue(target,getPlayerGuildId(cid) + konstante_dia) - os.time() <= 0 then

    setPlayerStorageValue(target, getPlayerGuildId(cid) + konstante_dia , 0)

    
            setPlayerStorageValue(target, getPlayerGuildId(cid) + konstante_dia , os.time() + dia)
      local vezes_ao_dia = 833423

    setPlayerStorageValue(target,  getPlayerGuildId(cid) + vezes_ao_dia , 0)

    end




local vezes_ao_dia = 833423
            if getplayerStorageValue(target, getPlayerGuildId(cid) + vezes_ao_dia) < 5 then 



    


                    setPlayerStorageValue(target,  getPlayerGuildId(cid) + vezes_ao_dia , getPlayerStorageValue(target,  getPlayerGuildId(cid) + vezes_ao_dia) +1 )
                    local subtracao = ( 5 - getPlayerStorageValue(target,  getPlayerGuildId(cid) + vezes_ao_dia) )
                    if subtracao > 0 then
                    doPlayerSendTextMessage(cid,18,"[Elo system]: Voce pode matar o player "..getCreatureName(target).."  por mais "..subtracao.." vezes hoje! Para ganhar xp elo!")
                    else
                    doPlayerSendTextMessage(cid,18,"[Elo system]: Voce Nao ira ganhar mais xp elo caso mate o player "..getCreatureName(target).." hoje! Espere 24 hrs para ganhar xp Elo em cima dele novamente! ")
                    end
                    local konstante = 322450

local minutos = 15

    if getPlayerStorageValue(target,getPlayerGuildId(cid) + konstante) - os.time() <= 0 then
            setPlayerStorageValue(target, getPlayerGuildId(cid) + konstante , os.time() + minutos)

        doPlayerSendTextMessage(cid,18,"[Elo system]:Voce tera q esperar "..minutos.." min pra ganhar xp 'Elo' em cima de "..getCreatureName(target).." novamente")



            if ((tonumber(temporary_exp) + tonumber(ARMY[temporary_level][1])) >= tonumber(ARMY[temporary_level][2])) then
            
                local storageglobal21 = 144451
                 local storageglobal20 = 144450
                local storageglobal19 = 144449
                 local storageglobal18 = 144448
                   local storageglobal17 = 144447
                  local storageglobal16 = 144446




                                local challeng = 1
                                if (valor_do_army(cid) == 20) then
                                    if (global_army(storageglobal21) < challeng ) then
                                                doPlayerAddMoney(cid, ARMY[temporary_level][4]) --lugar q arruma o premio   
                setPlayerStorageValue(cid, ARMY_LEVEL, temporary_level + 1)
                db.query("UPDATE `players` SET `army_level` = `army_level`+1  WHERE `id` = " .. getPlayerGUID(cid) .. ";")
                setPlayerStorageValue(cid, ARMY_EXPERIENCE, temporary_exp - tonumber(ARMY[temporary_level][2]) > 0 or 0)
                db.executeQuery("UPDATE `players` SET `army_experience` = o  WHERE `id` = "..getPlayerGUID(cid).." ;")

                                    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "You receive the best elo, congratulations "..ARMY[#ARMY][3]..".")
                doSendMagicEffect(getCreaturePosition(cid), 27)

         db.query("UPDATE `global_storage` SET `value` = `value`-1  WHERE `key` = " ..storageglobal20.. ";")




        db.query("UPDATE `global_storage` SET `value` = `value`+ 1  WHERE `key` = " ..storageglobal21.. ";")
                       local tempo = 10
                local storage_do_elo = 1234567
                         setPlayerStorageValue(cid, storage_do_elo , 0)
        setPlayerStorageValue(cid, storage_do_elo , os.time() + tempo)
                                        return true
                                    else
                                        doPlayerSendTextMessage(cid, 18, "ja existe "..challeng.." Player Elo Challenger!")
                                             return true 
                                    end
                                end







                                local master1 = 2
                                if (valor_do_army(cid) == 19) then
                                    if (global_army(storageglobal20) < master1) then
                                                doPlayerAddMoney(cid, ARMY[temporary_level][4]) --lugar q arruma o premio   
                setPlayerStorageValue(cid, ARMY_LEVEL, temporary_level + 1)
                db.query("UPDATE `players` SET `army_level` = `army_level`+1  WHERE `id` = " .. getPlayerGUID(cid) .. ";")
                            db.executeQuery("UPDATE `players` SET `army_experience` = o  WHERE `id` = "..getPlayerGUID(cid).." ;")

                setPlayerStorageValue(cid, ARMY_EXPERIENCE, temporary_exp - tonumber(ARMY[temporary_level][2]) > 0 or 0)
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "You has been gained a new elo: "..ARMY[getPlayerStorageValue(cid, ARMY_LEVEL)][3]..".")
                doSendMagicEffect(getCreaturePosition(cid), 27)



                             db.query("UPDATE `global_storage` SET `value` = `value`-1  WHERE `key` = " ..storageglobal19.. ";")




                            db.query("UPDATE `global_storage` SET `value` = `value`+ 1  WHERE `key` = " ..storageglobal20.. ";")
                                           local tempo = 10
                local storage_do_elo = 1234567
                         setPlayerStorageValue(cid, storage_do_elo , 0)
        setPlayerStorageValue(cid, storage_do_elo , os.time() + tempo)
                                    else
                                        doPlayerSendTextMessage(cid, 18, "ja existem "..master1.." players no nivel Master I")
                                             return true 
                                    end
                                end







                                local master2 = 3
                                if (valor_do_army(cid) == 18) then
                                    if global_army(storageglobal19) < master2 then
                                                doPlayerAddMoney(cid, ARMY[temporary_level][4]) --lugar q arruma o premio   
                setPlayerStorageValue(cid, ARMY_LEVEL, temporary_level + 1)
                db.query("UPDATE `players` SET `army_level` = `army_level`+1  WHERE `id` = " .. getPlayerGUID(cid) .. ";")
                            db.executeQuery("UPDATE `players` SET `army_experience` = o  WHERE `id` = "..getPlayerGUID(cid).." ;")

                setPlayerStorageValue(cid, ARMY_EXPERIENCE, temporary_exp - tonumber(ARMY[temporary_level][2]) > 0 or 0)
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "You has been gained a new elo: "..ARMY[getPlayerStorageValue(cid, ARMY_LEVEL)][3]..".")
                doSendMagicEffect(getCreaturePosition(cid), 27)


         db.query("UPDATE `global_storage` SET `value` = `value`-1  WHERE `key` = " ..storageglobal18.. ";")




                            db.query("UPDATE `global_storage` SET `value` = `value`+ 1  WHERE `key` = " ..storageglobal19.. ";")

                                           local tempo = 10
                local storage_do_elo = 1234567
             setPlayerStorageValue(cid, storage_do_elo , 0)
        setPlayerStorageValue(cid, storage_do_elo , os.time() + tempo)
                                    else
                                        doPlayerSendTextMessage(cid, 18, "ja existem "..master2.." players no nivel Master II")
                                             return true 
                                    end
                                end



                                local diamond1 = 4
                                if (valor_do_army(cid) == 17) then
                                    if global_army(storageglobal18) < diamond1 then
                                                doPlayerAddMoney(cid, ARMY[temporary_level][4]) --lugar q arruma o premio   
                setPlayerStorageValue(cid, ARMY_LEVEL, temporary_level + 1)
                db.query("UPDATE `players` SET `army_level` = `army_level`+1  WHERE `id` = " .. getPlayerGUID(cid) .. ";")
                            db.executeQuery("UPDATE `players` SET `army_experience` = o  WHERE `id` = "..getPlayerGUID(cid).." ;")

                setPlayerStorageValue(cid, ARMY_EXPERIENCE, temporary_exp - tonumber(ARMY[temporary_level][2]) > 0 or 0)
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "You has been gained a new elo: "..ARMY[getPlayerStorageValue(cid, ARMY_LEVEL)][3]..".")
                doSendMagicEffect(getCreaturePosition(cid), 27)


         db.query("UPDATE `global_storage` SET `value` = `value`-1  WHERE `key` = " ..storageglobal17.. ";")




                            db.query("UPDATE `global_storage` SET `value` = `value`+ 1  WHERE `key` = " ..storageglobal18.. ";")

                                           local tempo = 10
                local storage_do_elo = 1234567
             setPlayerStorageValue(cid, storage_do_elo , 0)
        setPlayerStorageValue(cid, storage_do_elo , os.time() + tempo)
                                    else
                                        doPlayerSendTextMessage(cid, 18, "ja existem "..diamond1.." players no nivel diamond I")
                                             return true 
                                    end
                                end




                                local diamond2 = 5
                                if (valor_do_army(cid) == 16) then
                                    if global_army(storageglobal17) < diamond2 then
                                                doPlayerAddMoney(cid, ARMY[temporary_level][4]) --lugar q arruma o premio   
                setPlayerStorageValue(cid, ARMY_LEVEL, temporary_level + 1)
                db.query("UPDATE `players` SET `army_level` = `army_level`+1  WHERE `id` = " .. getPlayerGUID(cid) .. ";")
                            db.executeQuery("UPDATE `players` SET `army_experience` = o  WHERE `id` = "..getPlayerGUID(cid).." ;")

                setPlayerStorageValue(cid, ARMY_EXPERIENCE, temporary_exp - tonumber(ARMY[temporary_level][2]) > 0 or 0)
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "You has been gained a new elo: "..ARMY[getPlayerStorageValue(cid, ARMY_LEVEL)][3]..".")
                doSendMagicEffect(getCreaturePosition(cid), 27)

         db.query("UPDATE `global_storage` SET `value` = `value`-1  WHERE `key` = " ..storageglobal16.. ";")

                   db.query("UPDATE `global_storage` SET `value` = `value`+ 1  WHERE `key` = " ..storageglobal17.. ";")

                                  local tempo = 10
                local storage_do_elo = 1234567
                 setPlayerStorageValue(cid, storage_do_elo , 0)
        setPlayerStorageValue(cid, storage_do_elo , os.time() + tempo)
                                    else
                                        doPlayerSendTextMessage(cid, 18, "ja existem "..diamond2.." players no nivel diamond II")
                                             return true 
                                    end
                                end


                                local diamond3 = 8
                                if (valor_do_army(cid) == 15) then
                                    if global_army(storageglobal16) < diamond3 then
                                                doPlayerAddMoney(cid, ARMY[temporary_level][4]) --lugar q arruma o premio   
                setPlayerStorageValue(cid, ARMY_LEVEL, temporary_level + 1)
                db.query("UPDATE `players` SET `army_level` = `army_level`+1  WHERE `id` = " .. getPlayerGUID(cid) .. ";")
                            db.executeQuery("UPDATE `players` SET `army_experience` = o  WHERE `id` = "..getPlayerGUID(cid).." ;")

                setPlayerStorageValue(cid, ARMY_EXPERIENCE, temporary_exp - tonumber(ARMY[temporary_level][2]) > 0 or 0)
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "You has been gained a new elo: "..ARMY[getPlayerStorageValue(cid, ARMY_LEVEL)][3]..".")
                doSendMagicEffect(getCreaturePosition(cid), 27)

                            db.query("UPDATE `global_storage` SET `value` = `value`+ 1  WHERE `key` = " ..storageglobal16.. ";")

                                           local tempo = 10
                local storage_do_elo = 1234567
             setPlayerStorageValue(cid, storage_do_elo , 0)
        setPlayerStorageValue(cid, storage_do_elo , os.time() + tempo)
                              
                                    else
                                        doPlayerSendTextMessage(cid, 18, "ja existem "..diamond3.." players no nivel diamond III")
                                             return true 
                                    end
                                end
                                

                        -- if (getPlayerStorageValue(cid, ARMY_LEVEL) >= #ARMY) then


                                
                        --             doPlayerAddMoney(cid, ARMY[temporary_level][4]) --lugar que arruma o premio             
                        --             setPlayerStorageValue(cid, ARMY_EXPERIENCE, 0)
                        --             doSendMagicEffect(getCreaturePosition(cid), 27)


                        --         end




                        if valor_do_army(cid) <= 14 then


                                        doPlayerAddMoney(cid, ARMY[temporary_level][4]) --lugar q arruma o premio
                                        setPlayerStorageValue(cid, ARMY_LEVEL, temporary_level + 1)
                                        db.query("UPDATE `players` SET `army_level` = `army_level`+1  WHERE `id` = " .. getPlayerGUID(cid) .. ";")
                                                    db.executeQuery("UPDATE `players` SET `army_experience` = o  WHERE `id` = "..getPlayerGUID(cid).." ;")
                                                                db.executeQuery("UPDATE `players` SET `army_experience` = o  WHERE `id` = "..getPlayerGUID(cid).." ;")


                                        setPlayerStorageValue(cid, ARMY_EXPERIENCE, temporary_exp - tonumber(ARMY[temporary_level][2]) > 0 or 0)
                                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "You has been gained a new patent: "..ARMY[getPlayerStorageValue(cid, ARMY_LEVEL)][3]..".")
                                        doSendMagicEffect(getCreaturePosition(cid), 27)

                        end
    
            return true
           end



            setPlayerStorageValue(cid, ARMY_EXPERIENCE, (temporary_exp + ARMY[getPlayerStorageValue(cid, ARMY_LEVEL)][1]))
            db.executeQuery("UPDATE `players` SET `army_experience` = "..getPlayerStorageValue(cid,ARMY_EXPERIENCE).."  WHERE `id` = "..getPlayerGUID(cid).." ;")

            doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "Voce matou  "..getCreatureName(target).." e ganhou "..ARMY[getPlayerStorageValue(cid, ARMY_LEVEL)][1].." faltando entao "..(ARMY[getPlayerStorageValue(cid, ARMY_LEVEL)][2] - getPlayerStorageValue(cid, ARMY_EXPERIENCE)).." army points para avancar de nivel!")
            doSendMagicEffect(getCreaturePosition(cid), 13)

            else
                    doPlayerSendTextMessage(cid,18,"[elo system]: Voce deve esperar "..minutos.." min para ganhar xp elo no player "..getCreaturename(target).." ")
                    return true

                end




                else
                    local time_model = "%d dia(s), %d hora(s), %d minuto(s) e %d segundo(s)."
                    local vezes_ao_dia = 833423
                    local timeLeft = convertTime(getPlayerStorageValue(target,getPlayerGuildId(cid) + vezes_ao_dia) - os.time())
                    doPlayerSendTextMessage(cid, 27, "[Elo system]: Voce ja matou o player "..getCreaturename(target).." 5 vezes hoje! Espere "..time_model:format(timeLeft.days, timeLeft.hours, timeLeft.minutes, timeLeft.seconds).." Para ganhar xp Elo em cima dele novamente!")


                 return true

                end


            
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

function onThink(cid, interval)
    if(not isCreature(cid)) then
        return true
    end

    if tostring(getPlayerName(cid)) == "Account Manager" then return true end
    if getPlayerAccountId(cid) == 1 or getPlayerAccountId(cid) ==18 then return true end
if isPlayer(cid) then
    local tempo_auxiliar_segundo = 152911 

        if getPlayerStorageValue(cid,tempo_auxiliar_segundo) <= os.time() then
        setPlayerStorageValue(cid, tempo_auxiliar_segundo , os.time() + 2)

local storage_do_elo = 1234567

-- doPlayerSendTextMessage(cid, 18 , "oi")
    -- setPlayerStorageValue(cid, storage_do_elo , 0)

    -- setPlayerStorageValue(cid, storage_do_elo , os.time() + 3600)

-- doPlayerSendTextMessage(cid, 18 , " "..getPlayerStorageValue(cid,storage_do_elo).." ")

if valor_do_army(cid) < 16 then 
    return true 

else


                local storage_do_elo = 1234567

           
                local time_model = "%d dia(s), %d hora(s), %d minuto(s) e %d segundo(s)."
                local timeLeft = convertTime(getPlayerStorageValue(cid, storage_do_elo ) - os.time())

                -- doPlayerSendTextMessage(cid, 18 , "se vc nao matar em : "..time_model:format(timeLeft.days, timeLeft.hours, timeLeft.minutes, timeLeft.seconds).." vc ira perder 1 nivel de elo! ")

                if (getPlayerStorageValue(cid,storage_do_elo) - os.time()) <= 0 then


                setPlayerStorageValue(cid, ARMY_EXPERIENCE, (temporary_exp - (math.ceil((ARMY[getPlayerStorageValue(cid, ARMY_LEVEL)][2] *0.25) ) ) ) )


                    if getPlayerStorageValue(cid,ARMY_EXPERIENCE) < 0 then
                                setPlayerStorageValue(cid, ARMY_LEVEL, temporary_level - 1)
                                db.query("UPDATE `players` SET `army_level` = `army_level`-1  WHERE `id` = " .. getPlayerGUID(cid) .. ";")
                                db.query("UPDATE `players` SET `army_experience` = 0  WHERE `id` = " .. getPlayerGUID(cid) .. ";")
                                setPlayerStorageValue(cid, ARMY_EXPERIENCE,  0)
                                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "You has been downgrade to elo: "..ARMY[getPlayerStorageValue(cid, ARMY_LEVEL)][3]..".")

                    if valor_do_army(cid) == 21 then sturagearmy,down = 144451,144450 elseif valor_do_army(cid) == 20 then sturagearmy,down = 144450,144449 elseif valor_do_army(cid) == 19 then sturagearmy,down = 144449,144448 elseif valor_do_army(cid) == 18 then sturagearmy,down = 144448,144447 elseif valor_do_army(cid) == 17 then sturagearmy,down = 144447,144446 elseif valor_do_army(cid) == 16 then sturagearmy = 144446 end

                                 db.query("UPDATE `global_storage` SET `value` = `value`- 1  WHERE `key` = " ..sturagearmy.. ";")
                                   if valor_do_army(cid) > 15 then
                                    db.query("UPDATE `global_storage` SET `value` = `value`+ 1  WHERE `key` = " ..down.. ";")
                                     end



                        end



                        if valor_do_army(cid) >= 16 then 
                                            local storage_do_elo = 1234567
                                            local tempo = 10
                                                     setPlayerStorageValue(cid, storage_do_elo , 0)

                         setPlayerStorageValue(cid, storage_do_elo , os.time() + tempo)
      --                else
      -- setPlayerStorageValue(cid, storage_do_elo , -2)

                        end








                        else 
                        return false

                end

                        
end


        else 
        return false
        end
end
    return true
end




    