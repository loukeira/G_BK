




local area = {
from1 = {x = 300, y = 525, z = 1},
to1 = {x = 460, y = 650, z = 1},
from2 = {x = 300, y = 525, z = 2},
to2 = {x = 460, y = 650, z = 2},
from3 = {x = 300, y = 525, z = 3},
to3 = {x = 460, y = 650, z = 3},
from4 = {x = 300, y = 525, z = 4},
to4 = {x = 460, y = 650, z = 4},
from5 = {x = 300, y = 525, z = 5},
to5 = {x = 460, y = 650, z = 5},
from6 = {x = 300, y = 525, z = 6},
to6 = {x = 460, y = 650, z = 6}




}
  --  db.executeQuery("INSERT INTO `city_war` (`frags_guild1`, `frags_guild2`, `guild1`, `guild2`, `tempo`) VALUES ('" .. self.frags[self.name[1][1]] .. "', '" .. self.frags[self.name[2][1]] .. "', '" .. self.name[1][2] .. "', '" .. self.name[2][2] .. "', '" .. self.tempo .. "');")




-- local function getOnlineGuildMembersByRank(guildId, rank, selectLowerRanks)
--     if not rank then
--         rank = 3
--         selectLowerRanks = true
--     end
--     local list = {}
--     for _, pid in pairs(getPlayersOnline()) do
--         if getPlayerGuildId(pid) == guildId then
--             local playerRank = getPlayerGuildLevel(pid)
--             if playerRank == rank or (selectLowerRanks and playerRank <= rank) then
--                 table.insert(list, pid)
--             end
--         end
--     end
--     return list
-- end

function onSay(cid, words, param, channel)
    if param == "" then
        doPlayerSendTextMessage(cid,20, "Use os parametros corretos.\n{ex: /warcarlin invite, GuildInimiga, Tempo,Quant de Kills}}")
        return true
    end
	if getPlayerLevel(cid) <= levelmin_carlin then
        doPlayerSendCancel(cid, "Voce nao tem level suficiente. Tenha level maior que "..levelmin_carlin.." !")
        return true
    end
    
    local t = string.explode(param, ",")
    
     

    if t[1] == "invite" then
        if getPlayerGuildLevel(cid) < 3 then
            doPlayerSendCancel(cid, "Somente liders de guild podem usar esse comando.")
            return true
        end
        if getGuildId(t[2]) and getGuildId(t[2]) ~= getPlayerGuildId(cid) then
            if #getOnlineGuildMembersByRank(getGuildId(t[2]), 3, false) > 0 then

    if ( t[3] ==  tostring(tempo_carlin[1]) ) or  ( t[3] ==  tostring(tempo_carlin[2]) ) or  ( t[3] ==  tostring(tempo_carlin[3]) ) or  ( t[3] ==  tostring(tempo_carlin[4]) ) then


    carlin_time = tonumber(t[3]) * 60
    setGlobalStorageValue(storage_carlin_time,tonumber(t[3]))

            if (t[4] == tostring(quant_carlin_kill[1])) or (t[4] == tostring(quant_carlin_kill[2])) or (t[4] == tostring(quant_carlin_kill[3])) or (t[4] == tostring(quant_carlin_kill[4])) or (t[4] == tostring(quant_carlin_kill[5])) or (t[4] == tostring(quant_carlin_kill[6])) or (t[4] == tostring(quant_carlin_kill[7])) then

                if getGlobalStorageValue(arena_carlin_storage) <= os.time() then

                    kius = tonumber(t[4])
                    if kius == 0 then
                        kius = "infinitas"
                    else
                        kius = tostring(t[4])
                    end
                    setGlobalStorageValue(storage_carlin_t4,tonumber(t[4]))

                    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Voce convidou a guild "..t[2].." para uma war em "..city.." por "..t[3].." minutos com "..kius.." kills !")
                

                    for _, gid in pairs(getOnlineGuildMembersByRank(getGuildId(t[2]), 3, false)) do
                        doPlayerSendTextMessage(gid, MESSAGE_STATUS_CONSOLE_ORANGE, getCreatureName(cid).." da guild "..getPlayerGuildName(cid).." chamou sua guild para uma war em "..city.." por "..t[3].." minutos com "..kius.." Kills ! Para aceitar diga /war"..city.." accept, "..getPlayerGuildName(cid)..".")
                        setPlayerStorageValue(gid, storage_carlin_accept, os.time() + 20*60)
                        setPlayerStorageValue(gid, storage_carlin_check, getPlayerGuildId(cid))
                    end
                else
                    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "A arena ja esta ocupada.")
                end
