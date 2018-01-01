_invite_friends = {
	storages = {202301, 202302, 202303, 202304,202305}, -- points, jogador, recompensa lvl, recompensa items
	level_max = 20, -- até que level ele precisa falar seu friend
	level_need = 30, -- que lever o jogador precisa ser para ganhar pontos
	levels_win = { -- leveis que receberão os pontos(feito pelo onAdvance)
		[40] = {pt = 5, lvl = 40},
		[50] = {pt = 10, lvl = 50},
		[60] = {pt = 10, lvl = 60},
		[70] = {pt = 10, lvl = 70},
		[80] = {pt = 10, lvl = 80},
		[90] = {pt = 10, lvl = 90},
		[100] = {pt = 50, lvl = 100},
		[110] = {pt = 10, lvl = 110},
		[120] = {pt = 5, lvl = 120},
		[130] = {pt = 5, lvl = 130},
		[140] = {pt = 5, lvl = 140},
		[150] = {pt = 5, lvl = 150},
		[160] = {pt = 5, lvl = 160},
		[170] = {pt = 5, lvl = 170},
		[180] = {pt = 5, lvl = 180},
		[190] = {pt = 5, lvl = 190}
	},
	rewards = { -- a cada tantos pontos, que tipo de reward ele irá receber(automático onLogin)
		[10] = {items = {{10128,1},{2160,10}}, p_days = 1, p_points = 10 , out = {0,0}},
		[25] = {items = {{10127,1},{2160,10}}, p_days = 0, p_points = 20 , out = {0,0}},
		[50] = {items = {{2160,10},{2160,10}}, p_days = 0, p_points = 0 , out = {130,138}},
		[100] = {items = {{2160,20},{2160,10}}, p_days = 0, p_points = 0 , out = {0,0}},
		[200] = {items = {{2160,5},{2173,1}}, p_days = 0, p_points = 0 , out = {0,0}},
		[250] = {items = {{2160,6},{2173,1}}, p_days = 0, p_points = 0 , out = {0,0}},
		[500] = {items = {{2160,7},{2173,1}}, p_days = 0, p_points = 0 , out = {0,0}}
	}
}
function getInvitePoints(cid)
	return getPlayerStorageValue(cid, _invite_friends.storages[1]) < 0 and 0 or getPlayerStorageValue(cid, _invite_friends.storages[1])
end
function hasInviteFriend(cid)
	return getPlayerStorageValue(cid, _invite_friends.storages[2]) > 0 and true or false
end
function doInviteFriend(cid, GUID)
	return setPlayerStorageValue(cid, _invite_friends.storages[2], GUID)
end

function getNameFriend(cid)
	return getPlayerNameByGUID(getPlayerStorageValue(cid, _invite_friends.storages[2]))
end


function addInvitePoints(name, amount)
	local pid, Guid = getPlayerByNameWildcard(name), getPlayerGUIDByName(name)
	if not pid then
		local getFriendPoints = db.getResult("SELECT `value` FROM `player_storage` WHERE `player_id` = ".. Guid .." AND `key` = ".._invite_friends.storages[1])
		if (getFriendPoints:getID() ~= -1) then
			db.executeQuery("UPDATE `player_storage` SET `value` = ".. (getFriendPoints:getDataInt("value")+amount) .." WHERE `player_id` = ".. Guid .." AND `key` = ".._invite_friends.storages[1])
		end
	else
		setPlayerStorageValue(getPlayerByName(name), _invite_friends.storages[1], getInvitePoints(getPlayerByName(name))+amount)
	end
	return true
end




