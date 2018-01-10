local config = {
   effectonuse = 29, -- efeito que sai
   STORAGEINDIVIDUALXPSEMANAL = 16739,
   }
 
 function onUse(cid, item, frompos, item2, topos)
-- setPlayerStorageValue(cid,config.storage_unica, getPlayerExperience(cid) )

doPlayerSendTextMessage(cid,22,"Seu valor de storage e:  "..(getPlayerStorageValue(cid, config.STORAGEINDIVIDUALXPSEMANAL)).." !!! ")


doPlayerSendTextMessage(cid,22,""..xpdapessoa(cid).."")


   
return true
end

 
function xpdapessoa(cid)

local res = db.getResult('select `experience` from players where name = \''..getPlayerName(cid)..'\'')

    
-- local query = db.getResult("SELECT `player_id` FROM `kill` and `player_killers` or `player_deaths` WHERE `player_id` = "..getPlayerGUID(cid).." ")
-- local query = db.getResult("Select * FROM `players` WHERE `experience` > 4200;")
-- if query:getID() ~= -1 then
   -- name = query:getDataString("name") 

-- end   
if(res:getID() == -1) then
return false
end

local ret = res:getDataString("experience")
res:free()

 
xixi = tonumber(ret) 
return xixi
end

-- doPlayerSendTextMessage(cid,22,"O player "..getCreatureByName(name)..", esta com  de experiencia!")
-- return true
-- end 
 
 
   
