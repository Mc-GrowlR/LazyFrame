---@meta

---神途引擎api
---@class lualib
lualib = {}

---
---@param strPlayer string
---@param strColor string
---@return bool
function lualib:Player_SetNameColor(strPlayer, strColor)
end

---
---@param strPlayer string
---@param strMsg string
---@return bool
function lualib:SetAutoReply(strPlayer, strMsg)
end

---
---@param strPlayer string
---@param strDestPlayerName string
---@return bool
function lualib:Player_DragFromRole(strPlayer, strDestPlayerName)
end

---
---@param strObject string
---@return table
function lualib:VarList(strObject)
end

---
---@param strItem string
---@return int32
function lualib:GetItemGold(strItem)
end

---
---@param strPlayer string
---@return bool
function lualib:Player_HasTeam(strPlayer)
end

---
---@param strPlayer string
---无返回值
function lualib:LeaveTeam(strPlayer)
end

---
---@param strPlayer string
---@param iExp int32
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:Player_AddExp(strPlayer, iExp, strDesc, strTarget)
end

---
---@param strPlayer string
---@param wQuestID uint16
---@return bool
function lualib:HasQuest(strPlayer, wQuestID)
end

---
---@param sender string
---@param receiver string
---@param text string
---@param gold int32
---@param yuanbao int32
---@param item table
---@return bool
function lualib:MailToPlayer(sender, receiver, text, gold, yuanbao, item)
end

---
---@param strPlayer string
---@return table
function lualib:GetRunningFamilyWar(strPlayer)
end

---
---@param strObject string
---@param strKey string
---@param strValue string
---@return bool
function lualib:SetTempStr(strObject, strKey, strValue)
end

---
---@param strMap string
---@return uint16
function lualib:Map_GetWidth(strMap)
end

---
---@return int
function lualib:GetAllPlayerCount()
end

---
---@param strMap string
---@param strMapKey string
---无返回值
function lualib:on_map_destroy(strMap, strMapKey)
end

---
---@param dwTimes uint32
---@return uint32
function lualib:GetWeek(dwTimes)
end

---
---@param strPlayer string
---@param tName table
---@param tCount table
---@param tBind table
---@param tOpr table
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:Player_ItemRequest(strPlayer, tName, tCount, tBind, tOpr, strDesc, strTarget)
end

---
---@param player string
---@param item string
---@param index uint16
---@return table
function lualib:Equip_GetIdentifyProp(player, item, index)
end

---
---@param strPlayer string
---@param strItemKey string
---@return bool
function lualib:DisableEquip(strPlayer, strItemKey)
end

---
---@param strPlayer string
---@param strItemKey string
---@return int32
function lualib:Player_GetItemCountUnbind(strPlayer, strItemKey)
end

---
---@param strString string
---@param iLen int
---@param iOffset int
---@return string
function lualib:left(strString, iLen, iOffset)
end

---
---@param strPlayer string
---无返回值
function lualib:on_enter_map(strPlayer)
end

---
---@param strPlayer string
---@return uint32
function lualib:OnlineTimeEx(strPlayer)
end

---
---@param strPlayer string
---@param strTitle string
---@param strURL string
---@param strParam string
---@return bool
function lualib:SysMsg_SendWebMsg(strPlayer, strTitle, strURL, strParam)
end

---
---@param strFileName string
---@param strContent string
---@return bool
function lualib:IO_SetFileText(strFileName, strContent)
end

---
---@param strPlayer string
---@return bool
function lualib:Player_IsDie(strPlayer)
end

---
---@param player string
---@param script string
---@param scriptFunc string
---@param params string
---@return bool
function lualib:ScriptFuncToPlayer(player, script, scriptFunc, params)
end

---
---@param strPlayer string
---@param wTitleID uint16
---无返回值
function lualib:RemoveTitle(strPlayer, wTitleID)
end

---
---@param hero string
---@param rage int32
---@return bool
function lualib:SetHeroRage(hero, rage)
end

---
---@param dwScheduleID uint32
---无返回值
function lualib:DisableScheduled(dwScheduleID)
end

---
---@param strCallBack string
---@param strParam string
---无返回值
function lualib:GSRunScript(strCallBack, strParam)
end

---
---@param strPlayer string
---@param bBag bool
---@param bWarhouse bool
---@param bAdvWarhouse bool
---@return int32
function lualib:BagSize(strPlayer, bBag, bWarhouse, bAdvWarhouse)
end

---
---@return uint32
function lualib:GetTime()
end

---
---@param strRole string
---@return int32
function lualib:Head(strRole)
end

---
---@param strPlayer string
---@param strItem string
---@param iValue int32
---@return bool
function lualib:Equip_SetLuckCurse(strPlayer, strItem, iValue)
end

---
---@param strPlayer string
---@param iAttrSite int32
---@param iAttrType int32
---@param iAttrValue int32
---@return bool
function lualib:SetDynamicAttr(strPlayer, iAttrSite, iAttrType, iAttrValue)
end

---
---@param strObject string
---@return string
function lualib:MapGuid(strObject)
end

---
---@param strPlayer string
---@param strItemKey string
---@param wCount uint16
---@param strDesc string
---@param strTarget string
---@return string
function lualib:GiveOneItem(strPlayer, strItemKey, wCount, strDesc, strTarget)
end

---
---@param strMap string
---@param tRange table
---@return table
function lualib:GetRegionFreeEx(strMap, tRange)
end

---
---@param strPlayer string
---@return string
function lualib:Armor(strPlayer)
end

---
---@param strRole string
---@param wSkillID uint16
---@param byActive uint8
---无返回值
function lualib:on_switch_skill(strRole, wSkillID, byActive)
end

---
---@param strPlayer string
---@param strItemKey string
---@param iNum int32
---@param iPrice int32
---@param byBind uint8
---@return bool
function lualib:on_pre_mall(strPlayer, strItemKey, iNum, iPrice, byBind)
end

---
---@param strItem string
---@return int32
function lualib:Item_GetLevel(strItem)
end

---
---@param strObject string
---@param strKey string
---@param strValue string
---@return bool
function lualib:SetStr(strObject, strKey, strValue)
end

---
---@param strMonster string
---@param strMaster string
---无返回值
function lualib:on_escorter_fail(strMonster, strMaster)
end

---
---@return uint32
function lualib:GetAllTime()
end

---
---@param strPlayer string
---@param strItemKey string
---@param wCount int32
---@param bBind uint8
---@param bEquip bool
---@param bBag bool
---@param bWarhouse bool
---@param bAdvWarehouse bool
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:DelItemEx(strPlayer, strItemKey, wCount, bBind, bEquip, bBag, bWarhouse, bAdvWarehouse, strDesc,
                          strTarget)
end

---
---@param strCastleName string
---@return bool
function lualib:IsCastleWarStart(strCastleName)
end

---
---@param dwTimes uint32
---@return uint32
function lualib:GetAllWeeks(dwTimes)
end

---
---@param strObject string
---@param strKey string
---@return string
function lualib:GetStr(strObject, strKey)
end

---
---@param strMonster string
---@return string
function lualib:Monster_GetKeyName(strMonster)
end

---
---@param strItem string
---@param iType int32
---@return bool
function lualib:CanFixEquip(strItem, iType)
end

---
---@param strPlayer string
---@param strKey string
---@param strValue string
---@return bool
function lualib:Player_SetCustomVarStr(strPlayer, strKey, strValue)
end

---
---@param strKiller string
---@param strVictim string
---@param iPKRef int32
---无返回值
function lualib:on_post_process_pk(strKiller, strVictim, iPKRef)
end

---
---@param player string
---@param item string
---@param index uint16
---@param attr uint16
---@param attr int32
---@return bool
function lualib:Equip_SetQualProp(player, item, index, attr, attr)
end

---
---@param strPlayer string
---@param strItemKey string
---@param iCount int32
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:Player_DestroyItemBind(strPlayer, strItemKey, iCount, strDesc, strTarget)
end

---
---
---@param strPlayer string
---@param strItem string
---@param iDura int32
---@return bool
function lualib:Item_SetMaxDurability(strPlayer, strItem, iDura)
end

---
---@param strMap string
---@param bIgnoreDied bool
---@return table
function lualib:Map_GetMapPlayers(strMap, bIgnoreDied)
end

---
---@param strFamily1 string
---@param strFamily2 string
---@return bool
function lualib:StartFamilyWar(strFamily1, strFamily2)
end

---
---@param strPlayer string
---@param strItemKey string
---@param wCount uint16
---@param bBind uint8
---@param strDesc string
---@param strTarget string
---@return string
function lualib:AddSingleItem(strPlayer, strItemKey, wCount, bBind, strDesc, strTarget)
end

---
---@param strPlayer string
---@param strItem string
---@return int32
function lualib:Item_GetDurability(strPlayer, strItem)
end

---
---@param strFileName string
---@return string
function lualib:IO_FileCTime(strFileName)
end

---
---@param player string
---@param item string
---@param att0 uint8
---@param v0 uint16
---@param att1 uint8
---@param v1 uint16
---@param att2 uint8
---@param v2 uint16
---@return bool
function lualib:Equip_SetIdentifyProp(player, item, att0, v0, att1, v1, att2, v2)
end

---
---@param strPlayer string
---@param wTitleID uint16
---@return bool
function lualib:HasTitle(strPlayer, wTitleID)
end

---
---@param strNpc string
---@param strPlayer string
---无返回值
function lualib:OpenWarehouseAdv(strNpc, strPlayer)
end

---
---@param strPlayer string
---@param iIngot int
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:SubIngot(strPlayer, iIngot, strDesc, strTarget)
end

---
---@param hero string
---@return string
function lualib:GetHeroLord(hero)
end

---
---@param strMap string
---@param wX uint16
---@param wY uint16
---@param dwEffectID uint32
---@param dwLife uint32
---@return bool
function lualib:Map_AddEffect(strMap, wX, wY, dwEffectID, dwLife)
end

---
---@param strPlayer string
---@param wQuestID uint16
---@return bool
function lualib:ForceAcceptQuest(strPlayer, wQuestID)
end

---
---@param strLeader string
---@param tMembers table
---@return bool
function lualib:GenTeam(strLeader, tMembers)
end

---
---@param strPlayer string
---@param bEquip bool
---@param bBag bool
---@param bWarhouse bool
---@param bAdvWarehouse bool
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:ClearBag(strPlayer, bEquip, bBag, bWarhouse, bAdvWarehouse, strDesc, strTarget)
end

---
---@param strPlayer string
---@param strItem string
---@return bool
function lualib:InBag(strPlayer, strItem)
end

---
---@param strMonster string
---@return string
function lualib:Monster_GetCurTarget(strMonster)
end

---
---@param strKey string
---@return int32
function lualib:Item_GetStack(strKey)
end

---
---@param strMap string
---@param wX uint16
---@param wY uint16
---@param wRange uint16
---@param byDir uint8
---@param strMonsterKey string
---@param bCanRelive bool
---@param iCamp int32
---@return string
function lualib:Map_GenSingleCampMonster(strMap, wX, wY, wRange, byDir, strMonsterKey, bCanRelive, iCamp)
end

---
---@param strMonster string
---@param strSkillKey string
---@param strTarget string
---@return bool
function lualib:Monster_SpellTargetEx(strMonster, strSkillKey, strTarget)
end

---
---
---@param strRole string
---@return int32
function lualib:Gender(strRole)
end

---
---@param strPlayer string
---@param strItem string
---@return int16
function lualib:Item_GetUsesCount(strPlayer, strItem)
end

---
---@param strPlayer string
---@param dwGender uint32
---@return bool
function lualib:Player_ChangeGender(strPlayer, dwGender)
end

---
---@param strPlayer string
---@param strItemKey string
---@return bool
function lualib:ApplyEquipEx(strPlayer, strItemKey)
end

---
---@param strCastleName string
---@return string
function lualib:GetCastleOwnFamily(strCastleName)
end

---
---@param strPlayer string
---@param strMapKey string
---@return string
function lualib:Player_GetDgnByTicket(strPlayer, strMapKey)
end

---
---@param strRole string
---@param strBuffKey string
---@return int
function lualib:GetBuffTime(strRole, strBuffKey)
end

---
---@param strMsg string
---@param strName string
---@param iForeground int32
---@param iBackground int32
---无返回值
function lualib:SysMsg_SendBroadcastColor(strMsg, strName, iForeground, iBackground)
end

---
---@param job int32
---@param AI table
---@return bool
function lualib:SetDummyDefaultSkillAI(job, AI)
end

---
---@param strPlayer string
---@param iGold int32
---@param bBind bool
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:Player_SubGold(strPlayer, iGold, bBind, strDesc, strTarget)
end

---
---@param strPlayer string
---@param strItemInfo string
---@param bInstance bool
---@param wX uint16
---@param wY uint16
---@return bool
function lualib:ApplyItemXY(strPlayer, strItemInfo, bInstance, wX, wY)
end

---
---@param strMap string
---@param wX uint16
---@param wY uint16
---@param wRange uint16
---@param strNpcKey string
---@return bool
function lualib:Map_ClearNpc(strMap, wX, wY, wRange, strNpcKey)
end

---
---@param strPlayerName string
---@return int
function lualib:GetActiveCount(strPlayerName)
end

---
---@param strPlayer string
---@param strItem string
---@return bool
function lualib:InWarehouse(strPlayer, strItem)
end

---
---@return uint32
function lualib:GetZoneId()
end

---
---@param strObject string
---@param dwTimerID uint32
---@param iElapse int32
---@param iCount int32
---@param strCallBack string
---@return bool
function lualib:AddTimer(strObject, dwTimerID, iElapse, iCount, strCallBack)
end

---
---@param strCastleName string
---@return bool
function lualib:StopCastleWar(strCastleName)
end

---
---@param strPlayer string
---@return double
function lualib:GetBindGold(strPlayer)
end

---
---@param strPlayer string
---@param iGPRuntime int32
---@param iGPTotal int32
---@param iAvgTick int32
---无返回值
function lualib:on_gp(strPlayer, iGPRuntime, iGPTotal, iAvgTick)
end

---
---@param strPlayer string
---@return bool
function lualib:Player_IsCanSpell(strPlayer)
end

---
---@param strPlayer string
---无返回值
function lualib:AntiIndulgeExpire(strPlayer)
end

---
---@param strMonster string
---@param strBuffKey string
---@return bool
function lualib:Monster_DelBuff(strMonster, strBuffKey)
end

---
---@param strFileName string
---@param strContent string
---@return int32
function lualib:IO_TextFileCheckLine(strFileName, strContent)
end

---
---@param strRole string
---@param bLimit bool
---@return int32
function lualib:Hp(strRole, bLimit)
end

---
---@param strPlayer string
---@return string
function lualib:Ip(strPlayer)
end

---
---@param dwTimes uint32
---@return uint32
function lualib:GetAllMonths(dwTimes)
end

---
---@param strMap string
---@param strItem string
---@return int32
function lualib:Item_GetPosX(strMap, strItem)
end

---
---@param strPlayer string
---@param strItemKey string
---@param wCount uint16
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:TakeItem(strPlayer, strItemKey, wCount, strDesc, strTarget)
end

---
---@param strRole string
---@param strKiller string
---无返回值
function lualib:on_post_die(strRole, strKiller)
end

---
---@param strPlayer string
---@return uint32
function lualib:UserID(strPlayer)
end

---
---@param strPlayer string
---@param bBag bool
---@param bWarhouse bool
---@param bAdvWarhouse bool
---@return int32
function lualib:BagFree(strPlayer, bBag, bWarhouse, bAdvWarhouse)
end