function getRewardsFriend(name, pid)
	local acc = getAccountIdByName(name)
	if isPlayer(getPlayerByNameWildcard(name)) then
		local target = getPlayerByNameWildcard(name)
		
		

		local FriendPoints, CheckPoints = getInvitePoints(target), getPlayerStorageValue(target, _invite_friends.storages[4])
		for vod, ka in pairs(_invite_friends.rewards) do
			local str = ""
			if FriendPoints >= vod and CheckPoints < vod then
				str = str.."--> Invite Players System <--\n\nVocê acaba de receber algumas recompensas:\n\nItems: \n"..getItemsFromList(ka.items)..".\n\n"
				if ka.p_days > 0 then 
					doPlayerAddPremiumDays(target, ka.p_days) 
					str = str.."Premium Days:\n"..ka.p_days.." Premium Days." 
				end
				if ka.p_points > 0 then 
					db.executeQuery('UPDATE accounts SET premium_points=premium_points+' .. ka.p_points ..' WHERE id=' .. acc)
					str = str.."Premium Points:\n"..ka.p_points.." Premium Points."
				end
				if ka.out[1] > 0 then 
					doPlayerAddOutfit(target, getPlayerSex(target) == 0 and ka.out[1] or ka.out[2], 3)
					str = str.."[New Outfit]\nRecebeu uma Nova Outfit."
				end
				setPlayerStorageValue(target, _invite_friends.storages[4], FriendPoints)
				
				
	

				 for var = 1,#ka.items do	
				 local town = getTownName(1)
				  local mailBoxPos = {x = 1107, y = 1066, z = 7}
 local parcel = doCreateItemEx(2595)
 local label = doAddContainerItem(parcel, 2599)
 doSetItemText(label, getCreatureName(target) .."\n".. town)
	local carta = doAddContainerItem(parcel, 1952) 
	

			doItemSetAttribute(carta, "text", "[+] Invite Players System [+]    Recompensa por um amigo avancar ao nivel  requerido!                                              [+] Invite Players System [+]")

     				doAddContainerItem(parcel, ka.items[var][1] ,  ka.items[var][2]) 
					
					local quanti = ka.items[var][2]
					
					 doPlayerSendTextMessage(target, MESSAGE_STATUS_CONSOLE_ORANGE,"[Invite Players System] Você Recebeu "..quanti.." "..getItemNameById(ka.items[var][1]).." por ter convidado  jogadores   para o servidor, Por favor conferir os itens no DP da Baiak City.")
					doTeleportThing(parcel, mailBoxPos)
				   end
				 end
			end
		end
		
						
				
	
	return true
end



-- function adicional --
function getItemsFromList(items) -- by vodka
local str = ''
if table.maxn(items) > 0 then
for i = 1, table.maxn(items) do
str = str .. items[i][2] .. ' ' .. getItemNameById(items[i][1])
if i ~= table.maxn(items) then str = str .. ', ' end end end
return str
end

--function, verificar cap 					addEvent(additem,10000,name,pid) else
					-- doPlayerSendTextMessage(target, MESSAGE_STATUS_CONSOLE_ORANGE, "[Invite Players System] Voce nao tem capacidade para ganhar o item. Vamos verificar novamente em 10 segundos!")

function additem(name,pid)
local acc = getAccountIdByName(name)
	if isPlayer(getPlayerByNameWildcard(name)) then
		local target = getPlayerByNameWildcard(name)
		local FriendPoints, CheckPoints = getInvitePoints(target), getPlayerStorageValue(target, _invite_friends.storages[4])
for vod, ka in pairs(_invite_friends.rewards) do
   local backpack = doPlayerAddItem(getPlayerByNameWildcard(name), 1999, 1) -- backpackID					
	 local carta = doAddContainerItem(backpack, 1952) 
	
	doItemSetAttribute(carta, "text", "[+] Invite Players System [+]    Recompensa por um amigo avancar ao nivel requerido!                                [+] Invite Players System [+]")
	
   for var = 1,#ka.items do
 
	if backpack == RETURNVALUE_NOERROR then
	
  doAddContainerItem(backpack, ka.items[var][1] ,  ka.items[var][2]) 
	doPlayerSendTextMessage(target, MESSAGE_STATUS_CONSOLE_ORANGE,"[Invite Players System] Você Recebeu algumas premiações por estar convidando jogadores para o servidor, Por favor conferir os itens no Depot.")
	stopEvent(additem)
  else
		doPlayerSendTextMessage(target, MESSAGE_STATUS_CONSOLE_ORANGE, "[Invite Players System] Voce nao tem capacidade para ganhar o item. Vamos verificar novamente em 10 segundos!")
		addEvent(additem,10000,name,pid)
  end
end
end
end
return true
end