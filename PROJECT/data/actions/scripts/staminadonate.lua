
local storage_stamina_donate = 65894

local staminaid = 12289

function onUse(cid, item, frompos, item2, topos)

-- getPlayerGUID(cid)
doBroadcastMessage("a msg e : "..getItemDescriptionsById(staminaid).." !")


	doPlayerSetStamina(cid, 2520)
	doSendMagicEffect(frompos, 1)	
	
return 1
end