---
---@param strKiller string
---@param strVictim string
---@return bool
function lualib:on_pre_process_pk(strKiller, strVictim)
end

---
---@param strString string
---@return string
function lualib:UrlEncode(strString)
end

---
---@param player string
---@param item string
---@return int
function lualib:Equip_GetExtNum(player, item)
end

---
---@param player string
---@param item string
---@param attr uint16
---@param attr int32
---@return bool
function lualib:Equip_SetRefineProp(player, item, attr, attr)
end

---
---@param strPlayer string
---@return string
function lualib:Weapon(strPlayer)
end

---
---@param strDirName string
---@return bool
function lualib:IO_DeleteDir(strDirName)
end

---
---@param name string
---@param type int32
---@param reason string
---@return bool
function lualib:KickByName(name, type, reason)
end

---
---@param strCode string
---@return string
function lualib:MD5(strCode)
end

---
---@param strPlayer string
---@param strItem string
---@param strName string
---@return bool
function lualib:Item_ChangeName(strPlayer, strItem, strName)
end

---
---无返回值
function lualib:on_system_stop()
end

---
---@param strMonster string
---@param wBuffID uint16
---@return bool
function lualib:Monster_IsHasBuff(strMonster, wBuffID)
end

---
---@param strPlayer string
---@return bool
function lualib:Player_IsGuildLeader(strPlayer)
end

---
---@param strPlayer string
---@param strItem string
---@param iType int
---@return int
function lualib:Item_GetRepairCharge(strPlayer, strItem, iType)
end

---
---@param strPlayer string
---@param strFamilyName string
---@return bool
function lualib:IsFamilyAlly(strPlayer, strFamilyName)
end

---
---@param tObject table
---@param wX uint16
---@param wY uint16
---@return bool
function lualib:IsInRegion(tObject, wX, wY)
end

---
---@param strFileName string
---@return string
function lualib:IO_FileMTime(strFileName)
end

---
---@param strPlayer string
---@param strItem string
---@param strKey string
---@return string
function lualib:Item_GetCustomVarStr(strPlayer, strItem, strKey)
end

---
---@param strRole string
---@return bool
function lualib:Kill(strRole)
end

---
---@param dwTimes uint32
---@return uint32
function lualib:GetMonth(dwTimes)
end

---
---@param strFileName string
---@return string
function lualib:IO_TextFileRndGetLine(strFileName)
end

---
---@return uint32
function lualib:GetAgentId()
end

---
---@param strPlayer string
---@param iAttrSite int32
---@return table
function lualib:GetDynamicAttr(strPlayer, iAttrSite)
end

---
---@param strPlayer string
---@param strMapKey string
---@param wX uint16
---@param wY uint16
---@param wRange uint16
---@return bool
function lualib:Player_EnterDgn(strPlayer, strMapKey, wX, wY, wRange)
end

---
---@param dwTimes uint32
---@return uint32
function lualib:GetDay(dwTimes)
end

---
---@param strRole string
---@param iExp int32
---无返回值
function lualib:on_add_exp(strRole, iExp)
end

---
---@param strMsg string
---无返回值
function lualib:Print(strMsg)
end

---
---@param strPlayer string
---@param strServantKey string
---@param byLevel uint8
---@return string
function lualib:Player_Summon(strPlayer, strServantKey, byLevel)
end

---
---@param strObject string
---@param dwTimerID uint32
---@param iElapse int32
---@param iCount int32
---@param strCallBack string
---@param strParam string
---@return bool
function lualib:AddTimerEx(strObject, dwTimerID, iElapse, iCount, strCallBack, strParam)
end

---
---@param strPlayer string
---@param iBilloutIngot int32
---@param byBind uint8
---@param strItem string
---无返回值
function lualib:on_mall(strPlayer, iBilloutIngot, byBind, strItem)
end

---
---@param strRole string
---@return int32
function lualib:MagDefPoint(strRole)
end

---
---@param byCount uint8
---@param strMsg string
---无返回值
function lualib:SysTopMsg(byCount, strMsg)
end

---
---@param strPlayer string
---@return bool
function lualib:IsAntiIndulge(strPlayer)
end

---
---@param strPlayer string
---@param strItemInfo string
---@param iSite int
---@return bool
function lualib:TakeOnEx(strPlayer, strItemInfo, iSite)
end

---
---@param strRole string
---@return int32
function lualib:TaoAtkPoint(strRole)
end

---
---@param strMsg string
---@param strName string
---无返回值
function lualib:SysMsg_SendBroadcastMsg(strMsg, strName)
end

---
---@param strMap string
---@param strNpcKey string
---@return string
function lualib:Map_GenNpcRnd(strMap, strNpcKey)
end

---
---@param strMsg string
---无返回值
function lualib:Debug(strMsg)
end

---
---@param strRole string
---@param bLimit bool
---@return int32
function lualib:MagDef(strRole, bLimit)
end

---
---@param strMonster string
---@return bool
function lualib:Monster_IsExist(strMonster)
end

---
---@param strPlayer string
---无返回值
function lualib:on_login(strPlayer)
end

---
---@param strPlayer string
---@return int32
function lualib:GetTitle(strPlayer)
end

---
---@param strNpc string
---@param strPlayer string
---@param strTalk string
---@param wWidth uint16
---@param wHeight uint16
---无返回值
function lualib:NPCTalkDetailEx(strNpc, strPlayer, strTalk, wWidth, wHeight)
end

---
---@param byCount uint8
---@param strMsg string
---无返回值
function lualib:SysMsg_SendTopMsg(byCount, strMsg)
end

---
---@param player string
---@param opt string
---无返回值
function lualib:StartAutoRun(player, opt)
end

---
---@param strMap string
---@param wX uint16
---@param wY uint16
---@param wRange uint16
---@param strMonsterKey string
---@param bIgnoreDied bool
---@param bIgnorePet bool
---@return bool
function lualib:Map_ClearMonster(strMap, wX, wY, wRange, strMonsterKey, bIgnoreDied, bIgnorePet)
end

---
---@param strPlayer string
---@return uint32
function lualib:LastLogoutTime(strPlayer)
end

---
---@param strPlayer string
---@param strMonsterKey string
---@param dwLife uint32
---@param strPaths string
---@return bool
function lualib:GenTraveler(strPlayer, strMonsterKey, dwLife, strPaths)
end

---
---@param strRole string
---@param strTarget string
---@param wSkillID uint16
---@return bool
function lualib:on_pre_catch(strRole, strTarget, wSkillID)
end

---
---@param strPlayer string
---@return double
function lualib:Player_GetExpLimit(strPlayer)
end

---
---@param strPlayer string
---@param strBuffKey string
---@param dwTimes uint32
---@return bool
function lualib:Player_AddBuff(strPlayer, strBuffKey, dwTimes)
end

---
---@param strRole string
---@return bool
function lualib:on_pre_drop(strRole)
end

---
---@param iMin int32
---@param iMax int32
---@return int32
function lualib:Random(iMin, iMax)
end

---
---@param strNpc string
---@param strKey string
---@param strValue string
---@return bool
function lualib:Npc_SetCustomVar(strNpc, strKey, strValue)
end

---
---@param strPlayer string
---@param strMsg string
---无返回值
function lualib:SendSpeakerMsg(strPlayer, strMsg)
end

---
---@param strPlayer string
---@param iVipID int
---@return uint32
function lualib:GetVipRemain(strPlayer, iVipID)
end

---
---@param player string
---@param script string
---@param scriptText string
---@return bool
function lualib:ScriptTextToPlayer(player, script, scriptText)
end

---
---@param strPlayer string
---@param strSkillKey string
---@return bool
function lualib:Player_IsHasSkill(strPlayer, strSkillKey)
end

---
---@param strObject string
---无返回值
function lualib:on_create(strObject)
end

---
---@param player string
---@param item string
---@param index uint16
---@return table
function lualib:Equip_GetExtProp(player, item, index)
end

---
---@param strPlayer string
---@return string
function lualib:GetFamilyName(strPlayer)
end

---
---@param strMap string
---@return bool
function lualib:Map_ClearDgnMonster(strMap)
end

---
---@param strFamily string
---@param strMsg string
---@return bool
function lualib:SysGuildMsg(strFamily, strMsg)
end

---
---@param player string
---@param hero string
---@return bool
function lualib:DeleteHeroForPlayer(player, hero)
end

---
---@param strPlayer string
---@return bool
function lualib:AllServantBetry(strPlayer)
end

---
---@param strNpc string
---@return bool
function lualib:Npc_IsExist(strNpc)
end

---
---@param strPlayer string
---@param bBag bool
---@param bWarhouse bool
---@param bAdvWarhouse bool
---@return table
function lualib:BagItemList(strPlayer, bBag, bWarhouse, bAdvWarhouse)
end

---
---@param strPlayer string
---@param wQuestID uint16
---@return bool
function lualib:DropQuest(strPlayer, wQuestID)
end

---
---@param strRole string
---@param iValue int32
---无返回值
function lualib:SetHpPoint(strRole, iValue)
end

---
---@param strPlayer string
---@return bool
function lualib:Player_IsTeamLeader(strPlayer)
end

---
---@param strPlayer string
---@param strItemKey string
---@return int32
function lualib:ItemCount(strPlayer, strItemKey)
end

---
---@param strMap string
---@param wX uint16
---@param wY uint16
---@param iGold int32
---@param bMustEmpty bool
---@param dwFreeze uint32
---@param iDropType int
---@param strDropHost string
---@return string
function lualib:Map_GenGold(strMap, wX, wY, iGold, bMustEmpty, dwFreeze, iDropType, strDropHost)
end

---
---@param strRole string
---@param strItem string
---@param wItemID uint16
---@param strItemKey string
---无返回值
function lualib:on_item_amount_zero(strRole, strItem, wItemID, strItemKey)
end

---
---@param strPlayer string
---@param iAttrType int32
---@return double
function lualib:Player_GetIntProp(strPlayer, iAttrType)
end

---
---@param strRole string
---@param iValue int32
---@param bIsLimit bool
---无返回值
function lualib:SetMagAtk(strRole, iValue, bIsLimit)
end

---
---@param player string
---@param url string
---无返回值
function lualib:WebBrowser(player, url)
end

---
---@param strMap string
---@param strNpcKey string
---@return string
function lualib:Map_GetMapNpc(strMap, strNpcKey)
end

---
---@param strMonster string
---@param wMonsterID uint16
---@param strMonsterName string
---@param wX uint16
---@param wY uint16
---无返回值
function lualib:on_monster_appear(strMonster, wMonsterID, strMonsterName, wX, wY)
end

---
---@param strPlayer string
---@param strItem string
---@return uint8
function lualib:Item_GetType(strPlayer, strItem)
end

---
---@param strPlayer string
---@param iGold int
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:SubBindGold(strPlayer, iGold, strDesc, strTarget)
end

---
---@param strRole string
---@param strMapKey string
---@param wSkillID uint16
---@param strSkillName string
---@param wX uint16
---@param wY uint16
---@return bool
function lualib:on_pre_mining(strRole, strMapKey, wSkillID, strSkillName, wX, wY)
end

---
---@param strRole string
---@param iValue int32
---无返回值
function lualib:SetAchievement(strRole, iValue)
end

---
---@param player string
---@param dlg int
---@param content string
---@param timeout int
---@param callback string
---@param param string
---无返回值
function lualib:MsgBoxEx(player, dlg, content, timeout, callback, param)
end

---
---@param strPlayer string
---@param strItemInfo string
---@param bInstance bool
---@return bool
function lualib:ApplyItem(strPlayer, strItemInfo, bInstance)
end

---
---@return table
function lualib:GetAllFamilys()
end

---
---@param strObject string
---无返回值
function lualib:ClearTimer(strObject)
end

---
---@param strPlayer string
---@return bool
function lualib:Player_IsCanTalk(strPlayer)
end

---
---@param strRole string
---@param iValue int32
---@param bIsLimit bool
---无返回值
function lualib:SetEquipWeight(strRole, iValue, bIsLimit)
end

---
---@param strCastleName string
---@param strCastle string
---@param strBasilica string
---无返回值
function lualib:on_castle_war_start(strCastleName, strCastle, strBasilica)
end

---
---@param strNpc string
---@param strKey string
---@return string
function lualib:Npc_GetCustomVar(strNpc, strKey)
end

---
---@param strRole string
---@param wBuffID uint16
---无返回值
function lualib:on_remove_buff(strRole, wBuffID)
end

---
---@param strMap string
---@return string
function lualib:MapOwnerFamily(strMap)
end

---
---@param strItem string
---@return string
function lualib:Item_GetRole(strItem)
end

---
---@param strPlayer string
---@return string
function lualib:GetFamilyTitle(strPlayer)
end

---
---@param strRole string
---@param iValue int32
---无返回值
function lualib:SetLevel(strRole, iValue)
end

---
---@param strPlayer string
---@return bool
function lualib:Player_IsCanAttack(strPlayer)
end

---
---@param strRole string
---@param strFromMap string
---@param strDestMap string
---@return bool
function lualib:on_pre_enter_jump(strRole, strFromMap, strDestMap)
end

---
---@param strPlayer string
---@param strItemKey string
---@param wCount uint16
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:Player_GiveItemBind(strPlayer, strItemKey, wCount, strDesc, strTarget)
end

---
---@param strPlayer string
---@param iValue int32
---@return bool
function lualib:Player_ReCalGuildCtrb(strPlayer, iValue)
end

---
---@param strFamily string
---@param strMsg string
---@return bool
function lualib:SysMsg_SendGuildMsg(strFamily, strMsg)
end

---
---@param strPlayer string
---@param strMsg string
---@return bool
function lualib:SysMsg_SendTriggerMsg(strPlayer, strMsg)
end

---
---@param strMap string
---@return string
function lualib:Map_GetMapKeyName(strMap)
end

---
---@param strMonster string
---@return bool
function lualib:Monster_Remove(strMonster)
end

---
---@param strSQL string
---@param strCallBack string
---@param strParam string
---@return bool
function lualib:PostDBEvt(strSQL, strCallBack, strParam)
end

---
---@param strPlayer string
---@param strURL string
---@return bool
function lualib:SysMsg_SendWebPage(strPlayer, strURL)
end

---
---@param strFileName string
---@param bOverlap bool
---@return bool
function lualib:IO_CreateTextFile(strFileName, bOverlap)
end

---
---@param strPlayer string
---@return bool
function lualib:RemoveEscorter(strPlayer)
end

---
---@param strMonster string
---@return string
function lualib:Monster_GetMaster(strMonster)
end

---
---@param iType int
---@param iJob int
---@param iGender int
---@param iAttrName int
---@return string
function lualib:RoleRankTop(iType, iJob, iGender, iAttrName)
end

---
---@param strMonster string
---@param iAttrType int32
---@return double
function lualib:Monster_GetIntProp(strMonster, iAttrType)
end

---
---@param strRole string
---@param bLimit bool
---@return int32
function lualib:PhyDef(strRole, bLimit)
end

---
---@param strPlayer string
---@param strItemKey string
---@param bBag bool
---@param bWarhouse bool
---@param bAdvWarehouse bool
---@param bBindType uint8
---@return int32
function lualib:ItemCountByKey(strPlayer, strItemKey, bBag, bWarhouse, bAdvWarehouse, bBindType)
end

---
---@param byCount uint8
---@param strMsg string
---@param iForeground int32
---@param iBackground int32
---无返回值
function lualib:SysMsg_SendTopColor(byCount, strMsg, iForeground, iBackground)
end

