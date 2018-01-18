function onEquip(cid, item)
if getPlayerStorageValue(cid,14568) < 1 then
return  doPlayerRemoveItem(cid, 2400, 1) and  doBroadcastMessage("removido")

else


return doBroadcastMessage("oi")
end
end


