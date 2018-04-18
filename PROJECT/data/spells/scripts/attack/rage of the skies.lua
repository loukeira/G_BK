local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_BIGCLOUDS)
setAttackFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 6, 6, 8, 20)

local area = createCombatArea(AREA_CROSS6X6)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	if isSpellBlocked(cid, {2,3}) then return false end
	return doCombat(cid, combat, var)
end