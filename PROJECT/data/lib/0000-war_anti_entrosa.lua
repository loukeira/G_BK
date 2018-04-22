war_log = 82392

local arena_storage = 454523
local players_storage = 456512
local storage_accept = 151230
local storage_check = 153201
local guild_invite = 542351
local guild_accept = 456121
local time_1_pos = {x = 376, y = 573, z = 6}
local time_2_pos = {x = 387, y = 573, z = 6}
local tempo_teste = {2,3,4,5} -- 600 == 10 minutos
local city = "carlin" 
local levelmin = 7
local carlinwar = {439331,439332}



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

function getOnlineGuildMembersByRank(guildId, rank, selectLowerRanks)
    if not rank then
        rank = 3
        selectLowerRanks = true
    end
    local list = {}
    for _, pid in pairs(getPlayersOnline()) do
        if getPlayerGuildId(pid) == guildId then
            local playerRank = getPlayerGuildLevel(pid)
            if playerRank == rank or (selectLowerRanks and playerRank <= rank) then
                table.insert(list, pid)
            end
        end
    end
    return list
end

function add_player_arena(cid)
    if getGlobalStorageValue(guild_invite) == getPlayerGuildId(cid) then
                setGlobalStorageValue(carlinwar[1],getGlobalStorageValue(carlinwar[1]) +1 )
                                    if #getOnlineGuildMembersByRank(getGlobalStorageValue(guild_invite), 3, true) > 0 then
                               for _, gid in pairs(getOnlineGuildMembersByRank(getGlobalStorageValue(guild_invite), 3, true)) do
                                        doPlayerSendTextMessage(gid, 20, "[CARLIN WAR]: "..getGlobalStorageValue(carlinwar[1]).." player(s) - [ "..getGuildNameById(getGlobalStorageValue(guild_invite)).." ] ")
                                                            end
                                                        end

                                 if #getOnlineGuildMembersByRank(getGlobalStorageValue(guild_accept), 3, true) > 0 then
                                for _, pid in pairs(getOnlineGuildMembersByRank(getGlobalStorageValue(guild_accept), 3, true)) do
            doPlayerSendTextMessage(pid, 20, "[CARLIN WAR]: "..getGlobalStorageValue(carlinwar[1]).." player(s) - [ "..getGuildNameById(getGlobalStorageValue(guild_invite)).." ] ")
                                                            end
                                                        end

      end

    if getGlobalStorageValue(guild_accept) == getPlayerGuildId(cid) then

                setGlobalStorageValue(carlinwar[2],getGlobalStorageValue(carlinwar[2]) +1 )

                 if #getOnlineGuildMembersByRank(getGlobalStorageValue(guild_invite), 3, true) > 0 then
                        for _, gid in pairs(getOnlineGuildMembersByRank(getGlobalStorageValue(guild_invite), 3, true)) do
         doPlayerSendTextMessage(gid, 20, "[CARLIN WAR]: "..getGlobalStorageValue(carlinwar[2]).." player(s) - [ "..getGuildNameById(getGlobalStorageValue(guild_accept)).." ] ")
                                                            end
                                                        end
                      if #getOnlineGuildMembersByRank(getGlobalStorageValue(guild_accept), 3, true) > 0 then
                     for _, pid in pairs(getOnlineGuildMembersByRank(getGlobalStorageValue(guild_accept), 3, true)) do
                doPlayerSendTextMessage(pid, 20, "[CARLIN WAR]: "..getGlobalStorageValue(carlinwar[2]).." player(s) - [ "..getGuildNameById(getGlobalStorageValue(guild_accept)).." ] ")
                                                            end
                                                        end

                end

end

    
    function remove_player_arena(cid)
    if getGlobalStorageValue(guild_invite) == getPlayerGuildId(cid) then
                setGlobalStorageValue(carlinwar[1],getGlobalStorageValue(carlinwar[1]) -1 )

                                    if #getOnlineGuildMembersByRank(getGlobalStorageValue(guild_invite), 3, true) > 0 then
                                                            for _, gid in pairs(getOnlineGuildMembersByRank(getGlobalStorageValue(guild_invite), 3, true)) do
                                     doPlayerSendTextMessage(gid, 20, "[CARLIN WAR]: "..getGlobalStorageValue(carlinwar[1]).." player(s) - [ "..getGuildNameById(getGlobalStorageValue(guild_invite)).." ] ")
                                                            end
                                                        end
                                                        if #getOnlineGuildMembersByRank(getGlobalStorageValue(guild_accept), 3, true) > 0 then
                                                            for _, pid in pairs(getOnlineGuildMembersByRank(getGlobalStorageValue(guild_accept), 3, true)) do
                                         doPlayerSendTextMessage(pid, 20, "[CARLIN WAR]: "..getGlobalStorageValue(carlinwar[1]).." player(s) - [ "..getGuildNameById(getGlobalStorageValue(guild_invite)).." ] ")
                                                            end
                                                        end

                end
                 if getGlobalStorageValue(guild_accept) == getPlayerGuildId(cid) then


                setGlobalStorageValue(carlinwar[2],getGlobalStorageValue(carlinwar[2]) -1 )

                                    if #getOnlineGuildMembersByRank(getGlobalStorageValue(guild_invite), 3, true) > 0 then
                                                            for _, gid in pairs(getOnlineGuildMembersByRank(getGlobalStorageValue(guild_invite), 3, true)) do
                                     doPlayerSendTextMessage(gid, 20, "[CARLIN WAR]: "..getGlobalStorageValue(carlinwar[2]).." player(s) - [ "..getGuildNameById(getGlobalStorageValue(guild_accept)).." ] ")
                                                            end
                                                        end
                                                        if #getOnlineGuildMembersByRank(getGlobalStorageValue(guild_accept), 3, true) > 0 then
                                                            for _, pid in pairs(getOnlineGuildMembersByRank(getGlobalStorageValue(guild_accept), 3, true)) do
                                         doPlayerSendTextMessage(pid, 20, "[CARLIN WAR]: "..getGlobalStorageValue(carlinwar[2]).." player(s) - [ "..getGuildNameById(getGlobalStorageValue(guild_accept)).." ] ")
                                                            end
                                                        end

                end

end