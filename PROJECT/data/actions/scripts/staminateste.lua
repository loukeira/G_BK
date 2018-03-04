function onUse(cid, item, frompos, item2, topos)
local itemzin = item.uid
local coco = itemzin.description
local hoho = tostring(coco)
doBroadcastMessage("server "..hoho.." ")

	doPlayerSetStamina(cid, 2520)
	doSendMagicEffect(frompos, 1)
	-- doRemoveItem(item.uid, 1)	
return 1
end