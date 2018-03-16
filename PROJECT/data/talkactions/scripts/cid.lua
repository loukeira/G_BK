function onSay(cid, words, param, channel)
	
	-- doPlayerSendTextMessage(cid,18, "TOMA: "..getPlayerExtraExpRate(cid).."")
	


-- local v = {}
local k =1

local n,a,z = semnome()

while k <= z do
	doPlayerSendTextMessage(cid,18," "..n[k].." , "..a[k].."")

k = k+1
end
-- 	for na,me in pairs(n) do
-- 			doPlayerSendTextMessage(cid,18," "..me.." ")
-- 		end

-- 	for ar,my in pairs(a) do		

-- 			doPlayerSendTextMessage(cid,18,""..my.."")
	
-- end

		
-- for ar,my in pairs(v) do

-- 			doPlayerSendTextMessage(cid,18,""..ar.." "..my[1].." ")
	
-- end


	-- for na,me in pairs(v) do

	-- 	doPlayerSendTextMessage(cid,18,""..na.." - "..me.."" )
	
	-- end
-- doPlayerSendTextMessage(cid,18,""..y.." : "..x.." ")
-- setPlayerStorageValue(cid, 99555 , i)
--  doPlayerSendTextMessage(cid,18, "TOMA: "..getPlayerStorageValue(cid,99555).."")
-- i = i + 1

-- v[getPlayerStorageValue(cid,99555)] = 



   -- doPlayerSendTextMessage(cid,18, "TOMA: "..valor_do_army(cid).."")


doSendMagicEffect(getCreaturePosition(cid), math.random(28,30))





	return true
end

