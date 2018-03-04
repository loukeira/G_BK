
function onUse(cid, item, frompos, item2, topos)

-- getPlayerGUID(cid)

local desc = getItemInfo(12505).description
	local newitem = doPlayerAddItem(cid, 12505, 1)
	doItemSetAttribute(newitem, "description", desc.." ".." Uhum SEi ")
	doRemoveItem(item.uid, 1)	


	doSendMagicEffect(frompos, 1)	
	
return 1
end