---
---@param strPlayer string
---@param byMode uint8
---@return bool
function lualib:Player_ChangeAttackMode(strPlayer, byMode)
end

---
---@param player string
---@param is bool
---@param is bool
---无返回值
function lualib:SetNetCheckEx(player, is, is)
end

---
---@param strObject string
---@return int32
function lualib:GUIDType(strObject)
end

---
---@param strRole string
---@param wBuffID uint16
---无返回值
function lualib:on_apply_buff(strRole, wBuffID)
end

---
---@param strCallBack string
---@param strParam string
---无返回值
function lualib:GSTriggerScript(strCallBack, strParam)
end

---
---@param strObject string
---无返回值
function lualib:ClearTrigger(strObject)
end

---
---@param strRole string
---@param strBuffKey string
---@return bool
function lualib:HasBuff(strRole, strBuffKey)
end

---
---@param strObject string
---@param dwTimerID uint32
---@return bool
function lualib:DisableTimer(strObject, dwTimerID)
end

---
---@param player string
---@param item string
---@param index uint16
---@return table
function lualib:Equip_GetQualProp(player, item, index)
end

---
---@param strRole string
---@param bLimit bool
---@return int32
function lualib:PhyAtk(strRole, bLimit)
end

---
---@return string
function lualib:GetGroupName()
end

---
---@param strRole string
---@param strAttacker string
---@param iHp int
---@param iDefense int
---@param strKillKey string
---@return int
function lualib:on_pre_harm(strRole, strAttacker, iHp, iDefense, strKillKey)
end

---
---@param player string
---@param hero string
---@param state int32
---@return bool
function lualib:SetHeroState(player, hero, state)
end

---
---@param strRoleName string
---@param strItemKey string
---@param strItem string
---@param iSrcValue int32
---@param iRefValue int32
---@param strDescript string
---@param strTarget string
---@param strDetail string
---无返回值
function lualib:LogDetail(strRoleName, strItemKey, strItem, iSrcValue, iRefValue, strDescript, strTarget, strDetail)
end

---
---@param strRole string
---@param iValue int32
---无返回值
function lualib:SetPhyAtkPoint(strRole, iValue)
end

---
---@param dwTimes uint32
---@return uint32
function lualib:GetAllDays(dwTimes)
end

---
---@param strMonster string
---@return bool
function lualib:Monster_ClearHateList(strMonster)
end

---
---@param strZip string
---@return string
function lualib:Zip2Str(strZip)
end

---
---@param strPlayer string
---@param iIntegral int32
---@return bool
function lualib:Player_IsIntegralEnough(strPlayer, iIntegral)
end

---
---@param strMonster string
---@param wX uint16
---@param wY uint16
---@return bool
function lualib:Monster_Escape(strMonster, wX, wY)
end

---
---@param strText string
---@return string
function lualib:Str2Zip(strText)
end

---
---@param strObject string
---@return uint32
function lualib:GenTimerId(strObject)
end

---
---@param AI table
---@return bool
function lualib:SetDummyDefaultAIOption(AI)
end

---
---@param strRole string
---@return int32
function lualib:Hair(strRole)
end

---
---@param strRole string
---@param iValue int32
---无返回值
function lualib:SetMpPoint(strRole, iValue)
end

---
---@param dummy string
---@param AI table
---@return bool
function lualib:SetDummyAIOption(dummy, AI)
end

---
---@param strPlayer string
---@param wAttrType uint16
---@return string
function lualib:Player_GetStrProp(strPlayer, wAttrType)
end

---
---@param strPlayer string
---@param strItemInfo string
---@param bInstance bool
---@return bool
function lualib:DropItem(strPlayer, strItemInfo, bInstance)
end

---
---@param strMap string
---@param tRange table
---@param bIgnoreDied bool
---@return table
function lualib:Map_GetRegionDummys(strMap, tRange, bIgnoreDied)
end

---
---@param strPlayer string
---@param iVipLevel int
---@return uint32
function lualib:GetVipLevelRemain(strPlayer, iVipLevel)
end

---
---@param strPlayer string
---@param strItem string
---@return bool
function lualib:Item_IsExist(strPlayer, strItem)
end

---
---@param strMap string
---@param wX uint16
---@param wY uint16
---@param strItemKey string
---@param wCount uint16
---@param bMustEmpty bool
---@param dwFreeze uint32
---@param strPlayer string
---@return string
function lualib:Map_GenItemEx(strMap, wX, wY, strItemKey, wCount, bMustEmpty, dwFreeze, strPlayer)
end

---
---@param strRole string
---@return int32
function lualib:Level(strRole)
end

---
---@param strPlayer string
---@return double
function lualib:GetIntegral(strPlayer)
end

---
---@param strItem string
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:Item_MapRemove(strItem, strDesc, strTarget)
end

---
---@param strPlayer string
---@param wQuestID uint16
---@return bool
function lualib:CanAccomplishQuest(strPlayer, wQuestID)
end

---
---@param strPlayer string
---@param strKiller string
---无返回值
function lualib:on_post_player_die(strPlayer, strKiller)
end

---
---@param strPlayer string
---@param bAdv bool
---@return bool
function lualib:Player_FixEquip(strPlayer, bAdv)
end

---
---@param strMonster string
---@param strKiller string
---无返回值
function lualib:on_post_monster_die(strMonster, strKiller)
end

---
---@param strMap string
---@param strMsg string
---@return bool
function lualib:SysMsg_SendMapMsg(strMap, strMsg)
end

---
---@param strFileName string
---@param strContent string
---@return bool
function lualib:IO_AppendFile(strFileName, strContent)
end

---
---@param strPlayer string
---@param wTitleID uint16
---无返回值
function lualib:AddTitle(strPlayer, wTitleID)
end

---
---@param strMonster string
---无返回值
function lualib:on_monster_in_fight(strMonster)
end

---
---@param strPlayer string
---@return string
function lualib:Mount(strPlayer)
end

---
---@param strPlayer string
---@param strItem string
---@param strKey string
---@param iValue int32
---@return bool
function lualib:Item_SetCustomVarInt(strPlayer, strItem, strKey, iValue)
end

---
---@param strServant string
---@return int32
function lualib:Player_GetServantLevel(strServant)
end

---
---@param player string
---@param dlg int
---@param content string
---@param timeout int
---@param param int
---@param callback string
---@param param string
---无返回值
function lualib:InputDlgEx(player, dlg, content, timeout, param, callback, param)
end

---
---@param strMap string
---@param wSourX uint16
---@param wSourY uint16
---@return bool
function lualib:Map_DelJumpPoint(strMap, wSourX, wSourY)
end

---
---@param strPlayer string
---@param strItem string
---@param strKey string
---无返回值
function lualib:Item_NotifyCustomParam(strPlayer, strItem, strKey)
end

---
---@param strNpc string
---@param strPlayer string
---无返回值
function lualib:OpenWarehouse(strNpc, strPlayer)
end

---
---@param hero string
---@return int32
function lualib:GetHeroRage(hero)
end

---
---@param strPlayer string
---@param strMsg string
---@return bool
function lualib:SysTipsMsg(strPlayer, strMsg)
end

---
---@param player string
---@param title string
---@param url string
---@param param string
---无返回值
function lualib:WebBoxEx(player, title, url, param)
end

---
---@param strPlayer string
---@param wTitleID uint16
---@param dwTimes uint32
---无返回值
function lualib:AddTitleEx(strPlayer, wTitleID, dwTimes)
end

---
---@param dwTick uint32
---无返回值
function lualib:SetScriptTimeout(dwTick)
end

---
---@param strRole string
---@param strKiller string
---@return bool
function lualib:pre_die(strRole, strKiller)
end

---
---@param strFamilyName1 string
---@param strFamilyName2 string
---@return bool
function lualib:HasFamilyWar(strFamilyName1, strFamilyName2)
end

---
---@param strPlayer string
---@param strItem string
---@param iValue int16
---@return bool
function lualib:Item_SetUsesCount(strPlayer, strItem, iValue)
end

---
---@param strSkillKey string
---@return uint32
function lualib:SkillKey2ID(strSkillKey)
end

---
---@param Url string
---@param callback string
---@param param string
---@param timeout uint32
---@return bool
function lualib:GetURL(Url, callback, param, timeout)
end

---
---@param strPlayer string
---无返回值
function lualib:on_ride_request(strPlayer)
end

---
---@param strRole string
---@return int32
function lualib:LuckCurse(strRole)
end

---
---@param strPlayer string
---@param strItem string
---@param iValue int32
---@return bool
function lualib:Item_SetLife(strPlayer, strItem, iValue)
end

---
---@return uint32
function lualib:GetSvrRunTime()
end

---
---@param strMap string
---@param strNpcKey string
---@return bool
function lualib:Map_RemoveNpc(strMap, strNpcKey)
end

---
---@param strPlayer string
---@param iExp int32
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:SubExp(strPlayer, iExp, strDesc, strTarget)
end

---
---@param strMonster string
---@param strMaster string
---无返回值
function lualib:on_escorter_far(strMonster, strMaster)
end

---
---@param strRole string
---@param strTarget string
---@param wSkillID uint16
---@return bool
function lualib:on_pre_dig_meat(strRole, strTarget, wSkillID)
end

---
---@param log int32
---@param is bool
---@return bool
function lualib:SetLog(log, is)
end

---
---@return string
function lualib:GetZoneKey()
end

---
---@param strSourMap string
---@param strDestMap string
---@param wSourX uint16
---@param wSourY uint16
---@param wDestX uint16
---@param wDestY uint16
---@return bool
function lualib:Map_AddJumpPoint(strSourMap, strDestMap, wSourX, wSourY, wDestX, wDestY)
end

---
---@param strCastleName string
---@param dwTimes uint32
---@param dwDuration uint32
---@return bool
function lualib:ModifyCastleStart(strCastleName, dwTimes, dwDuration)
end

---
---@param oObject object
---@return string
function lualib:encode(oObject)
end

---
---@param strRole string
---@param wSkillID uint16
---无返回值
function lualib:on_add_skill(strRole, wSkillID)
end

---
---@param strPlayer string
---@param strContent string
---无返回值
function lualib:MsgBox(strPlayer, strContent)
end

---
---@param strPlayer string
---@param iGold int
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:SubGold(strPlayer, iGold, strDesc, strTarget)
end

---
---@param strMaster string
---@param strSub string
---@return table
function lualib:split(strMaster, strSub)
end

---
---@param strMaster string
---@param strFinder string
---@param strReplace string
---@return string
function lualib:replace(strMaster, strFinder, strReplace)
end

---
---@param strPlayer string
---@param strKey string
---无返回值
function lualib:Player_NotifyCustomParam(strPlayer, strKey)
end

---
---@param iAscii int
---@return string
function lualib:chr(iAscii)
end

---
---@param strRole string
---@return int32
function lualib:Meritor(strRole)
end

---
---@param strPlayer string
---@param strMsg string
---@return bool
function lualib:SysWarnMsg(strPlayer, strMsg)
end

---
---@param strChar string
---@return int
function lualib:ord(strChar)
end

---
---@param strString string
---@param iOffset int
---@param iLen int
---@return string
function lualib:mid(strString, iOffset, iLen)
end

---
---@param strPlayer string
---@param strItem string
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:Item_Destroy(strPlayer, strItem, strDesc, strTarget)
end

---
---@param strPlayer string
---@param wQuestID uint16
---@return bool
function lualib:AcceptQuest(strPlayer, wQuestID)
end

---
---@param strRoleName string
---@param strItemKey string
---@param strItem string
---@param iSrcValue int32
---@param iRefValue int32
---@param strDescript string
---@param strTarget string
---无返回值
function lualib:Log(strRoleName, strItemKey, strItem, iSrcValue, iRefValue, strDescript, strTarget)
end

---
---@return string
function lualib:GenUniqueID()
end

---
---@param strString string
---@return string
function lualib:trim(strString)
end

---
---@param strPlayer string
---@param strKiller string
---@return bool
function lualib:on_pre_player_die(strPlayer, strKiller)
end

---
---@param strPlayer string
---@param bDropItem bool
---@param bShowKiller bool
---@return bool
function lualib:Player_Kill(strPlayer, bDropItem, bShowKiller)
end

---
---@param strPlayer string
---@param strServant string
---@return bool
function lualib:ServantBetry(strPlayer, strServant)
end

---
---@param strPlayer string
---@param strItem string
---@param iSite int32
---@return bool
function lualib:MoveItem(strPlayer, strItem, iSite)
end

---
---@param strMap string
---@param tRange table
---@param bIgnoreDied bool
---@return table
function lualib:Map_GetRegionPlayersEx(strMap, tRange, bIgnoreDied)
end

---
---@param strMonster string
---@param wSkillID uint16
---@param strTarget string
---@return bool
function lualib:Monster_SpellTarget(strMonster, wSkillID, strTarget)
end

---
---@param strMap string
---@param tRange table
---@param strNpcKey string
---@return table
function lualib:Map_GetRegionNpcsEx(strMap, tRange, strNpcKey)
end

---
---@param strCastleName string
---@return string
function lualib:GetCastleBasiGuid(strCastleName)
end

---
---@param strPlayer string
---@param dwCampID uint32
---@return uint32
function lualib:CampCount(strPlayer, dwCampID)
end

---
---@param strRole string
---@return int32
function lualib:Achievement(strRole)
end

---
---@param strPlayer string
---@return uint32
function lualib:Player_GetGuildCtrb(strPlayer)
end

---
---@param player string
---@param item string
---@param level uint8
---@return bool
function lualib:Equip_SetRefineLevel(player, item, level)
end

---
---@param strPlayer string
---@param strItem string
---@param iDura int32
---@return bool
function lualib:Item_SetDurability(strPlayer, strItem, iDura)
end

---
---@param strMap string
---@param strItemKey string
---@param tRange table
---@return table
function lualib:Map_GetRegionItemsEx(strMap, strItemKey, tRange)
end

---
---@param strPlayer string
---@param strItem string
---@return bool
function lualib:InEquip(strPlayer, strItem)
end

---
---@param strPlayer string
---@return int32
function lualib:GetFamilyJoinList(strPlayer)
end

---
---@param strKey string
---@param dbValue string
---@param byType uint8
---@return bool
function lualib:SetDBStrEx(strKey, dbValue, byType)
end

---
---@param strPlayer string
---@param wSite uint16
---@return string
function lualib:Item_GetBySite(strPlayer, wSite)
end

---
---@param strRole string
---@param iValue int32
---无返回值
function lualib:SetLuckCurse(strRole, iValue)
end

---
---@param strPlayer string
---@param strItem string
---@return bool
function lualib:InAdvWarehouse(strPlayer, strItem)
end

---
---@param strPlayer string
---@param strItemKey string
---@param wCount uint16
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:GiveBindItem(strPlayer, strItemKey, wCount, strDesc, strTarget)
end

---
---@param strCastleName string
---@param strFamilyName string
---@return bool
function lualib:HasCastleWar(strCastleName, strFamilyName)
end

---
---@param strNpc string
---@return int32
function lualib:Npc_GetPosX(strNpc)
end

---
---@param strPlayer string
---@param strItem string
---@return bool
function lualib:HasItem(strPlayer, strItem)
end

---
---@param strObject string
---@param strKey string
---@return string
function lualib:GetTempStr(strObject, strKey)
end

---
---@param strObject string
---@param strKey string
---@return int32
function lualib:GetTempInt(strObject, strKey)
end

