local keywordHandler = KeywordHandler:new() 
local npcHandler = NpcHandler:new(keywordHandler) 
NpcSystem.parseParameters(npcHandler) 
local talkState = {}
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end 
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end 
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end 
function onThink() npcHandler:onThink() end 
function creatureSayCallback(cid, type, msg) 
if(not npcHandler:isFocused(cid)) then 
return false 
end 
local talkState = {}
local talkUser = NPCHANDLER_CONVbehavior == CONVERSATION_DEFAULT and 0 or cid
local shopWindow = {}
local moeda= { 123, 456 } -- id da sua moeda vip

local t = {

      [12396] = {price = 1},
	  [12575] = {price = 1}

      }
	  
local onSell = function(cid, item, subType, amount, ignoreCap, inBackpacks)
    if  t[1] and not doPlayerRemoveItem(cid, moeda[1], t[1].price) then
          selfSay("You don't have "..t[1].price.." "..getItemNameById(moeda[1]), cid)
             else
        doPlayerAddItem(cid, t[1] )
        selfSay("Here are you.", cid)
       end
    return true
end

local onSell = function(cid, item, subType, amount, ignoreCap, inBackpacks)
    if  t[2] and not doPlayerRemoveItem(cid, moeda[2], t[2].price) then
          selfSay("You don't have "..t[2].price.." "..getItemNameById(moeda[2]), cid)
             else
        doPlayerAddItem(cid, t[2] )
        selfSay("Here are you.", cid)
       end
    return true
end




if (msgcontains(msg, 'trade') or msgcontains(msg, 'TRADE'))then
            for var, ret in pairs(t) do
                    table.insert(shopWindow, {id = var, subType = 0, buy = 0, sell = ret.price, name = getItemNameById(var)})
                end
            openShopWindow(cid, shopWindow, onBuy, onSell)
	        end
return true
end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback) 
npcHandler:addModule(FocusModule:new())