else
                     --doPlayerSendTextMessage(cid, 27,"Digite a quant de kill certa! ["..quant_carlin_kill[1].."(infinito)], ["..quant_carlin_kill[2].."], ["..quant_carlin_kill[3].."], ["..quant_carlin_kill[4].."] , ["..quant_carlin_kill[5].."] , ["..quant_carlin_kill[6].."] , ["..quant_carlin_kill[7].."] ")
    doPlayerSendTextMessage(cid, 27,"Digite a quant de kill certa! ["..quant_carlin_kill[1].." para infinito ], ["..quant_carlin_kill[2].."], ["..quant_carlin_kill[3].."], ["..quant_carlin_kill[4].."] , ["..quant_carlin_kill[5].."] , ["..quant_carlin_kill[6].."] , ["..quant_carlin_kill[7].."] ")
                
            


            return true
            end

            else
                            doPlayerSendTextMessage(cid, 27,"Digite os minutos certos! ["..tempo_carlin[1].."], ["..tempo_carlin[2].."], ["..tempo_carlin[3].."], ["..tempo_carlin[4].."]")
        return true 
    end
            else
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Nenhum lider da guild "..t[2].." esta online.")
            end
        else
            doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Essa guild nao existe.")
        end
    elseif t[1] == "accept" then
        if getPlayerGuildLevel(cid) < 3 then
            doPlayerSendCancel(cid, "Somente liders de guild podem usar esse comando.")
            return true
        end
        if getGuildId(t[2]) and getGuildId(t[2]) ~= getPlayerGuildId(cid) then
            if getPlayerStorageValue(cid, storage_carlin_accept) > os.time() then
                if getPlayerStorageValue(cid, storage_carlin_check) == getGuildId(t[2]) then


                    setGlobalStorageValue(arena_carlin_storage, 0)
                    setGlobalStorageValue(arena_carlin_storage, os.time() + (getGlobalStorageValue(storage_carlin_time)*60))
                    setGlobalStorageValue(guild_carlin_accept, getPlayerGuildId(cid))
                    setGlobalStorageValue(guild_carlin_invite, getGuildId(t[2]))
                    setGlobalStorageValue(kill_carlin[1], 0)
                    setGlobalStorageValue(kill_carlin[2], 0)
                    setGlobalStorageValue(carlinwar[2], 0)
                    setGlobalStorageValue(carlinwar[1], 0)
                    setGlobalStorageValue(carlin_power, 1)


                        restante(10)
                        restante(5)
                        restante(1)




                    if #getOnlineGuildMembersByRank(getGuildId(t[2]), 3, true) > 0 then
                        for _, gid in pairs(getOnlineGuildMembersByRank(getGuildId(t[2]), 3, true)) do
                        doPlayerSendTextMessage(gid, MESSAGE_STATUS_CONSOLE_BLUE, "Sua guild entrou em war contra a guild "..getPlayerGuildName(cid).."! Para participar diga /war"..city.." go")
                        end
                    end
                    if #getOnlineGuildMembersByRank(getPlayerGuildId(cid), 3, true) > 0 then
                        for _, pid in pairs(getOnlineGuildMembersByRank(getPlayerGuildId(cid), 3, true)) do
                            doPlayerSendTextMessage(pid, MESSAGE_STATUS_CONSOLE_BLUE, "Sua guild entrou em war contra a guild "..t[2].."! Para participar diga /war"..city.." go")
                        end
                    end


   
--                     matt = tonumber(t[4])
--                     if matt == tonumber(0) then
-- if (getGlobalStorageValue(arena_carlin_storage) - os.time() < 0 ) or (getGlobalStorageValue(kill_carlin[1]) == matt) or (getGlobalStorageValue(kill_carlin[2]) == matt) then
--                         for _, pid in pairs(getPlayersOnline()) do
--                             if isInArea(getThingPos(pid), area.from1, area.to1) or  isInArea(getThingPos(pid), area.from2, area.to2) or isInArea(getThingPos(pid), area.from3, area.to3) or isInArea(getThingPos(pid), area.from4, area.to4) or isInArea(getThingPos(pid), area.from5, area.to5) or isInArea(getThingPos(pid), area.from6, area.to6) then 
                                               
                                    
--                                 doTeleportThing(pid, getTownTemplePosition(getPlayerTown(pid)))
--                                 doPlayerSetStorageValue(pid, war_carlin_log, 0)
--                                 doPlayerSendTextMessage(pid, MESSAGE_STATUS_CONSOLE_BLUE, "Voce foi teleportado para o templo porque a [War Carlin] acabou")

                                
--                             end
--                         end
         
--                 db.query("INSERT INTO `entrosa_war` (`frags_guild1`, `frags_guild2`, `guild1`, `guild2`, `tempo`) VALUES (' "..getGlobalStorageValue(kill_carlin[1]).." ', ' "..getGlobalStorageValue(kill_carlin[2]).." ', ' "..getGuildNameById(getGlobalStorageValue(guild_carlin_invite)).." ', ' "..getGuildNameById(getGlobalStorageValue(guild_carlin_accept)).." ', ' "..temmpo.." ');")