---
---@param player string
---@return table
function lualib:GetPlayerHeroList(player)
end

---
---@param strMap string
---@param tRange table
---@param wLimit uint16
---@return table
function lualib:GetRegionFreeRndEx(strMap, tRange, wLimit)
end

---
---@param strFileName string
---@param dwLine uint32
---@param strContent string
---@return bool
function lualib:IO_TextFileInsertLine(strFileName, dwLine, strContent)
end

---
---@param strKiller string
---@param strVictim string
---@return bool
function lualib:pre_process_pk(strKiller, strVictim)
end

---
---@param strFileName string
---@return bool
function lualib:IO_DeleteFile(strFileName)
end

---
---@param strRole string
---@param iValue int32
---无返回值
function lualib:SetMagAtkPoint(strRole, iValue)
end

---
---@param strPlayer string
---@return int32
function lualib:Player_GetBagSize(strPlayer)
end

---
---@param strRole string
---@return bool
function lualib:pre_player_relive(strRole)
end

---
---@param strRole string
---无返回值
function lualib:on_post_drop(strRole)
end

---
---@param strPlayer string
---@param strKiller string
---@return bool
function lualib:pre_player_die(strPlayer, strKiller)
end

---
---@param strObject string
---@param strKey string
---@param strValue string
---@return bool
function lualib:SetWeekStr(strObject, strKey, strValue)
end

---
---@param strPlayer string
---@param strItem string
---@param iAmount int32
---@return bool
function lualib:Item_SetAmount(strPlayer, strItem, iAmount)
end

---
---@param strMonster string
---@param strKey string
---@param strValue string
---@return bool
function lualib:Monster_SetCustomVarStr(strMonster, strKey, strValue)
end

---
---@param strKiller string
---@param strVictim string
---@param iPKRef int32
---无返回值
function lualib:post_process_pk(strKiller, strVictim, iPKRef)
end

---
---@param strRole string
---@param strTarget string
---@param wSkillID uint16
---无返回值
function lualib:on_restore_process(strRole, strTarget, wSkillID)
end

---
---@param strRole string
---@return int32
function lualib:MagAtkPoint(strRole)
end

---
---@param strRole string
---@param iLockStatus int32
---无返回值
function lualib:SetLockSwitch(strRole, iLockStatus)
end

---
---@param strPlayer string
---@param strKey string
---@return int32
function lualib:Player_GetCustomVarInt(strPlayer, strKey)
end

---
---@param strPlayer string
---@return int16
function lualib:Player_GetDir(strPlayer)
end

---
---@param strMonster string
---@param strKiller string
---无返回值
function lualib:post_monster_die(strMonster, strKiller)
end

---
---@param strRole string
---@param strKiller string
---无返回值
function lualib:post_die(strRole, strKiller)
end

---
---@param strPlayer string
---无返回值
function lualib:on_unride_request(strPlayer)
end

---
---@param strItem string
---无返回值
function lualib:on_timer_check(strItem)
end

---
---@param strItemKey string
---@return table
function lualib:Item_DataRow(strItemKey)
end

---
---@param strRole string
---@param wWidth uint16
---@param wHeight uint16
---@return bool
function lualib:SetPanelSize(strRole, wWidth, wHeight)
end

---
---@param strMonster string
---@param strTarget string
---@return bool
function lualib:Monster_SetAttackTarget(strMonster, strTarget)
end

---
---@param strPlayer string
---@return bool
function lualib:on_pre_curse(strPlayer)
end

---
---@param strPlayer string
---@param wQuestID uint16
---@param wSelect uint16
---@return bool
function lualib:AccomplishQuest(strPlayer, wQuestID, wSelect)
end

---
---@param strKeyword string
---@param byType uint8
---无返回值
function lualib:DisaFbdLogin(strKeyword, byType)
end

---
---@param strMap string
---@param strKey string
---@param iValue uint32
---@return bool
function lualib:Map_SetCustomVarInt(strMap, strKey, iValue)
end

---
---@param dummy string
---@return bool
function lualib:DestroyDummy(dummy)
end

---
---@param strCastleName string
---@param strKey string
---@return int32
function lualib:GetCastleCustomVarInt(strCastleName, strKey)
end

---
---@param strRole string
---@param iValue int32
---@param bIsLimit bool
---无返回值
function lualib:SetBrawn(strRole, iValue, bIsLimit)
end

---
---@return uint32
function lualib:GetGroupId()
end

---
---@param strItem string
---@return uint32
function lualib:Item_GetIcon(strItem)
end

---
---@param strRole string
---@param strAttacker string
---@param iHp int32
---@param strSkillKey string
---无返回值
function lualib:on_attack_ex(strRole, strAttacker, iHp, strSkillKey)
end

---
---@param strPlayer string
---@param strItem string
---@param strKey string
---@param strValue string
---@return bool
function lualib:Item_SetCustomVarStr(strPlayer, strItem, strKey, strValue)
end

---
---@param strRole string
---@param iExp int32
---无返回值
function lualib:on_add_exp_all(strRole, iExp)
end

---
---@param strMonster string
---@param strBuffKey string
---@param dwTimes uint32
---@return bool
function lualib:Monster_AddBuff(strMonster, strBuffKey, dwTimes)
end

---
---@param strMapKey string
---@return table
function lualib:MapRndPos(strMapKey)
end

---
---@param strMap string
---@param wX uint16
---@param wY uint16
---@param wRange uint16
---@param wLimit uint16
---@return table
function lualib:GetRegionFreeRnd(strMap, wX, wY, wRange, wLimit)
end

---
---@param strRole string
---@return int32
function lualib:HairColor(strRole)
end

---
---@param strRole string
---@param strTarget string
---@param wSkillID uint16
---无返回值
function lualib:on_damage_process(strRole, strTarget, wSkillID)
end

---
---@param strPlayer string
---@param dwCampID uint32
---@return uint32
function lualib:CampInteg(strPlayer, dwCampID)
end

---
---@param strPlayer string
---@param iType int
---@param iSubtype int
---@param bEquip bool
---@param bBag bool
---@param bWarehouse bool
---@param bWarehouseAdv bool
---@return table
function lualib:ItemsByType(strPlayer, iType, iSubtype, bEquip, bBag, bWarehouse, bWarehouseAdv)
end

---
---@param wChannelType uint16
---@param strParam string
---@param strMsg string
---无返回值
function lualib:NotifyCSChannelMsg(wChannelType, strParam, strMsg)
end

---
---@param strMap string
---@param wX uint16
---@param wY uint16
---@param wRange uint16
---@return table
function lualib:GetRegionFree(strMap, wX, wY, wRange)
end

---
---@param strRole string
---@param iValue int32
---无返回值
function lualib:SetDir(strRole, iValue)
end

---
---@param strPlayer string
---@param strItem string
---@return int32
function lualib:Item_GetMaxDurability(strPlayer, strItem)
end

---
---@param tFuncList table
---@return bool
function lualib:SetFormAllowFunc(tFuncList)
end

---
---@param strPlayer string
---@param iGold int
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:SubDeposit(strPlayer, iGold, strDesc, strTarget)
end

---
---@param strPlayer string
---@param strNpcKey string
---@param wRange uint16
---@return bool
function lualib:Player_NpcMove(strPlayer, strNpcKey, wRange)
end

---
---@param sender string
---@param receiver string
---@param text string
---@param gold int32
---@param yuanbao int32
---@param json string
---@return bool
function lualib:MailJsonItem(sender, receiver, text, gold, yuanbao, json)
end

---
---@param strRole string
---@param bLimit bool
---@return int32
function lualib:EquipWeight(strRole, bLimit)
end

---
---@param strRole string
---@param strTarget string
---@param wSkillID uint16
---无返回值
function lualib:on_catch(strRole, strTarget, wSkillID)
end

---
---@param strPlayer string
---@param wAttrType uint16
---@return uint32
function lualib:Player_GetTimeProp(strPlayer, wAttrType)
end

---
---@param strCastleName string
---@return uint32
function lualib:QueryCastleStart(strCastleName)
end

---
---@param strJson string
---@return object
function lualib:decode(strJson)
end

---
---@param strPlayer string
---@param iIngot int
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:AddBindIngot(strPlayer, iIngot, strDesc, strTarget)
end

---
---@param strCastleName string
---@param tAttacks table
---@param bRemoveAll bool
---@return bool
function lualib:ModifyCastleAttacks(strCastleName, tAttacks, bRemoveAll)
end

---
---@param strPlayer string
---@return table
function lualib:Player_GetTeamList(strPlayer)
end

---
---@param strFileName string
---@return string
function lualib:IO_GetFileString(strFileName)
end

---
---@param strMap string
---@param strKey string
---@param strValue string
---@return bool
function lualib:Map_SetCustomVarStr(strMap, strKey, strValue)
end

---
---@param strMap string
---@return string
function lualib:Map_GetMapName(strMap)
end

---
---@param strRoleName string
---@param iAction int
---@param strItemKey string
---@param strItem string
---@param iSrcValue int32
---@param iRefValue int32
---@param strDescript string
---@param strTarget string
---无返回值
function lualib:LogWithId(strRoleName, iAction, strItemKey, strItem, iSrcValue, iRefValue, strDescript, strTarget)
end

---
---@param strPlayer string
---@return double
function lualib:GetDeposit(strPlayer)
end

---
---@param strPlayer string
---@param sequ uint8
---@return string
function lualib:Wrist(strPlayer, sequ)
end

---
---@param strPlayer string
---@return string
function lualib:Wings(strPlayer)
end

---
---@param strRole string
---@param bLimit bool
---@return int32
function lualib:Weight(strRole, bLimit)
end

---
---@param strFileName string
---@param strContent string
---@return bool
function lualib:IO_TextFileDeleteLineStr(strFileName, strContent)
end

---
---@param strPlayer string
---无返回值
function lualib:UnRide(strPlayer)
end

---
---@param iAttrName int32
---@return string
function lualib:ToAttrName(iAttrName)
end

---
---@param strPlayer string
---@return string
function lualib:TitleName(strPlayer)
end

---
---@param strDateTime1 string
---@param strDateTime2 string
---@return int32
function lualib:TimeDiff(strDateTime1, strDateTime2)
end

---
---@param strRole string
---@param strMsg string
---@return bool
function lualib:SysRoleTalk(strRole, strMsg)
end

---
---@param strPlayer string
---@param strMsg string
---@return bool
function lualib:SysMsg_SendTipsMsg(strPlayer, strMsg)
end

---
---@param strPlayer string
---@param strItemKey string
---@return bool
function lualib:TakeOff(strPlayer, strItemKey)
end

---
---@param strPlayer string
---@param strItem string
---@return string
function lualib:ItemKeyName(strPlayer, strItem)
end

---
---@param strPlayer string
---@param strJson string
---@return string
function lualib:Json2Item(strPlayer, strJson)
end

---
---@param strMap string
---@param strMsg string
---@return bool
function lualib:SysMapMsg(strMap, strMsg)
end

---
---@param strRole string
---@param iValue int32
---无返回值
function lualib:SetMeritor(strRole, iValue)
end

---
---@param byType uint8
---@param strMsg string
---@param strPlayer string
---无返回值
function lualib:SysCenterMsg(byType, strMsg, strPlayer)
end

---
---@param strPlayer string
---@param iIntegral int32
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:SubIntegral(strPlayer, iIntegral, strDesc, strTarget)
end

---
---@return string
function lualib:GetCurScriptName()
end

---
---@param strItem string
---@return string
function lualib:Item2Json(strItem)
end

---
---@param strKey string
---@return string
function lualib:GetConstVar(strKey)
end

---
---@param strPlayer string
---@param iIngot int
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:SubBindIngot(strPlayer, iIngot, strDesc, strTarget)
end

---
---@param dummy string
---@return bool
function lualib:StopStall(dummy)
end

---
---@param strPlayer string
---@param wQuestID uint16
---@return int32
function lualib:QuestRemainCount(strPlayer, wQuestID)
end

---
---@param player string
---无返回值
function lualib:StopAutoRun(player)
end

---
---@param strRole string
---@param wSkillID uint16
---@param strSkillName string
---@param wX uint16
---@param wY uint16
---@param strTarget string
---无返回值
function lualib:on_spell(strRole, wSkillID, strSkillName, wX, wY, strTarget)
end

---
---@param dummy string
---@param stall string
---@param goods table
---@param price table
---@param price table
---@return bool
function lualib:StartStall(dummy, stall, goods, price, price)
end

---
---@param strCastleName string
---@param strFamilys string
---@param dwStartTime uint32
---@param dwDuration uint32
---@return bool
function lualib:StartCastleWarEx(strCastleName, strFamilys, dwStartTime, dwDuration)
end

---
---@param wQuestID uint16
---@return string
function lualib:GetQuestProgressing(wQuestID)
end

---
---@param strPlayer string
---@param strFormName string
---无返回值
function lualib:ShowForm(strPlayer, strFormName)
end

---
---@param strMsg string
---无返回值
function lualib:Warn(strMsg)
end

---
---@param strPlayer string
---@param wID uint16
---@return bool
function lualib:Player_UseItemByID(strPlayer, wID)
end

---
---@return uint32
function lualib:GetLocalTime()
end

---
---@param strPlayer string
---@return uint32
function lualib:LastAtkTime(strPlayer)
end

---
---@param strPlayer string
---@return bool
function lualib:IsOffline(strPlayer)
end

---
---@param strItem string
---@return int
function lualib:ItemDropType(strItem)
end

---
---@param strPlayer string
---@return uint32
function lualib:Player_GetAccountID(strPlayer)
end

---
---@param strMonster string
---@param strKiller string
---@return bool
function lualib:pre_monster_die(strMonster, strKiller)
end

---
---@param strPlayer string
---@return double
function lualib:GetIngot(strPlayer)
end

---
---@param strRole string
---@param iValue int32
---无返回值
function lualib:SetTaoAtkPoint(strRole, iValue)
end

---
---@param strString string
---@return string
function lualib:Base64Decode(strString)
end

---
---@param strRole string
---@param iHead int32
---无返回值
function lualib:SetHead(strRole, iHead)
end

---
---@param strRole string
---@return bool
function lualib:SendRoleHPNtf(strRole)
end

---
---@param player string
---@return string
function lualib:on_player_relive(player)
end

---
---@param strMap string
---@param dwTimerID uint32
---@param dwTimes uint32
---@param dwCount uint32
---@return bool
function lualib:Map_SetOnTimer(strMap, dwTimerID, dwTimes, dwCount)
end

---
---@param strPlayer string
---@param strDesc string
---@param dwTimes uint32
---@return bool
function lualib:Player_SetForbidTalk(strPlayer, strDesc, dwTimes)
end

---
---@param bOffline bool
---@return uint32
function lualib:GetPlayerCount(bOffline)
end

---
---@param strRole string
---@param iValue int32
---无返回值
function lualib:SetPk(strRole, iValue)
end

---
---@param strRole string
---@param iValue int32
---无返回值
function lualib:SetPhyDefPoint(strRole, iValue)
end

---
---@param strRole string
---@param iValue int32
---@param bIsLimit bool
---无返回值
function lualib:SetPhyDef(strRole, iValue, bIsLimit)
end

---
---@param strRole string
---@param wBuffID uint16
---@param strHost string
---无返回值
function lualib:on_add_buff(strRole, wBuffID, strHost)
end

---
---@param strMonster string
---@param tHateList table
---@return bool
function lualib:Monster_SetHateList(strMonster, tHateList)
end

---
---@param strObject string
---无返回值
function lualib:on_destroy(strObject)
end

