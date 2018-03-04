function onUse(cid, item, frompos, item2, topos)
local desc = getItemInfo(item.uid).description
doBroadcastMessage(tostring(desc))

	doPlayerSetStamina(cid, 2520)
	doSendMagicEffect(frompos, 1)
	doRemoveItem(item.uid, 1)	
return 1
end