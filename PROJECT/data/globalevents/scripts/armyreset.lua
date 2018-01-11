-- ARMY_LEVEL = 2014159  
-- ARMY_EXPERIENCE = 2014160 

function onThink(cid,think,interval,topos)

	db.executeQuery("UPDATE `player_storage` SET `value`= 1 WHERE `key` = 2014159 ;")
	db.executeQuery("UPDATE `player_storage` SET `value`= 0 WHERE `key` = 2014160 ;")

doBroadcastMessage("pronto!")


 return true 
end

 