---
---@param player string
---@param is bool
---无返回值
function lualib:SetNetCheck(player, is)
end

---
---@param strRole string
---@param iValue int32
---@param bIsLimit bool
---无返回值
function lualib:SetMp(strRole, iValue, bIsLimit)
end

---
---@param strPlayer string
---@param strItem string
---@return uint8
function lualib:Item_GetSubType(strPlayer, strItem)
end

---
---@param strRole string
---@param iValue int32
---无返回值
function lualib:SetMagDefPoint(strRole, iValue)
end

---
---@param strRole string
---@param iValue int32
---@param bIsLimit bool
---无返回值
function lualib:SetMagDef(strRole, iValue, bIsLimit)
end

---
---@param strRole string
---@param iValue int32
---无返回值
function lualib:SetJob(strRole, iValue)
end

---
---@param strRole string
---@param iValue int32
---@param bIsLimit bool
---无返回值
function lualib:SetHp(strRole, iValue, bIsLimit)
end

---
---@param strMonster string
---无返回值
function lualib:on_monster_born(strMonster)
end

---
---@param strRole string
---@param iValue int32
---@param bIsLimit bool
---无返回值
function lualib:SetTaoAtk(strRole, iValue, bIsLimit)
end

---
---@param strRole string
---@param iHairColor int32
---无返回值
function lualib:SetHairColor(strRole, iHairColor)
end

---
---@param strRole string
---@param iHair int32
---无返回值
function lualib:SetHair(strRole, iHair)
end

---
---@param strPlayer string
---@param bBag bool
---@param bWarhouse bool
---@param bAdvWarhouse bool
---@return int32
function lualib:GetBagFreeEx(strPlayer, bBag, bWarhouse, bAdvWarhouse)
end

---
---@param strRole string
---@param iValue int32
---@param bIsLimit bool
---无返回值
function lualib:SetEnergy(strRole, iValue, bIsLimit)
end

---
---@param strRole string
---@param iValue int32
---@param bIsLimit bool
---无返回值
function lualib:SetPhyAtk(strRole, iValue, bIsLimit)
end

---
---@param strObject string
---@param strKey string
---@param iValue int
---@return bool
function lualib:SetDayInt(strObject, strKey, iValue)
end

---
---@param strPlayer string
---@param strAlias string
---@param strParam string
---@return bool
function lualib:Player_RunGMCmd(strPlayer, strAlias, strParam)
end

---
---@param strRole string
---@param strTarget string
---@param wSkillID uint16
---无返回值
function lualib:on_dig_meat(strRole, strTarget, wSkillID)
end

---
---@param player string
---@param is bool
---@param is bool
---@param time uint32
---无返回值
function lualib:SetAutoOpt(player, is, is, time)
end

---
---@param strPlayer string
---@param strItem string
---无返回值
function lualib:Item_NotifyUpdate(strPlayer, strItem)
end

---
---@param strPlayer string
---@return bool
function lualib:Player_DisableForbidTalk(strPlayer)
end

---
---@param strPlayer string
---@return string
function lualib:ReliveMapGuid(strPlayer)
end

---
---@param strPlayer string
---@param strItemKey string
---@return bool
function lualib:ApplyEquip(strPlayer, strItemKey)
end

---
---@param strPlayer string
---@param strItem string
---@param strKey string
---@return int32
function lualib:Item_GetCustomVarInt(strPlayer, strItem, strKey)
end

---
---@param strPlayer string
---@param sequ uint8
---@return string
function lualib:Ring(strPlayer, sequ)
end

---
---@param strMap string
---@param wX uint16
---@param wY uint16
---@param wRange uint16
---@return table
function lualib:Map_GetGridObjList(strMap, wX, wY, wRange)
end

---
---@param strRole string
---@return int32
function lualib:RemainPoint(strRole)
end

---
---@param strRole string
---@return int32
function lualib:Prestige(strRole)
end

---
---@param strPlayer string
---@return int32
function lualib:Player_GetAttackMode(strPlayer)
end

---
---@param strFileName string
---@return bool
function lualib:IO_EmptyTextFile(strFileName)
end

---
---@param strPlayer string
---@return string
function lualib:Shoulder(strPlayer)
end

---
---@param strKiller string
---@param strRole string
---无返回值
function lualib:on_kill(strKiller, strRole)
end

---
---@param strPlayer string
---@param wAttrType uint16
---@param wOprType uint16
---@param dwValue uint32
---@return bool
function lualib:Player_SetIntProp(strPlayer, wAttrType, wOprType, dwValue)
end

---
---@param strObject string
---@return bool
function lualib:Player_IsPlayer(strObject)
end

---
---@param strPlayer string
---@param strKey string
---@param iValue int32
---@return bool
function lualib:Player_SetCustomVarInt(strPlayer, strKey, iValue)
end

---
---@param strTableKey string
---@return bool
function lualib:ReloadConfig(strTableKey)
end

---
---@param strMap string
---@param wX uint16
---@param wY uint16
---@param wRange uint16
---@param byDir uint8
---@param strMonsterKey string
---@param bCanRelive bool
---@return string
function lualib:Map_GenSingleMonster(strMap, wX, wY, wRange, byDir, strMonsterKey, bCanRelive)
end

---
---@param strRole string
---@param strItem string
---@param wItemID uint16
---@param strItemKey string
---无返回值
function lualib:on_item_pickup(strRole, strItem, wItemID, strItemKey)
end

---
---@param strPlayer string
---@param iGold int
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:AddDeposit(strPlayer, iGold, strDesc, strTarget)
end

---
---@param strMap string
---@param strItem string
---@param wItemID uint16
---@param strItemKey string
---@param wX uint16
---@param wY uint16
---无返回值
function lualib:on_item_disappear(strMap, strItem, wItemID, strItemKey, wX, wY)
end

---
---@param strRole string
---@param iAttrName int32
---@return int32
function lualib:Attr(strRole, iAttrName)
end

---
---@param strPlayer string
---@param strMsg string
---@return bool
function lualib:SysTriggerMsg(strPlayer, strMsg)
end

---
---@param strMapKey string
---@return bool
function lualib:MapCanRide(strMapKey)
end

---
---@param strPlayer string
---@param strBuffKey string
---@return bool
function lualib:Player_DelBuff(strPlayer, strBuffKey)
end

---
---@param strObject string
---@return bool
function lualib:Monster_IsMonster(strObject)
end

---
---@param strPlayer string
---@return uint32
function lualib:OnlineTime(strPlayer)
end

---
---@param strRole string
---@param bLimit bool
---@return int32
function lualib:Energy(strRole, bLimit)
end

---
---@param strRole string
---@param strBuffKey string
---@return bool
function lualib:DelBuff(strRole, strBuffKey)
end

---
---@param strPlayer string
---@return bool
function lualib:Player_IsAntiIndulge(strPlayer)
end

---
---@param strPlayer string
---@return uint32
function lualib:LoginTime(strPlayer)
end

---
---@param strMap string
---@param strPlayer string
---@return bool
function lualib:Map_JumpRnd(strMap, strPlayer)
end

---
---@param strPlayer string
---@param strBuffKey string
---@return bool
function lualib:Player_IsHasBuff(strPlayer, strBuffKey)
end

---
---@param strMap string
---@return bool
function lualib:Map_ClearDgnItem(strMap)
end

---
---@param strPlayerName string
---@return string
function lualib:Name2Guid(strPlayerName)
end

---
---@param strPlayer string
---@return bool
function lualib:Player_IsCanUseItem(strPlayer)
end

---
---@param strRole string
---@param iValue int32
---无返回值
function lualib:SetCamp(strRole, iValue)
end

---
---@param strPlayer string
---@return bool
function lualib:Player_IsCanTurn(strPlayer)
end

---
---@param strPlayer string
---@return bool
function lualib:Player_IsCanNpcTalk(strPlayer)
end

---
---@param strPlayer string
---@param strCallBack string
---@param strParam string
---@return bool
function lualib:Player_RunScript(strPlayer, strCallBack, strParam)
end

---
---@param strPlayer string
---@param bActive bool
---@return bool
function lualib:Player_SetInvincible(strPlayer, bActive)
end

---
---@param strCastleName string
---@return bool
function lualib:IsCastleWarNull(strCastleName)
end

---
---@param strPlayer string
---@param wSite uint16
---@return string
function lualib:Player_GetItemGuid(strPlayer, wSite)
end

---
---@param strObject string
---@param strKey string
---@param iValue int32
---@return bool
function lualib:SetInt(strObject, strKey, iValue)
end

---
---@param strPlayer string
---@return bool
function lualib:Player_GoHome(strPlayer)
end

---
---@param strRole string
---@param strItem string
---@param wItemID uint16
---@param strItemKey string
---@return bool
function lualib:on_pre_item_drop(strRole, strItem, wItemID, strItemKey)
end

---
---@param strPlayer string
---@param strItemKey string
---@param bBind uint8
---@param strDesc string
---@param strTarget string
---@return string
function lualib:Player_GiveSingleItem(strPlayer, strItemKey, bBind, strDesc, strTarget)
end

---
---@param strPlayer string
---@param strItemKey string
---@param wCount uint16
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:Player_GiveItemUnbind(strPlayer, strItemKey, wCount, strDesc, strTarget)
end

---
---@param strPlayer string
---@return int32
function lualib:Player_GetWarehouseSize(strPlayer)
end

---
---@param strPlayer string
---无返回值
function lualib:NotifyRunningFamilyWar(strPlayer)
end

---
---@param strPlayer string
---@param strItemKey string
---@return int32
function lualib:Player_GetWarehouseItemCountUnbind(strPlayer, strItemKey)
end

---
---@param strPlayer string
---@param strItemKey string
---@return int32
function lualib:Player_GetWarehouseItemCountBind(strPlayer, strItemKey)
end

---
---@param strRole string
---@param strBuffKey string
---@param dwTimes uint32
---@return bool
function lualib:AddBuff(strRole, strBuffKey, dwTimes)
end

---
---@param strPlayer string
---@param strItemKey string
---@return int32
function lualib:Player_GetWarehouseItemCount(strPlayer, strItemKey)
end

---
---@param strFileName string
---@param strContent string
---@return bool
function lualib:IO_CheckTextInFile(strFileName, strContent)
end

---
---@param strPlayer string
---@return int16
function lualib:Player_GetPosY(strPlayer)
end

---
---@param strPlayer string
---@return int16
function lualib:Player_GetPosX(strPlayer)
end

---
---@param strPlayer string
---@param strItemKey string
---@return int32
function lualib:Player_GetItemCountBind(strPlayer, strItemKey)
end

---
---@param strPlayer string
---@param dwTimes uint32
---无返回值
function lualib:SetOffline(strPlayer, dwTimes)
end

---
---@param strPlayer string
---@param strItemKey string
---@return int32
function lualib:Player_GetItemCount(strPlayer, strItemKey)
end

---
---@param strPlayer string
---@param strSkillKey string
---@return bool
function lualib:Player_AddSkill(strPlayer, strSkillKey)
end

---
---@param strDirName string
---@return bool
function lualib:IO_ForceDir(strDirName)
end

---
---@param strObject string
---@param strKey string
---@return string
function lualib:GetDayStr(strObject, strKey)
end

---
---@param strPlayer string
---@param strItem string
---@return int16
function lualib:Equip_GetLuckCurse(strPlayer, strItem)
end

---
---@param strPlayer string
---@return string
function lualib:HardwareCode(strPlayer)
end

---
---@param strPlayerName string
---@return string
function lualib:Player_GetGuid(strPlayerName)
end

---
---@param strPlayer string
---@param wSite uint16
---@return string
function lualib:Player_GetEquipName(strPlayer, wSite)
end

---
---@return table
function lualib:GetAllCastle()
end

---
---@param strPlayer string
---@param wSite uint16
---@return string
function lualib:Player_GetEquipGuid(strPlayer, wSite)
end

---
---@param strPlayer1 string
---@param strPlayer2 string
---@return uint16
function lualib:Player_GetDistance(strPlayer1, strPlayer2)
end

---
---@param strMapKey string
---@return bool
function lualib:Map_IsInGS(strMapKey)
end

---
---@param strMonster string
---@return int32
function lualib:Monster_GetPosY(strMonster)
end

---
---@param strPlayer string
---@param strKiller string
---无返回值
function lualib:post_player_die(strPlayer, strKiller)
end

---
---@param strPlayer string
---@return bool
function lualib:Player_IsInGS(strPlayer)
end

---
---@param strPlayer string
---@param strMsg string
---@return bool
function lualib:SysMsg_SendWarnMsg(strPlayer, strMsg)
end

---
---@param strDatabaseName string
---@param byType uint8
---@param strCallBack string
---@param strParam string
---@return bool
function lualib:SetDBMerge(strDatabaseName, byType, strCallBack, strParam)
end

---
---@param strMap string
---@return uint16
function lualib:Map_GetHeight(strMap)
end

---
---@param strPlayer string
---@param strItem string
---@return bool
function lualib:Player_DropItemEx(strPlayer, strItem)
end

---
---@param strRole string
---@return int32
function lualib:Camp(strRole)
end

---
---@param strDirName string
---@return bool
function lualib:IO_DirExists(strDirName)
end

---
---@param strCastleName string
---@param strFamilys string
---@param strStartTime string
---@param dwDuration uint32
---@return bool
function lualib:StartCastleWar(strCastleName, strFamilys, strStartTime, dwDuration)
end

---
---@param strPlayer string
---@param strItemKey string
---@return bool
function lualib:Player_DropItem(strPlayer, strItemKey)
end

---
---@param strPlayer string
---@param strItemKey string
---@param iCount int32
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:Player_DestroyItemUnbind(strPlayer, strItemKey, iCount, strDesc, strTarget)
end

---
---@return uint32
function lualib:GetTickCount()
end

---
---@param strPlayer string
---@return uint32
function lualib:TotalTime(strPlayer)
end

---
---@param strPlayer string
---@param strItemKey string
---@param wCount uint16
---@param bBind bool
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:AddItem(strPlayer, strItemKey, wCount, bBind, strDesc, strTarget)
end

---
---@param strMonster string
---@param wWidth uint16
---@param wHeight uint16
---@return bool
function lualib:Monster_SetPanelSize(strMonster, wWidth, wHeight)
end

---
---@param strPlayer string
---@param strDestPlayerName string
---@return bool
function lualib:Player_JumpToRole(strPlayer, strDestPlayerName)
end

---
---@param strRole string
---@param strEquip string
---@param wEquipID uint16
---@param strEquipKey string
---无返回值
function lualib:on_post_un_equip(strRole, strEquip, wEquipID, strEquipKey)
end

---
---@param strPlayer string
---@param strItemKey string
---@param iCount int32
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:Player_DestroyItem(strPlayer, strItemKey, iCount, strDesc, strTarget)
end

---
---@param strRole string
---@return int32
function lualib:LockSwitch(strRole)
end

---
---@param strFileName string
---@return table
function lualib:IO_GetFileText(strFileName)
end

---
---@param strMap string
---@param strMonsterKey string
---@param wCount uint16
---@param bCanRelive bool
---@return bool
function lualib:Map_BatchGenMonster(strMap, strMonsterKey, wCount, bCanRelive)
end

---
---@param strPlayer string
---@param dwJob uint32
---@return bool
function lualib:Player_ChangeJob(strPlayer, dwJob)
end

---
---@param strRole string
---@return int32
function lualib:Pk(strRole)
end

---
---@param strRole string
---@return int32
function lualib:PhyDefPoint(strRole)
end