--                     local delay = 4
--                     addEvent(setGlobalStorageValue, delay*1000, arena_carlin_storage,0)
--                     addEvent(setGlobalStorageValue, delay*1000, guild_carlin_accept, -1)
--                     addEvent(setGlobalStorageValue, delay*1000, guild_carlin_invite, -1)
--                     addEvent(setGlobalStorageValue, delay*1000, carlinwar[1], 0)
--                     addEvent(setGlobalStorageValue, delay*1000, carlinwar[2], 0)
--                     addEvent(setGlobalStorageValue, delay*1000, kill_carlin[1], 0)
--                     addEvent(setGlobalStorageValue, delay*1000, kill_carlin[2], 0)

-- addEvent(function()

--  doBroadcastMessage ("[CARLIN WAR]: PLACAR FINAL \n [ "..getGuildNameById(getGlobalStorageValue(guild_carlin_invite)).."  ] "..getGlobalStorageValue(kill_carlin[1]).." x "..getGlobalStorageValue(kill_carlin[2]).." [ "..getGuildNameById(getGlobalStorageValue(guild_carlin_accept)).." ] ")



-- end, 2*1000)

                else
                    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Essa guild nao te invitou para uma war.")
                end
            else
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sua guild nao foi chamada para nenhuma war.")
            end
        else
            doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Essa guild nao existe.")
        end
    elseif t[1] == "go" then
         

        if getTilePzInfo(getThingPos(cid)) == false then
            doPlayerSendCancel(cid, "Voce precisa estar em uma area protect zone")
            return true
        end

        if getGlobalStorageValue(guild_carlin_invite) == getPlayerGuildId(cid) or getGlobalStorageValue(guild_carlin_accept) == getPlayerGuildId(cid) then

                            if isInArea(getThingPos(cid), area.from1, area.to1) or  isInArea(getThingPos(cid), area.from2, area.to2) or isInArea(getThingPos(cid), area.from3, area.to3) or isInArea(getThingPos(cid), area.from4, area.to4) or isInArea(getThingPos(cid), area.from5, area.to5) or isInArea(getThingPos(cid), area.from6, area.to6) then  

                                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voce ja esta na WAR!")

                                return true
                            end
                

            add_player_arena(cid) --soma + 1 na area e divulga

            doPlayerSetStorageValue(cid, war_carlin_log, 1)
                    

            doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voce entrou na war!")
            if getGlobalStorageValue(guild_carlin_invite) == getPlayerGuildId(cid) then
                local ii = math.random(1,7)
                doTeleportThing(cid, carlin_1_pos[ii])
                pos_spell_random(cid)
                local wolf = {278,114}

                doSetCreatureOutfit(cid, {lookType = wolf[1], lookHead = wolf[2] , lookBody = wolf[2], lookLegs = wolf[2], lookFeet = wolf[2], lookAddons = 3},-1)

            else
                local oo = math.random(1,7)
                doTeleportThing(cid, carlin_2_pos[oo])
                pos_spell_random(cid)
                local wolf = {152,94}
                doSetCreatureOutfit(cid, {lookType = wolf[1], lookHead = wolf[2] , lookBody = wolf[2], lookLegs = wolf[2], lookFeet = wolf[2], lookAddons = 3},-1)


            end
        else
            doPlayerSendCancel(cid, "Sua guild nao esta em war")
        end

elseif t[1] == "exit" then
   if getGlobalStorageValue(guild_carlin_invite) == getPlayerGuildId(cid) or getGlobalStorageValue(guild_carlin_accept) == getPlayerGuildId(cid) then
                    if getTilePzInfo(getThingPos(cid)) == false then
            doPlayerSendCancel(cid, "Voce precisa estar em uma area protect zone")
            return true
        end

 if isInArea(getThingPos(cid), area.from1, area.to1) or  isInArea(getThingPos(cid), area.from2, area.to2) or isInArea(getThingPos(cid), area.from3, area.to3) or isInArea(getThingPos(cid), area.from4, area.to4) or isInArea(getThingPos(cid), area.from5, area.to5) or isInArea(getThingPos(cid), area.from6, area.to6) then  

           

            remove_player_arena(cid) --subtrai - 1 na area e divulga

            doPlayerSetStorageValue(cid, war_carlin_log, 0)
            doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voce saiu da war!")
                doTeleportThing(cid, getTownTemplePosition(1))
                 doSendMagicEffect(getCreaturePosition(cid), 26)

             if getGlobalStorageValue(guild_carlin_invite) == getPlayerGuildId(cid) then
                local wolf = {278,114}
                doSetCreatureOutfit(cid, {lookType = wolf[1], lookHead = wolf[2] , lookBody = wolf[2], lookLegs = wolf[2], lookFeet = wolf[2], lookAddons = 3},0)

            else
                local wolf = {152,94}
                doSetCreatureOutfit(cid, {lookType = wolf[1], lookHead = wolf[2] , lookBody = wolf[2], lookLegs = wolf[2], lookFeet = wolf[2], lookAddons = 3},0)

            end


else
                  doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voce nao esta na Arena de CARLIN!")

                                return true
     end
           
        else
            doPlayerSendCancel(cid, "Sua guild nao esta em war")
        end

    end

    return true
end

