dofile('data/lib/arenapvp.lua')

function onStatsChange(cid, attacker, _type, combat, value)
    
    if isPlayer(cid) and getPlayerStorageValue(cid, arena.pstorage) == 1 and _type == STATSCHANGE_HEALTHLOSS then
        if value >= getCreatureHealth(cid) then
            local killer = attacker
            doCreatureAddHealth(cid, getCreatureMaxHealth(cid))
            doCreatureAddMana(cid, getCreatureMaxMana(cid))
            doCreatureAddHealth(killer, getCreatureMaxHealth(killer))
            doCreatureAddMana(killer, getCreatureMaxMana(killer))
            doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "[Arena]: you lost the duel!")
            doPlayerSendTextMessage(killer, MESSAGE_STATUS_WARNING, "[Arena]: you win the duel!")
            doTeleportThing(cid, arena.exitPos)
            doTeleportThing(killer, arena.exitPos)
           -- doSendMagicEffect(getThingPos(cid), CONST_ME_POFF)
            --doSendMagicEffect(getThingPos(killer), CONST_ME_POFF)
            setPlayerStorageValue(cid, arena.pstorage, -1)
            setPlayerStorageValue(killer, arena.pstorage, -1)
            setGlobalStorageValue(arena.gstorage, -1)
            return false
        
    end
    end
    return true
end

function onLogin(cid)

    registerCreatureEvent(cid, "ArenaPVP")
    registerCreatureEvent(cid, "thinkPVP")

    return true     
end


function onThink(cid, interval)

if getGlobalStorageValue(arena.gstorage) < 1 then
    return true 

else

local aux = 523623
if getGlobalStorageValue(aux) <= os.time() then 
    setGlobalStorageValue(aux,os.time() + 2)

local arenapvp = { from1 = {x= 1096, y=1061, z= 5}, to1 = {x= 1103, y=1066, z= 5} }
local exitPos = {x= 1099, y=1058, z= 5}

   if isInArea(getThingPos(cid), arenapvp.from1, arenapvp.to1) then
                                    if getQuantidadeCreature(cid) > 0 then
                                                doRemoveCreature(cid, arena.exitPos, arena.pstorage)
                                                setGlobalStorageValue(arena.gstorage, -1)
                                        end


      end
      else return true
end
end

    return true     
end