---
---@param strRole string
---@return int32
function lualib:PhyAtkPoint(strRole)
end

---
---@param player string
---@param action int32
---@param item string
---@param ref int32
---@param descript string
---@param target string
---无返回值
function lualib:OnGloryTrigger(player, action, item, ref, descript, target)
end

---
---@param strPlayer string
---@param strMonster string
---@return bool
function lualib:Player_IsServantNear(strPlayer, strMonster)
end

---
---@param sender string
---@param receiver string
---@param text string
---@param gold int32
---@param yuanbao int32
---@param item table
---@return bool
function lualib:Mail(sender, receiver, text, gold, yuanbao, item)
end

---
---@param strNpc string
---@param wWidth uint16
---@param wHeight uint16
---@return bool
function lualib:Npc_SetPanelSize(strNpc, wWidth, wHeight)
end

---
---@return string
function lualib:IO_GetLuaPath()
end

---
---@param strNpc string
---@return int32
function lualib:Npc_GetPosY(strNpc)
end

---
---@param strMap string
---@param strItemKey string
---@param wX uint16
---@param wY uint16
---@param wRange uint16
---@return table
function lualib:Map_GetRegionItems(strMap, strItemKey, wX, wY, wRange)
end

---
---@param strNpc string
---@return string
function lualib:Npc_GetKeyName(strNpc)
end

---
---@return string
function lualib:Now()
end

---
---@param strPlayer string
---@return string
function lualib:Necklace(strPlayer)
end

---
---@param strRole string
---@param bLimit bool
---@return int32
function lualib:Brawn(strRole, bLimit)
end

---
---@param strMonsterKey string
---@return int32
function lualib:Monster_Type(strMonsterKey)
end

---
---@param strRole string
---@param wSkillID uint16
---@param strSkillName string
---@return bool
function lualib:on_pre_spell(strRole, wSkillID, strSkillName)
end

---
---@param strPlayer string
---@return int32
function lualib:FindFirstBagFreeSlot(strPlayer)
end

---
---@return string
function lualib:GetZoneName()
end

---
---@param strPlayer string
---@param strKey string
---@return string
function lualib:Player_GetCustomVarStr(strPlayer, strKey)
end

---
---@param strMonster string
---@return int32
function lualib:Monster_GetPosX(strMonster)
end

---
---@param strRole string
---@param strMsg string
---@return bool
function lualib:SysMsg_SendRoleTalk(strRole, strMsg)
end

---
---@param strMapKey string
---@return uint32
function lualib:MapKey2ID(strMapKey)
end

---
---@param strPlayer string
---无返回值
function lualib:Ride(strPlayer)
end

---
---@param strRole string
---@param strMapKey string
---@param wSkillID uint16
---@param strSkillName string
---@param wX uint16
---@param wY uint16
---无返回值
function lualib:on_mining(strRole, strMapKey, wSkillID, strSkillName, wX, wY)
end

---
---@param strDateTime string
---@return uint32
function lualib:Str2Time(strDateTime)
end

---
---@param strMonster string
---@return string
function lualib:Monster_GetDropOwner(strMonster)
end

---
---@param strMonster string
---@param strKey string
---@return string
function lualib:Monster_GetCustomVarStr(strMonster, strKey)
end

---
---@param wMaxLevel uint16
---@param wMinLevel uint16
---@return table
function lualib:Monster_GetSpecial(wMaxLevel, wMinLevel)
end

---
---@param iMin int32
---@param iMax int32
---@return int32
function lualib:GenRandom(iMin, iMax)
end

---
---@param strCastleName string
---@param strCastle string
---@param strBasilica string
---无返回值
function lualib:on_castle_war_end(strCastleName, strCastle, strBasilica)
end

---
---@param strMonster string
---@param strKey string
---@return int32
function lualib:Monster_GetCustomVarInt(strMonster, strKey)
end

---
---@param strPlayer string
---@param iIngot int32
---@param bBind bool
---@return bool
function lualib:Player_IsIngotEnough(strPlayer, iIngot, bBind)
end

---
---@param strMonsterKey string
---@return table
function lualib:Monster_DataRow(strMonsterKey)
end

---
---@param strMonster string
---@return table
function lualib:Monster_GetHateList(strMonster)
end

---
---@param strPlayer string
---@return string
function lualib:Medal(strPlayer)
end

---
---@param strRole string
---@return string
function lualib:MapKeyName(strRole)
end

---
---@param strPlayer string
---@return string
function lualib:AccountName(strPlayer)
end

---
---@param strPlayer string
---@param dwDlgID uint32
---@param strContent string
---@param dwTimeOut uint32
---@param dwMaxLen uint32
---@param strCallBack string
---@param strParam string
---@return bool
function lualib:SysMsg_SendInputDlg(strPlayer, dwDlgID, strContent, dwTimeOut, dwMaxLen, strCallBack, strParam)
end

---
---@param strPlayer string
---@return bool
function lualib:Player_IsOnline(strPlayer)
end

---
---@param map string
---@param timer uint32
---@return bool
function lualib:Map_SetOffTimer(map, timer)
end

---
---@param strRole string
---@param strItem string
---@param wItemID uint16
---@param strItemKey string
---无返回值
function lualib:on_item_use_zero(strRole, strItem, wItemID, strItemKey)
end

---
---@param strRole string
---@param strSkillKey string
---@param bLinkage bool
---@return bool
function lualib:HasSkill(strRole, strSkillKey, bLinkage)
end

---
---@param strRole string
---@return
---| 1 # 战士
---| 2 # 法师
---| 3 # 术士
function lualib:Job(strRole)
end

---
---@param strItem string
---@param iGold int32
---@return bool
function lualib:ModifyItemGold(strItem, iGold)
end

---
---@param wSourX uint16
---@param wSourY uint16
---@param wDestX uint16
---@param wDestY uint16
---@return uint16
function lualib:Map_GetDistance(wSourX, wSourY, wDestX, wDestY)
end

---
---@param strMap string
---@param strKey string
---@return string
function lualib:Map_GetCustomVarStr(strMap, strKey)
end

---
---@param strMap string
---@param strKey string
---@return int32
function lualib:Map_GetCustomVarInt(strMap, strKey)
end

---
---@param strRole string
---@return bool
function lualib:on_pre_player_relive(strRole)
end

---
---@param strObject string
---@param byLevel uint8
---无返回值
function lualib:Player_SetServantLevel(strObject, byLevel)
end

---
---@param strPlayer string
---@param iExp int32
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:Player_SubExp(strPlayer, iExp, strDesc, strTarget)
end

---
---@param strRoleName string
---@param iAction int
---@param strItemKey string
---@param strItem string
---@param iSrcValue int32
---@param iRefValue int32
---@param strDescript string
---@param strTarget string
---@param strDetail string
---无返回值
function lualib:LogDetailWithId(strRoleName, iAction, strItemKey, strItem, iSrcValue, iRefValue, strDescript, strTarget,
                                strDetail)
end

---
---@param strMap string
---@param strMonsterKey string
---@param wX uint16
---@param wY uint16
---@param wRange uint16
---@param bIgnoreDied bool
---@param bIgnoreServant bool
---@return table
function lualib:Map_GetRegionMonsters(strMap, strMonsterKey, wX, wY, wRange, bIgnoreDied, bIgnoreServant)
end

---
---@param strPlayer string
---@return string
function lualib:GuildGuid(strPlayer)
end

---
---@param strPlayer string
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:Player_ClearBag(strPlayer, strDesc, strTarget)
end

---
---@param strObject string
---@param strKey string
---@return int32
function lualib:GetInt(strObject, strKey)
end

---
---@param strObject string
---@param strKey string
---@param iValue int32
---@return bool
function lualib:SetTempInt(strObject, strKey, iValue)
end

---
---@param strRole string
---@param iValue int32
---无返回值
function lualib:SetPrestige(strRole, iValue)
end

---
---@param strPlayer string
---@return uint32
function lualib:LastMoveTime(strPlayer)
end

---
---@param strPlayer string
---@return string
function lualib:JuJu(strPlayer)
end

---
---@param strMonster string
---@return string
function lualib:Monster_GetAttackTarget(strMonster)
end

---
---@param strMap string
---@param strMonsterKey string
---@return bool
function lualib:Map_RemoveMonster(strMap, strMonsterKey)
end

---
---@param strItem string
---@return string
function lualib:ItemRole(strItem)
end

---
---@param strObject string
---@param strTitle string
---@param strMsg string
---@param dwTimeOut uint32
---@return bool
function lualib:SysMsg_SendBoardMsg(strObject, strTitle, strMsg, dwTimeOut)
end

---
---@param strPlayer string
---@param strItem string
---@param bBind bool
---@return bool
function lualib:Item_SetBind(strPlayer, strItem, bBind)
end

---
---@param strString string
---@return string
function lualib:Base64Encode(strString)
end

---
---@param strRole string
---@param iValue int32
---@param bIsLimit bool
---无返回值
function lualib:SetWeight(strRole, iValue, bIsLimit)
end

---
---@param strPlayer string
---@param strItemInfo string
---@return bool
function lualib:TakeOffEx(strPlayer, strItemInfo)
end

---
---@param strItem string
---@return string
function lualib:ItemDropHost(strItem)
end

---
---@param strRole string
---@param strHost string
---@param strBuffKey string
---@param strSkillKey string
---@param dwTimes uint32
---@param iAttr1 int32
---@return bool
function lualib:AddBuff2(strRole, strHost, strBuffKey, strSkillKey, dwTimes, iAttr1)
end

---
---@param strPlayer string
---@param strMonsterKey string
---@param dwLife uint32
---@return bool
function lualib:GenEscorter(strPlayer, strMonsterKey, dwLife)
end

---
---@param player string
---@param item string
---@return uint8
function lualib:Equip_GetRefineLevel(player, item)
end

---
---@param strPlayer string
---@return bool
function lualib:Player_Kick(strPlayer)
end

---
---@param strPlayer string
---@param dwCampID uint32
---@return bool
function lualib:VerifyCampCount(strPlayer, dwCampID)
end

---
---@param strPlayer string
---@return bool
function lualib:Player_IsGM(strPlayer)
end

---
---@param strPlayer string
---@param strItem string
---@return bool
function lualib:Item_IsTimeLimit(strPlayer, strItem)
end

---
---@param strMap string
---@param strItem string
---@return int32
function lualib:Item_GetPosY(strMap, strItem)
end

---
---@param strPlayer string
---@param strItem string
---@return string
function lualib:Item_GetName(strPlayer, strItem)
end

---
---@param strRole string
---@param strSkillKey string
---@return bool
function lualib:AddSkill(strRole, strSkillKey)
end

---
---@param strKey string
---@param dbValue double
---@return bool
function lualib:SetDBNum(strKey, dbValue)
end

---
---@param strPlayer string
---@param strItem string
---@return string
function lualib:Item_GetKeyName(strPlayer, strItem)
end

---
---@param player string
---@param name string
---@param job uint8
---@param gender uint8
---@param callback string
---@param params string
---@return bool
function lualib:CreateHeroForPlayer(player, name, job, gender, callback, params)
end

---
---@param strPlayer string
---@param strItem string
---@return uint16
function lualib:Item_GetID(strPlayer, strItem)
end

---
---@param strMap string
---@return bool
function lualib:Map_ClearDgnNpc(strMap)
end

---
---@param strRole string
---@param iLevel int32
---无返回值
function lualib:on_level_up(strRole, iLevel)
end

---
---@param strObject string
---@param strKey string
---@param iValue int
---@return bool
function lualib:SetWeekInt(strObject, strKey, iValue)
end

---
---@param strItem string
---@param strMap string
---@return bool
function lualib:IsBanItem(strItem, strMap)
end

---
---@param strPlayer string
---无返回值
function lualib:on_logout(strPlayer)
end

---
---@param strFamilyName string
---@return bool
function lualib:HasFamily(strFamilyName)
end

---
---@param strObject string
---@param strKey string
---@return uint32
function lualib:GetWeekInt(strObject, strKey)
end

---
---@param player string
---@return table
function lualib:GetPlayerCurrentHeroList(player)
end

---
---@param strString string
---@return string
function lualib:UrlDecode(strString)
end

---
---@param strPlayer string
---@return table
function lualib:Player_GetBagItemList(strPlayer)
end

---
---@param strPlayer string
---@return int32
function lualib:GMLevel(strPlayer)
end

---
---@param dwTimes uint32
---@return uint32
function lualib:GetAllYears(dwTimes)
end

---
---@param strMonster string
---@param strKey string
---@param iValue int32
---@return bool
function lualib:Monster_SetCustomVarInt(strMonster, strKey, iValue)
end

---
---@param wQuestID uint16
---@return string
function lualib:GetQuestAccomplishing(wQuestID)
end

---
---@return table
function lualib:GetLuaPerformance()
end

---
---@param strPlayer string
---@return string
function lualib:Shoes(strPlayer)
end

---
---@param strPlayer string
---@param strKeys string
---@param bEquip bool
---@param bBag bool
---@param bWarehouse bool
---@param bWarehouseAdv bool
---@return table
function lualib:GetItemsByKeys(strPlayer, strKeys, bEquip, bBag, bWarehouse, bWarehouseAdv)
end

---
---@param strObject string
---@param strLuaFile string
---@param strLuaFunction string
---@param strParam string
---@return bool
function lualib:RunClientScript(strObject, strLuaFile, strLuaFunction, strParam)
end

---
---@param strPlayer string
---@return string
function lualib:Helmet(strPlayer)
end

---
---@param strPlayer string
---@return table
function lualib:Player_GetServantList(strPlayer)
end

---
---@param strPlayer string
---@return double
function lualib:GetGold(strPlayer)
end

---
---@param strObject string
---@return uint16
function lualib:Y(strObject)
end

---
---@param strObject string
---@return uint16
function lualib:X(strObject)
end

---
---@param strRole string
---@return int32
function lualib:HpPoint(strRole)
end

---
---@param strFamily string
---@return string
function lualib:GetFamilyCastles(strFamily)
end

---
---@param strPlayer string
---@return double
function lualib:GetExp(strPlayer)
end

---
---@param strObject string
---@param strKey string
---@return uint32
function lualib:GetDayInt(strObject, strKey)
end

---
---@param strPlayer string
---@return int32
function lualib:GetTotalBill(strPlayer)
end

---
---@param strRole string
---@return int32
function lualib:MpPoint(strRole)
end

---
---@param strPlayer string
---@param bBag bool
---@param bWarhouse bool
---@param bAdvWarhouse bool
---@return int32
function lualib:GetBagSizeEx(strPlayer, bBag, bWarhouse, bAdvWarhouse)
end

---
---@param strPlayer string
---@return int32
function lualib:GetBagSize(strPlayer)
end

---
---@param strRole string
---@param iValue int32
---无返回值
function lualib:SetGender(strRole, iValue)
end

---
---@param strCastleName string
---@param strFamilyName string
---无返回值
function lualib:SetCastleOwnFamily(strCastleName, strFamilyName)
end

---
---@param strPlayerName string
---@return int
function lualib:GetActiveCountToday(strPlayerName)
end

---
---@param strMap string
---@param iX int32
---@param iY int32
---@param iType int32
---@return bool
function lualib:GridAttr(strMap, iX, iY, iType)
end

---
---@param strPlayer string
---@param strMsg string
---@return bool
function lualib:SysMsg_SendPromptMsg(strPlayer, strMsg)
end

---
---@param strPlayer string
---@param strItem string
---@return bool
function lualib:Item_IsBind(strPlayer, strItem)
end

