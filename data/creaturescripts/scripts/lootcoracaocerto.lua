local item,count = 2160,1

function onDeath(cid, corpse, deathList)
local player = deathList[1]
if not isPlayer(player) then return true end
addEvent(doPlayerAddItem,1,player,item,count)

return true
end