---
---@param player string
---@param hero string
---@param callback string
---@param params string
---@return bool
function lualib:GenHeroForPlayer(player, hero, callback, params)
end

---
---@param strString string
---@return bool
function lualib:IsBanString(strString)
end

---
---@param strRole string
---@param strEquip string
---@param wEquipID uint16
---@param strEquipKey string
---@return bool
function lualib:on_pre_un_equip(strRole, strEquip, wEquipID, strEquipKey)
end

---
---@param strMap string
---@param strMonsterKey string
---@param tRange table
---@param bIgnoreDied bool
---@param bIgnoreServant bool
---@return table
function lualib:Map_GetRegionMonstersEx(strMap, strMonsterKey, tRange, bIgnoreDied, bIgnoreServant)
end

---
---@param strMap string
---@param strMonster string
---@param wX uint16
---@param wY uint16
---@param wRange uint16
---无返回值
function lualib:Monster_JumpXY(strMap, strMonster, wX, wY, wRange)
end

---
---@param strRole string
---@return int32
function lualib:Dir(strRole)
end

---
---@param strPlayer string
---@return bool
function lualib:DelUnmatchedSkill(strPlayer)
end

---
---@param strKey string
---@return int
function lualib:IO_GetCustomVarInt(strKey)
end

---
---@param strPlayer string
---@return double
function lualib:GetBindIngot(strPlayer)
end

---
---@param strFileName string
---@param dwLine uint32
---@return bool
function lualib:IO_TextFileDeleteLine(strFileName, dwLine)
end

---
---@param strPlayer string
---@return string
function lualib:Amulet(strPlayer)
end

---
---@param strPlayer string
---@return int32
function lualib:Player_GetServantCount(strPlayer)
end

---
---@param strNpc string
---@param strPlayer string
---@param strTalk string
---无返回值
function lualib:NPCTalkEx(strNpc, strPlayer, strTalk)
end

---
---@param dwTimes uint32
---@return uint32
function lualib:GetYear(dwTimes)
end

---
---@param strCastleName string
---@param strKey string
---@return string
function lualib:GetCastleCustomVarStr(strCastleName, strKey)
end

---
---@param strPlayer string
---@param iIntegral int32
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:AddIntegral(strPlayer, iIntegral, strDesc, strTarget)
end

---
---@param strPlayer string
---@param iIngot int
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:AddIngot(strPlayer, iIngot, strDesc, strTarget)
end

---
---@param strCastleName string
---@param strKey string
---@param strValue string
---无返回值
function lualib:SetCastleCustomVarStr(strCastleName, strKey, strValue)
end

---
---@param strPlayer string
---@param strItemKey string
---@param bBindType uint8
---@param bEquip bool
---@param bBag bool
---@param bWarhouse bool
---@param bAdvWarehouse bool
---@return int32
function lualib:ItemCountEx(strPlayer, strItemKey, bBindType, bEquip, bBag, bWarhouse, bAdvWarehouse)
end

---
---@param strMapKey string
---@return string
function lualib:Map_GetMapGuid(strMapKey)
end

---
---@param strRole string
---@param strBuffKey string
---@param dwTimes uint32
---@param iAttr1 int
---@return bool
function lualib:AddBuffEx(strRole, strBuffKey, dwTimes, iAttr1)
end

---
---@param strPlayer string
---@param iExp int32
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:AddExp(strPlayer, iExp, strDesc, strTarget)
end

---
---@param strPlayer string
---@param iGold int
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:AddBindGold(strPlayer, iGold, strDesc, strTarget)
end

---
---@param iMaster int32
---@param iSlave int32
---@return int32
function lualib:Mod(iMaster, iSlave)
end

---
---@param strMap string
---@param wX uint16
---@param wY uint16
---@param wRange uint16
---@param strNpcKey string
---@return table
function lualib:Map_GetRegionNpcs(strMap, wX, wY, wRange, strNpcKey)
end

---
---@param strRole string
---@param iAvata int32
---@param strBuffKey string
---@param strSkillKey string
---@param dwTimes uint32
---@return bool
function lualib:AddAvataBuff(strRole, iAvata, strBuffKey, strSkillKey, dwTimes)
end

---
---@param strObject string
---@param strKey string
---无返回值
function lualib:NotifyVar(strObject, strKey)
end

---
---无返回值
function lualib:on_system_start()
end

---
---@param strPlayer string
---@return bool
function lualib:DelAllSkill(strPlayer)
end

---
---@param strObject string
---@param iType int
---@param strCallBack string
---@return bool
function lualib:HasTrigger(strObject, iType, strCallBack)
end

---
---@param strPlayer string
---@return string
function lualib:Gem(strPlayer)
end

---
---@param strMap string
---@param wX uint16
---@param wY uint16
---@param wRange uint16
---@param byDir uint8
---@param strMonsterKey string
---@param wCount uint16
---@param bCanRelive bool
---@param iCamp int32
---@return bool
function lualib:Map_GenCampMonster(strMap, wX, wY, wRange, byDir, strMonsterKey, wCount, bCanRelive, iCamp)
end

---
---@param strKey string
---@param dbValue double
---@param byType uint8
---@return bool
function lualib:SetDBNumEx(strKey, dbValue, byType)
end

---
---@param strRole string
---@param strItem string
---@param wItemID uint16
---@param strItemKey string
---无返回值
function lualib:on_item_drop(strRole, strItem, wItemID, strItemKey)
end

---
---@param strPlayer string
---@return bool
function lualib:IsEscorterDied(strPlayer)
end

---
---@param strMap string
---@param strMonsterKey string
---@param wCount uint16
---@param bCanRelive bool
---@param iCamp int32
---@return bool
function lualib:Map_BatchGenCampMonster(strMap, strMonsterKey, wCount, bCanRelive, iCamp)
end

---
---@param strRole string
---@param wSuitID uint16
---无返回值
function lualib:on_equip_suit(strRole, wSuitID)
end

---
---@param strPlayer string
---无返回值
function lualib:God(strPlayer)
end

---
---@param strPlayer string
---@param iBillinIngot int32
---无返回值
function lualib:on_billin(strPlayer, iBillinIngot)
end

---
---@param strPlayer string
---@param strSkillKey string
---@return bool
function lualib:DelSkill(strPlayer, strSkillKey)
end

---
---@param strKey string
---@return string
function lualib:GetDBStr(strKey)
end

---
---@param strKey string
---@param strValue string
---@return bool
function lualib:SetDBStr(strKey, strValue)
end

---
---@param strPlayer string
---@param strItemKey string
---@return bool
function lualib:Player_UseItem(strPlayer, strItemKey)
end

---
---@param strMap string
---@param strMapKey string
---无返回值
function lualib:on_dungeon_end(strMap, strMapKey)
end

---
---@param strMonsterKey string
---@param iLimit int32
---@param bIgnoreDie bool
---@param bIgnorePet bool
---@return table
function lualib:MonstersByKey(strMonsterKey, iLimit, bIgnoreDie, bIgnorePet)
end

---
---@param strRole string
---@param iValue int32
---无返回值
function lualib:SetRemainPoint(strRole, iValue)
end

---
---@param strRole string
---@param strItem string
---@param wItemID uint16
---@param strItemKey string
---无返回值
function lualib:on_item_timeup(strRole, strItem, wItemID, strItemKey)
end

---
---@param strRole string
---@param strItem string
---@param wItemID uint16
---@param strItemKey string
---无返回值
function lualib:on_item_dur_zero(strRole, strItem, wItemID, strItemKey)
end

---
---@param strRole string
---@param wSuitID uint16
---无返回值
function lualib:on_un_equip_suit(strRole, wSuitID)
end

---
---@param strObject string
---@param strKey string
---@param strValue string
---@return bool
function lualib:SetDayStr(strObject, strKey, strValue)
end

---
---@param strRole string
---@param wMonsterID uint16
---@param wLevel uint16
---无返回值
function lualib:on_summon(strRole, wMonsterID, wLevel)
end

---
---@param strPlayer string
---@param strItem string
---@return int32
function lualib:Item_GetAmount(strPlayer, strItem)
end

---
---@param strPlayer string
---@param strItem string
---@return int32
function lualib:Item_GetLife(strPlayer, strItem)
end

---
---@param player string
---@param item string
---@return int
function lualib:Equip_GetIdentifyNum(player, item)
end

---
---@param strMap string
---@param strRole string
---@param strItem string
---@param wItemID uint16
---无返回值
function lualib:on_post_drop_one(strMap, strRole, strItem, wItemID)
end

---
---@param strMap string
---@param strRole string
---@param strItem string
---@param wItemID uint16
---@return bool
function lualib:on_pre_drop_one(strMap, strRole, strItem, wItemID)
end

---
---@param strRole string
---@param wSkillID uint16
---无返回值
function lualib:on_teleport(strRole, wSkillID)
end

---
---@param strRole string
---@param bLimit bool
---@return int32
function lualib:Mp(strRole, bLimit)
end

---
---@param strKey string
---@return double
function lualib:GetDBNum(strKey)
end

---
---@param strRole string
---@param strKiller string
---@return bool
function lualib:on_pre_die(strRole, strKiller)
end

---
---@param strRole string
---@param strItem string
---@param wItemID uint16
---@param strItemKey string
---@return bool
function lualib:on_pre_item_pickup(strRole, strItem, wItemID, strItemKey)
end

---
---@param strRole string
---@param wItemID uint16
---@param strItemKey string
---无返回值
function lualib:on_item_apply(strRole, wItemID, strItemKey)
end

---
---@param strPlayer string
---@param strItem string
---@return int32
function lualib:Item_GetSite(strPlayer, strItem)
end

---
---@param strRole string
---@param strItem string
---@param wItemID uint16
---@param strItemKey string
---@return bool
function lualib:on_pre_item_apply(strRole, strItem, wItemID, strItemKey)
end

---
---@param strPlayer string
---@return bool
function lualib:Player_IsViceGuildLeader(strPlayer)
end

---
---@param strPlayer string
---@param iIngot int32
---@param bBind bool
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:Player_SubIngot(strPlayer, iIngot, bBind, strDesc, strTarget)
end

---
---@param byType uint8
---@param strMsg string
---@param strPlayer string
---无返回值
function lualib:SysMsg_SendCenterMsg(byType, strMsg, strPlayer)
end

---
---@param strMonster string
---@return bool
function lualib:Monster_Kill(strMonster)
end

---
---@param strRole string
---@param wX uint16
---@param wY uint16
---@param wType uint8
---无返回值
function lualib:on_move(strRole, wX, wY, wType)
end

---
---@param strPlayer string
---无返回值
function lualib:on_leave_map(strPlayer)
end

---
---@param strPlayer string
---@param bIsOnline bool
---@return table
function lualib:GetFamilyMembers(strPlayer, bIsOnline)
end

---
---@param strNPC string
---@param wNPCID uint16
---@param strNPCName string
---@param wX uint16
---@param wY uint16
---无返回值
function lualib:on_npc_disappear(strNPC, wNPCID, strNPCName, wX, wY)
end

---
---@param strNPC string
---@param wNPCID uint16
---@param strNPCName string
---@param wX uint16
---@param wY uint16
---无返回值
function lualib:on_npc_appear(strNPC, wNPCID, strNPCName, wX, wY)
end

---
---@param strPlayer string
---@return bool
function lualib:HasZhenshi(strPlayer)
end

---
---@param strPlayer string
---@param strItemKey string
---@param wCount uint16
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:GiveItem(strPlayer, strItemKey, wCount, strDesc, strTarget)
end

---
---@param strRole string
---@param bLimit bool
---@return int32
function lualib:TaoAtk(strRole, bLimit)
end

---
---@param strPlayer string
---@param strTalk string
---@param wWidth uint16
---@param wHeight uint16
---无返回值
function lualib:NPCTalkDetail(strPlayer, strTalk, wWidth, wHeight)
end

---
---@param strPlayer string
---@param dwDlgID uint32
---@param strContent string
---@param dwTimeOut uint32
---@param strCallBack string
---@param strParam string
---@return bool
function lualib:SysMsg_SendMsgDlg(strPlayer, dwDlgID, strContent, dwTimeOut, strCallBack, strParam)
end

---
---@param strObject string
---@return string
function lualib:Name(strObject)
end

---
---@param strRole string
---@param strAttacker string
---无返回值
function lualib:on_attack(strRole, strAttacker)
end

---
---@param strMap string
---@param strNpcKey string
---@param wX uint16
---@param wY uint16
---@param wRange uint16
---@param byDir uint8
---@return string
function lualib:Map_GenNpc(strMap, strNpcKey, wX, wY, wRange, byDir)
end

---
---@param strPlayer string
---@return bool
function lualib:Player_KillServant(strPlayer)
end

---
---@param strPlayer string
---@param strItemKey string
---@param wCount int32
---@param bBind uint8
---@param bEquip bool
---@param bBag bool
---@param bWarhouse bool
---@param bAdvWarehouse bool
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:TakeItemEx(strPlayer, strItemKey, wCount, bBind, bEquip, bBag, bWarhouse, bAdvWarehouse, strDesc,
                           strTarget)
end

---
---@param strPlayer string
---@param dwCampID uint32
---@return bool
function lualib:VerifyCampLevel(strPlayer, dwCampID)
end

---
---@param strCastleName string
---@return string
function lualib:GetCastleAttackFamily(strCastleName)
end

---
---@param strPlayer string
---@param strTalk string
---无返回值
function lualib:NPCTalk(strPlayer, strTalk)
end

---
---@param strMonster string
---@param strKiller string
---@return bool
function lualib:on_pre_monster_die(strMonster, strKiller)
end

---
---@param player string
---@param item string
---@return table
function lualib:Equip_GetRefineProp(player, item)
end

---
---@param strMaster string
---@param strSub string
---@param iOffset int
---@return int
function lualib:indexOf(strMaster, strSub, iOffset)
end

---
---@param name string
---@param job uint8
---@param gender uint8
---@param map string
---@param x uint16
---@param y uint16
---@return string
function lualib:GenDummy(name, job, gender, map, x, y)
end

---
---@param strKeyword string
---@param byType uint8
---@param dwTimes uint32
---@param strDesc string
---无返回值
function lualib:SetFbdLogin(strKeyword, byType, dwTimes, strDesc)
end

---
---@param strObject string
---@param iElapse uint32
---@param strCallBack string
---@param strParams string
---@return bool
function lualib:DelayCall(strObject, iElapse, strCallBack, strParams)
end

---
---@param strBuffKey string
---@return uint32
function lualib:BuffKey2ID(strBuffKey)
end

---
---@param strPlayer string
---@param strAlias string
---@return bool
function lualib:Player_SetAlias(strPlayer, strAlias)
end

---
---@param strMap string
---@param wX uint16
---@param wY uint16
---@param wRange uint16
---@param strItemKey string
---@param wCount uint16
---@param bMustEmpty bool
---@param dwFreeze uint32
---@return string
function lualib:Map_GenItemRnd(strMap, wX, wY, wRange, strItemKey, wCount, bMustEmpty, dwFreeze)
end

---
---@param strPlayer string
---@param strMsg string
---@return bool
function lualib:SysPromptMsg(strPlayer, strMsg)
end

---
---@param iScriptType int32
---@return bool
function lualib:ReloadScript(iScriptType)
end

---
---@return uint32
function lualib:GetSvrId()
end

---
---@param strObject string
---@param iType int
---@param strCallBack string
---@return bool
function lualib:RemoveTrigger(strObject, iType, strCallBack)
end

---
---@param strObject string
---@param iType int
---@param strCallBack string
---无返回值
function lualib:AddTrigger(strObject, iType, strCallBack)
end

---
---@param strPlayer string
---无返回值
function lualib:on_first_in_game(strPlayer)
end

---
---@param strCastleName string
---@param strCastle string
---@param strBasilica string
---无返回值
function lualib:on_castle_war_init(strCastleName, strCastle, strBasilica)
end

---
---@param strMap string
---@param strMapKey string
---无返回值
function lualib:on_map_create(strMap, strMapKey)
end

---
---@param strMonster string
---@param wMonsterID uint16
---@param strMonsterName string
---@param wX uint16
---@param wY uint16
---无返回值
function lualib:on_monster_disappear(strMonster, wMonsterID, strMonsterName, wX, wY)
end

---
---@param strRole string
---@param strEquip string
---@param wEquipID uint16
---@param strEquipKey string
---@return bool
function lualib:on_pre_equip(strRole, strEquip, wEquipID, strEquipKey)
end

---
---@param strPlayer string
---@return uint32
function lualib:GetVipLevel(strPlayer)
end

---
---@param strKey string
---无返回值
function lualib:IO_ClearCustomVarStr(strKey)
end

---
---@param strMap string
---@param wX uint16
---@param wY uint16
---@param wRange uint16
---@param bIgnoreDied bool
---@return table
function lualib:Map_GetRegionPlayers(strMap, wX, wY, wRange, bIgnoreDied)
end

---
---@param strKey string
---@param iValue string
---@return bool
function lualib:IO_SetCustomVarStr(strKey, iValue)
end

---
---@param strKey string
---无返回值
function lualib:IO_ClearCustomVarInt(strKey)
end

---
---@param strKey string
---@param iValue int
---@return bool
function lualib:IO_SetCustomVarInt(strKey, iValue)
end

---
---@param strPlayer string
---@param wAttrType uint16
---@return string
function lualib:Player_GetGuidProp(strPlayer, wAttrType)
end

---
---@param strFileName string
---@param dwLine uint32
---@return string
function lualib:IO_TextFileGetLine(strFileName, dwLine)
end

---
---@param strPlayer string
---@return int32
function lualib:Player_GetWarehouseFree(strPlayer)
end

---
---@param strPlayer string
---@return table
function lualib:Player_GetCastleList(strPlayer)
end

---
---@param strCastleName string
---@return string
function lualib:GetCastleTempFamily(strCastleName)
end

---
---@param strMonster string
---无返回值
function lualib:on_monster_out_fight(strMonster)
end

---
---@param Url string
---@param post string
---@param callback string
---@param param string
---@param timeout uint32
---@return bool
function lualib:PostURL(Url, post, callback, param, timeout)
end

---
---@param strMap string
---@param strPlayer string
---@param wX uint16
---@param wY uint16
---@param wRange uint16
---无返回值
function lualib:Map_JumpXY(strMap, strPlayer, wX, wY, wRange)
end

---
---@param strFileName string
---@return bool
function lualib:IO_FileExists(strFileName)
end

---
---@param strItemKey string
---@return uint32
function lualib:ItemKey2ID(strItemKey)
end

---
---@param strPlayer string
---@return bool
function lualib:DisableAutoReply(strPlayer)
end

---
---@param strPlayer string
---@param strCallBack string
---@param strParam string
---@return bool
function lualib:Player_GuildRunScript(strPlayer, strCallBack, strParam)
end

---
---@param strPlayer string
---@param iGold int
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:AddGold(strPlayer, iGold, strDesc, strTarget)
end

---
---@param strPlayer string
---@return int32
function lualib:Player_GetAntiIndulge(strPlayer)
end

---
---@param strPlayer string
---@param iVipLevel int
---无返回值
function lualib:SetVipLevel(strPlayer, iVipLevel)
end

---
---@param strPlayer string
---@param dwCampID uint32
---@return uint32
function lualib:CampIntegs(strPlayer, dwCampID)
end

---
---@param strCastleName string
---@param strFamilyName string
---无返回值
function lualib:SetCastleTempFamily(strCastleName, strFamilyName)
end

---
---@param strPlayer string
---@param strItemInfo string
---@param bInstance bool
---@param strTarget string
---@return bool
function lualib:ApplyItemTarget(strPlayer, strItemInfo, bInstance, strTarget)
end

---
---@param strPlayer string
---@param dwCampID uint32
---@param dwIntegral uint32
---@return bool
function lualib:JoinCamp(strPlayer, dwCampID, dwIntegral)
end

---
---@param player string
---@param url string
---@return bool
function lualib:WebBox(player, url)
end

---
---@param strPlayer string
---@param dwCampID uint32
---@return uint32
function lualib:CampCounts(strPlayer, dwCampID)
end

---
---@param dwScheduleID uint32
---@param strScheduleName string
---@param iType
---| 1 # `Y-m-d h:m:s` 特定时间
---| 2 # `m-d h:m:s` 每年执行
---| 3 # `d h:m:s` 每月执行
---| 4 # `w h:m:s` 每周执行
---| 5 # `h:m:s` 每天执行
---@param tTime table #  计划任务时间表
---@param strCallBack string # 计划任务回调函数
--- ``` lua
--- ---@param dwScheduleID int #计划任务ID
--- ---@param strParam string #自定义参数
--- callback( dwScheduleID, strParam)
--- ```
---@param strParam string #  自定义参数
---@return bool # `true` 添加成功 `false`添加失败
function lualib:AddScheduled(dwScheduleID, strScheduleName, iType, tTime, strCallBack, strParam)
end

---
---@param strPlayer string
---@return string
function lualib:GetEscorter(strPlayer)
end

---
---@param strItem string
---@return uint32
function lualib:ItemDropFreezeTime(strItem)
end

---
---@param strPlayer string
---@param wQuestID uint16
---@return bool
function lualib:ForceQuestReady(strPlayer, wQuestID)
end

---
---@param strFmt string
---@param dwTimes uint32
---@return string
function lualib:Time2Str(strFmt, dwTimes)
end

---
---@param strPlayer string
---@param strFamilyName string
---@return bool
function lualib:IsInFamily(strPlayer, strFamilyName)
end

---
---@param strString string
---@param iLen int
---@param iOffset int
---@return string
function lualib:right(strString, iLen, iOffset)
end

---
---@param strPlayer string
---@param wTitleID uint16
---无返回值
function lualib:ApplyTitle(strPlayer, wTitleID)
end

---
---@param strMap string
---@param wX uint16
---@param wY uint16
---@param wRange uint16
---@param strItemKey string
---无返回值
function lualib:Map_ClearItem(strMap, wX, wY, wRange, strItemKey)
end

---
---@param strCastleName string
---@param strKey string
---@param iValue int32
---无返回值
function lualib:SetCastleCustomVarInt(strCastleName, strKey, iValue)
end

---
---@param strMap string
---@param strItem string
---@param wItemID uint16
---@param strItemKey string
---@param wX uint16
---@param wY uint16
---无返回值
function lualib:on_item_appear(strMap, strItem, wItemID, strItemKey, wX, wY)
end

---
---@param strNpc string
---@return bool
function lualib:Npc_Remove(strNpc)
end

---
---@param strPlayer string
---@return int32
function lualib:GetBagFree(strPlayer)
end

---
---@param strCastleName string
---@return bool
function lualib:HasCastle(strCastleName)
end

---
---@param strPlayer string
---@param bActive bool
---@return bool
function lualib:Player_SetGhost(strPlayer, bActive)
end

---
---@param strPlayer string
---@param strFamilyName string
---@return int32
function lualib:CreateFamily(strPlayer, strFamilyName)
end

---
---@param strMap string
---@return bool
function lualib:Map_IsDgnExist(strMap)
end

---
---@param strMap string
---@return bool
function lualib:Map_ClearDgnPlayer(strMap)
end

---
---@param strRole string
---@param strEquip string
---@param wEquipID uint16
---@param strEquipKey string
---无返回值
function lualib:on_post_equip(strRole, strEquip, wEquipID, strEquipKey)
end

---
---@param strMap string
---无返回值
function lualib:Map_DestroyDgn(strMap)
end

---
---@param dummy string
---@param AI table
---@return bool
function lualib:SetDummySkillAI(dummy, AI)
end

---
---@param strPlayer string
---@param strItemKey string
---@param iCount int32
---@param bBind uint8
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:DelItem(strPlayer, strItemKey, iCount, bBind, strDesc, strTarget)
end

---
---@param strPlayer string
---@param iGold int32
---@param bBind bool
---@return bool
function lualib:Player_IsGoldEnough(strPlayer, iGold, bBind)
end

---
---@param strPlayer string
---@param iIntegral int32
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:Player_AddIntegral(strPlayer, iIntegral, strDesc, strTarget)
end

---
---@param strCastleName string
---@return string
function lualib:GetCastleMapGuid(strCastleName)
end

---
---@param strPlayer string
---@param strItemKey string
---@param wCount uint16
---@param strDesc string
---@param strTarget string
---@return string
function lualib:GiveOneBindItem(strPlayer, strItemKey, wCount, strDesc, strTarget)
end

---
---@param strMaster string
---@param strSplit string
---@param strSubStr string
---@return bool
function lualib:IsInCollection(strMaster, strSplit, strSubStr)
end

---
---@param strMap string
---@param wX uint16
---@param wY uint16
---@param strItemKey string
---@param wCount uint16
---@param bMustEmpty bool
---@param dwFreeze uint32
---@return string
function lualib:Map_GenItem(strMap, wX, wY, strItemKey, wCount, bMustEmpty, dwFreeze)
end

---
---@param strKey string
---@return string
function lualib:IO_GetCustomVarStr(strKey)
end

---
---@param strMap string
---@param strMonsterKey string
---@param bIgnoreDied bool
---@param bIgnoreServant bool
---@return int32
function lualib:Map_GetMonsterCount(strMap, strMonsterKey, bIgnoreDied, bIgnoreServant)
end

---
---@param strPlayer string
---@param strItem string
---@param bAdv bool
---@return bool
function lualib:Player_FixSingleEquip(strPlayer, strItem, bAdv)
end

---
---@param strMap string
---@param bIgnoreDied bool
---@return int32
function lualib:Map_GetPlayerCount(strMap, bIgnoreDied)
end

---
---@param strPlayer string
---@param strMsg string
---@param iForeground int32
---@param iBackground int32
---无返回值
function lualib:SysMsg_SendBottomColor(strPlayer, strMsg, iForeground, iBackground)
end

---
---@param sender string
---@param receiver string
---@param text string
---@return bool
function lualib:SendMail(sender, receiver, text)
end

---
---@param strPlayer string
---@param iGold int32
---@param bBind bool
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:Player_AddGold(strPlayer, iGold, bBind, strDesc, strTarget)
end

---
---@param strPlayer string
---@param iExitType int32
---@return bool
function lualib:on_pre_logout(strPlayer, iExitType)
end

---
---@param strPlayer string
---@param strJson string
---@param bNew bool
---@return string
function lualib:Json2ItemEx(strPlayer, strJson, bNew)
end

---
---@param strPlayer string
---@param strMapKey string
---@return bool
function lualib:Player_MapMove(strPlayer, strMapKey)
end

---
---@param strPlayer string
---@return int32
function lualib:Player_GetBagFree(strPlayer)
end

---
---@param strRole string
---@param bLimit bool
---@return int32
function lualib:MagAtk(strRole, bLimit)
end

---
---@param player string
---@param item string
---@param index uint16
---@param attr uint8
---@param attr uint16
---@return bool
function lualib:Equip_SetExtProp(player, item, index, attr, attr)
end

---
---@param strNpc string
---@param strName string
---@return bool
function lualib:Npc_ChangeName(strNpc, strName)
end

---
---@param strPlayer string
---@param strServantKey string
---@return string
function lualib:Player_Catch(strPlayer, strServantKey)
end

---
---@param strMap string
---@param wX uint16
---@param wY uint16
---@param wRange uint16
---@param byDir uint8
---@param strMonsterKey string
---@param wCount uint16
---@param bCanRelive bool
---@return bool
function lualib:Map_GenMonster(strMap, wX, wY, wRange, byDir, strMonsterKey, wCount, bCanRelive)
end

---
---@param strMsg string
---无返回值
function lualib:Error(strMsg)
end

---
---@param strMonster string
---@return bool
function lualib:Monster_IsDie(strMonster)
end

---
---@param strMonsterKey string
---@return uint32
function lualib:MonsterKey2ID(strMonsterKey)
end

---
---@param strObject string
---@param strKey string
---@return string
function lualib:GetWeekStr(strObject, strKey)
end

---
---@param strMonster string
---@param wActorX uint16
---@param wActorY uint16
---@param wDistance uint16
---@return table
function lualib:Monster_GetEscapePoint(strMonster, wActorX, wActorY, wDistance)
end

---
---@param strPlayer string
---@param strItemKey string
---@return bool
function lualib:TakeOn(strPlayer, strItemKey)
end

---
---@param strItem string
---@return uint32
function lualib:ItemDropTime(strItem)
end

---
---@param strObject1 string
---@param strObject2 string
---@return uint16
function lualib:Distance(strObject1, strObject2)
end

---
---@param strMaster string
---@param strSplit string
---@return table
function lualib:StrSplit(strMaster, strSplit)
end

---
---@param strPlayer string
---@param dwDuration uint32
---@param strDesc string
---@param strCompleteCallBack string
---@param strAbortCallBack string
---@param strParam string
---@return bool
function lualib:ProgressBarStart(strPlayer, dwDuration, strDesc, strCompleteCallBack, strAbortCallBack, strParam)
end

---
---@param strPlayer string
---@return bool
function lualib:Player_IsCanMove(strPlayer)
end

---
---@param strPlayer string
---@return uint32
function lualib:LastTalkTime(strPlayer)
end

---
---@param strPlayer string
---@param iIngot int32
---@param bBind bool
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:Player_AddIngot(strPlayer, iIngot, bBind, strDesc, strTarget)
end

---
---@param strPlayer string
---@param strCallBack string
---@param strParam string
---@return bool
function lualib:Player_TeamRunScript(strPlayer, strCallBack, strParam)
end

---
---@param strPlayer string
---@param dwDlgID uint32
---@param strContent string
---@param dwTimeOut uint32
---@param byMaxLen uint8
---@param strCallBack string
---@param strParam string
---@return bool
function lualib:InputDlg(strPlayer, dwDlgID, strContent, dwTimeOut, byMaxLen, strCallBack, strParam)
end

---
---@param strPlayer string
---@param strMapKey string
---@param wX uint16
---@param wY uint16
---@param wRange uint16
---@return bool
function lualib:Player_MapMoveXY(strPlayer, strMapKey, wX, wY, wRange)
end

---
---@param strPlayer string
---@param strMap string
---@param wX uint16
---@param wY uint16
---@param wRange uint16
---@param wHPPCT uint16
---@return bool
function lualib:Player_Relive(strPlayer, strMap, wX, wY, wRange, wHPPCT)
end

---
---@param strPlayer string
---@param iIntegral int32
---@param strDesc string
---@param strTarget string
---@return bool
function lualib:Player_SubIntegral(strPlayer, iIntegral, strDesc, strTarget)
end

---
---@param strPlayer string
---@return string
function lualib:Player_GetTeamGuid(strPlayer)
end

---
---无返回值
function lualib:ReloadGMList()
end

---
---@param strMonster string
---@return string
function lualib:Monster_GetMap(strMonster)
end
