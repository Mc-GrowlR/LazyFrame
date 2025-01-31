---@meta Server

---@class task_table
---@field public Ok_task table
---@field public No_task table
talk_table = {}

---@class lualib
lualib = {}

---接受服务端传过来的参数
---@class FormParam
FormParam = {}
---Shop

---@type fun(strNpc:string,wShopId:uint16):boolean
---@param strNpc string @NPC's GUID
---@param wShopId uint16 @Shop's ID
---@return boolean @true: Ok,false: No
---@source main.lua:13
---关联NPC与指定商店
function lualib:AddShop(strNpc, wShopId)
end

---@param strNpc string @NPC's GUID
---@param strPlayer string @Player's GUID
---@param wShopId uint16 @Shop's ID
---打开与NPC关联过的商店
function lualib:OpenShop(strNpc, strPlayer, wShopId)
end

---------
---任务
-- wQuestID 是任务管理中的任务编号
-- 位于：游戏配置 -> 任务 -> 任务管理


---@type fun(strPlayer:string,wQuestID:uint16):boolean
---  >   判断某任务是否可接
---@param strPlayer string @Player's GUID
---@param wQuestID uint16 @task's ID
---@return boolean @true: Ok,false: No
function lualib:CanAcceptQuest(strPlayer, wQuestID)
end

---     判断某任务是否可提交
---@param strPlayer string @Player's GUID
---@param wQuestID uint16 @task's ID
---@return boolean @true: Ok,false: No
function lualib:CanAccomplishQuest(strPlayer, wQuestID)
end

--- 玩家接受任务
---@param strPlayer string @Player's GUID
---@param wQuestID uint16 @task's ID
---@return boolean @true: Ok,false: No
function lualib:AcceptQuest(strPlayer, wQuestID)
end

--- 玩家提交任务
---@param strPlayer string @Player's GUID
---@param wQuestID uint16 @任务的ID
---@param wSelect uint16 @选择项(默认为0)
---@return bool
function lualib:AccomplishQuest(strPlayer, wQuestID, wSelect)
end

-------------------------------------------
--- 系统 : begin |
----

-------
--- 系统-消息处理

---通知客户端销蚀消息框
---@param strPlayer string @玩家的GUID
---@param strContent string @消息框内容
function lualib:MsgBox(strPlayer, strContent)
end

-------
--- 系统-定时器

---     给对象添加定时器
---@param strObject string @对象GUID
---@param dwTimerID uint32 @定时器ID,同一对象下ID必须唯一
---@param iElapse int32 @定时器触发间隔，单位为ms
---@param iCount int32 @定时器触发次数,-1:无限触发
---@param strCallBack string @定时器触发时回调该函数
---                           函数格式: 1 = 函数名,2 = 文件名:函数名
function lualib:AddTimer(strObject, dwTimerID, iElapse, iCount, strCallBack)
end

-------
--- 系统-计算

---     生成随机数
---@param iMin int32 @最小值
---@param iMax int32 @最大值
---@return int32 @返回在[iMin,iMax](闭区间)之内的随机数
function lualib:GenRandom(iMin, iMax)
end

-------
---系统-表单

---@param strPlayer string @Player's GUID
---@param strFormName string @客户端中要被调用的表单名
function lualib:ShowForm(strPlayer, strFormName)
end

---系统-消息处理

---对指定角色发送滚动消息
---@param strRole string @角色的GUID
---@param strMsg string @消息的内容
---@param foreground uint8 @ 前景颜色的索引值 范围1~13，具体请参见消息颜色定义页面。
---@param background uint8 @ 背景颜色的索引值 范围1~13，具体请参见消息颜色定义页面。
---@param speed uint8 @ 滚动速度 数值越大，滚动速度越快。
---@param count uint32 @循环滚动的次数
---@return bool
function lualib:SysMsg_SendScrollMsg(strRole, strMsg, foreground, background, speed, count)
end

---通知客户端显示输入框
---@param strPlayer string Player's GUID
---@param dwDlgID uint32 @输入框ID，任填，同GUID下必须唯一
---@param strContent string @输入框内容
---@param dwTimeOut uint32 @输入框超时时间，单位为秒
---@param byMaxLen uint32 @输入框最大输入长度
---@param strCallBack string @输入框回调函数名字
---                           回调函数格式，`pfnCallBack(dwDlgID, strPlayer, strInput, strParam)`
---@param strPara string @自定义参数
---@return boolean @true: Ok,false: No
function lualib:InputDlg(strPlayer, dwDlgID, strContent, dwTimeOut, byMaxLen, strCallBack, strParam)
end

---通知客户端显示输入框
---@param strPlayer string Player's GUID
---@param dwDlgID uint32 @输入框ID，任填，同GUID下必须唯一
---@param strContent string @输入框内容
---@param dwTimeOut uint32 @输入框超时时间，单位为秒
---@param dwMaxLen uint32 @输入框最大输入长度
---@param strCallBack string @输入框回调函数名字
---                           回调函数格式，`pfnCallBack(dwDlgID, strPlayer, strInput, strParam)`
---@param strPara string @自定义参数
---@return boolean @true: Ok,false: No
function lualib:SysMsg_SendInputDlg(strPlayer, dwDlgID, strContent, dwTimeOut, dwMaxLen, strCallBack, strPara)
end

---发送客户端底部消息
---@param strPlayer string
---@param strMsg string
---@param iForeground int32 @前景颜色的索引值范围1~13，具体请参见消息颜色定义页面
---@param iBackground int32 @背景颜色的索引值范围1~13，具体请参见消息颜色定义页面。
function lualib:SysMsg_SendBottomColor(strPlayer, strMsg, iForeground, iBackground)
end

---发送客户端底部提示消息
---@param strPlayer string @Player's GUID
---@param strMsg string @消息内容
---@return boolean @true: Ok,false: No
function lualib:SysMsg_SendPromptMsg(strPlayer, strMsg)
end

---     发送角色当前说话通知
---@param strRole string @角色的GUID，角色可以为玩家、怪物或NPC
---@param strMsg string @消息内容
---@return boolean @true: Ok,false: No
function lualib:SysMsg_SendRoleTalk(strRole, strMsg)
end

---系统-游戏服务器

---获取区ID
---@return uint32 @区ID
function lualib:GetZoneId()
end

---获取组ID
---@return uint32 @组ID
function lualib:GetGroupId()
end

----------
--- 对象通用
---获取对象实体上存储的整型数值变量
---@param strObject string @对象的GUID,
---      1. 对象可以为玩家、怪物、NPC、物品、地图、系统或行会。
---      2. 当对象的GUID为""或"0"时，代表系统全局层面适用的对象。
---@param strKey string @变量名
---@return int32
function lualib:GetInt(strObject, strKey)
end

----------
---玩家

---角色是否拥有指定BUFF
---@param strRole string
---@param strBuffKey string
function lualib:HasBuff(strRole, strBuffKey)
end

--删去角色的BUFF
---@param strRole string
---@param strBuffKey string
function lualib:DelBuff(strRole, strBuffKey)
end

---获取BUFF的ID
---@param strBuffKey string @BUFF的索引名
---@return uint32 @OK:ID,NO:0
function lualib:BuffKey2ID(strBuffKey)
end

---获取指定角色的BUFF列表
---@param role_guid string
---@return table
function lualib:GetBuffList(role_guid)
end

---设置角色MP
---@param strRole string
---@param iValue int32
---@param bIsLimit bool
function lualib:SetMp(strRole, iValue, bIsLimit)
end

---@param strRole string
---@param iValue int32
---属性值（即要设置的方向值，范围为0-7，从0开始依次为从上边开始的顺时针的八个方向） 0上边 1右上 2右边 3右下 4下边 5左下 6左边 7左上
function lualib:SetDirEx(strRole, iValue)
end

---获取角色的性别
---@param strRole string
---@return int32 @1:男，2：女
function lualib:Gender(strRole)
end

---设置角色性别
---@param strRole string
---@param iValue int32 @1:男，2：女
function lualib:SetGender(strRole, iValue)
end

---     此函数设置对象的动态属性。
---     动态属性可在游戏中动态调整对象对应的属性，设置的动态属性值会叠加在对象原有的属性值上。
---@param strGUID string @对象的GUID
---@param iAttrSite int32 @动态属性编号（填写范围为0-199）
---@param iAttrType int32 @属性的枚举值/类型值
---@param iAttrValue int32 @属性值
---@return bool
function lualib:SetDynamicAttr(strGUID, iAttrSite, iAttrType, iAttrValue)
end

---     获取对象的动态属性
---@param strGUID string @对象的GUID
---@param iAttrSite int32 @动态属性编号（填写范围为`0-199`）
---@return table @动态属性信息表
---     动态属性信息表存储在lua表，为 `table` 格式。
---     具体格式：`{["attr_name"]=属性的枚举值/类型值,["attr_value"]=属性值,}`
---属性值：对应角色属性类型定义中枚举值在300至499与700至899且枚举值为**奇数**的属性（动态属性值）。
function lualib:GetDynamicAttr(strGUID, iAttrSite)
end

---     获取玩家实体上储存的整形数值变量
---     api已过期, 代替: `GetInt`。
---@param strPlayer string @Player's GUID
---@param strKey string @变量名
---@return int32 @Ok: value,No:`0`
function lualib:Player_GetCustomVarInt(strPlayer, strKey)
end

---     获取玩家的账号ID
---     api已过期, 代替：`UserID`
---@param strPlayer string @Player's GUID
---@return uint32 @Ok:Player'Id, No:return `0`
function lualib:Player_GetAccountID(strPlayer)
end

---     获取玩家的属性值
---     api已过期
---@param strPlayer string @Player's GUID
---@param iAttrType int32 @属性类型（过期接口不再详述）
---@return double
function lualib:Player_GetIntProp(strPlayer, iAttrType)
end

---     获取玩家的物品数量
--- -Note: api已过期 代替：`ItemCountEx`
---@param strPlayer string @Player's GUID
---@param strItemKey string @物品索引名(keyname)
---@return int32 @`true`: 返回符合条件的物品数量，`false`：返回`-1`
function lualib:Player_GetItemCount(strPlayer, strItemKey)
end

---获取玩家的绑定物品数量
--- -Note: api已过期 代替：`ItemCountEx`
---@param strPlayer string @Player's GUID
---@param strItemKey string @物品索引名(keyname)
---@return int32 @`true`: 返回符合条件的物品数量，`false`：返回`-1`
function lualib:Player_GetItemCountBind(strPlayer, strItemKey)
end

---      给与玩家绑定物品
---      若玩家背包满了，物品会掉到地上，绑定物品只有玩家自己才能拾取。
---      NOTE: api已过期 代替：`GiveBindItem`
---@param strPlayer string @Player's GUID
---@param strItemKey string @物品索引名(keyname)
---@param wCount int32 @给与数量
---@param strDesc string @动作原因
---@param strTarget string @动作发起者
function lualib:Player_GiveItemBind(strPlayer, strItemKey, wCount, strDesc, strTarget)
end

---获取玩家的账号ID
---@param strPlayer string @Player's GUID
---@return uint32 @Ok:Player'Id, No:return `0`
function lualib:UserID(strPlayer)
end

---     获取角色的等级
---@param strRole string @角色的GUID
---@return int32 @对应角色的等级
function lualib:Level(strRole)
end

---      在对象实体上存储整型数值变量，当对象是玩家时变量会自动保存到数据库中
---@param strPlayer string @玩家角色的GUID
---@param strKey string @变量名
---@param iValue inte32 @变量名
---@return bool
function lualib:Player_SetCustomVarInt(strPlayer, strKey, iValue)
end

------------
---物品

---给与玩家绑定物品
---@param strPlayer string @玩家GUID
---@param strItemKey string @物品的索引名（KeyName）
---@param wCount int32 @添加的数量
---@param strDesc string @动作的原因
---@param strTarget string @动作的发起者
---@return bool
function lualib:GiveBindItem(strPlayer, strItemKey, wCount, strDesc, strTarget)
end

---获取玩家的绑定物品数量
---@param strPlayer string @Player's GUID
---@param strItemKey string @物品索引名(keyname)
---@param bBindType uint8 @绑定类型:`0`必须非绑定,`1`必须绑定,`2`绑定/非绑定
---@param bEquip bool @是否判断装备栏
---@param bBag bool @是否判断仓库
---@param bWarhouse bool @是否判断仓库
---@param bAdvWarehouse bool @是否判断高级仓库
---@return int32 @`true`: 返回符合条件的物品数量，`false`：返回`-1`
function lualib:ItemCountEx(strPlayer, strItemKey, bBindType, bEquip, bBag, bWarhouse, bAdvWarehouse)
end

---      获取玩家包裹中的空格子数量
---      当参数`bBag`、`bWarhouse`和`bAdvWarhouse`中有两个及以上参数设置为`true`时，则获取的空格子数量会进行叠加。
---@param strPlayer string @Player's GUID
---@param bBag bool @是否判断仓库
---      `true`:获取, `false`:不获取
---@param bWarhouse bool @是否判断仓库
---      `true`:获取, `false`:不获取
---@param bAdvWarehouse bool @是否判断高级仓库
---      `true`:获取, `false`:不获取
---@return int32 @Ok:空格子数量,No:`-1`
function lualib:BagFree(strPlayer, bBag, bWarhouse, bAdvWarehouse)
end

--------
---NPC

---修改指定NPC的名字
---@param strNpc string @NPC's GUID
---@param strName string @NPC要修改的名字
function lualib:Npc_ChangeName(strNpc, strName)
end

---此函数获取NPC实体上绑定的任务信息，包括可接任务和可交任务
---@param strNpc string @NPC's GUID
---@return task_table
function lualib:Npc_GetBindQuests(strNpc)
end

---设置对话框的内容并打开对话框
---此函数设置NPC对话框中的内容，并打开指定NPC的对话框，无需对应的NPC存在。
---@param strPlayer string
---@param strTalk string
function lualib:NPCTalk(strPlayer, strTalk)
end

---设置对话框的内容并打开对话框（扩展）
---此函数设置NPC对话框中的内容，并打开指定NPC的对话框，需对应的NPC存在。
---@param strNpc string
---@param strPlayer string
---@param strTalk string
function lualib:NPCTalkEx(strNpc, strPlayer, strTalk)
end

---打开物品的对话框
---此函数设置NPC对话框中的内容和尺寸，并打开指定NPC的对话框，无需对应的NPC存在。
---@param strPlayer string
---@param strTalk string
---@param wWidth uint16
---@param wHeight uint32
function lualib:NPCTalkDetail(strPlayer, strTalk, wWidth, wHeight)
end

---设置对话框的内容和尺寸并打开对话框（扩展）
---此函数设置NPC对话框中的内容和尺寸，并打开指定NPC的对话框，需对应的NPC存在。
---@param strNpc string
---@param strPlayer string
---@param strTalk string
---@param wWidth uint16
---@param wHeight uint32
function lualib:NPCTalkDetailEx(strNpc, strPlayer, strTalk, wWidth, wHeight)
end

---打开NPC的对话框或者任务框
---@param strNpc string
---@param strPlayer string
---@param strTalk string
---@param wWidth uint16
---@param wHeight uint32
function lualib:NPCTalkDetailQuest(strNpc, strPlayer, strTalk, wWidth, wHeight)
end

----------
---包裹

---增加背包格子数
---@param player_guid string @玩家角色的GUID
---@param amount int32 @要增加的格子数
---@return bool
function lualib:AddBagSite(player_guid, amount)
end

---获取玩家包裹中的格子数量，，支持获取玩家背包、仓库和高级仓库中的格子数量，与接口`GetBagSizeEx`作用相同。
---@param strPlayer string
---@param bBag boolean
---@param bWarhouse boolean
---@param bAdvWarhouse boolean
---@return int32 @获取成功则返回玩家包裹中的格子数量,获取失败则返回-1
function lualib:BagSize(strPlayer, bBag, bWarhouse, bAdvWarhouse)
end

---此函数获取玩家背包中的格子数量（仅支持玩家背包）。
---@param strPlayer string @玩家角色的GUID
---@return int32 @获取成功则返回玩家包裹中的格子数量,获取失败则返回-1
function lualib:GetBagSize(strPlayer)
end

---此函数获取玩家包裹中的格子数量，支持获取玩家背包、仓库和高级仓库中的格子数量，与接口BagSize作用相同。
---@param strPlayer string
---@param bBag boolean
---@param bWarhouse boolean
---@param bAdvWarhouse boolean
function lualib:GetBagSizeEx(strPlayer, bBag, bWarhouse, bAdvWarhouse)
end

---获取玩家背包中的第一个空格位
---@param strPlayer string
---@return int32 @若玩家背包中有空格，则返回第一个空格位对应的装备位枚举值；若玩家背包中没有空格，则返回-1。
function lualib:FindFirstBagFreeSlot(strPlayer)
end

---通知客户端显示表单
---@param strPlayer string
---@param strFormName string
---@param strContent string
function lualib:ShowFormWithContent(strPlayer, strFormName, strContent)
end

---根据地图的索引名获取地图ID
---@param strMapKey string
---@return uint32 @OK:ID,NO:0
function lualib:MapKey2ID(strMapKey)
end

---将该怪物设为自动行走怪
---@param strMonster string @怪物的GUID
---@param tPath table @路径表
---@param byType uint8
---@param bForce bool
function lualib:Monster_SetSeeker(strMonster, tPath, byType, bForce)
end

---获取对象的索引名
---@param strObject string @对象的GUID
---@return string @对象存在则返回对象的索引名，不存在则返回""
function lualib:KeyName(strObject)
end

--- 创建副本地图
--- @param strMapKey string @副本地图索引名
--- @param bLoadGrid bool @是否在副本地图创建时直接加载地图逻辑格
--- @param dwLife uint32 @副本地图的生存时间
function lualib:Map_CreateDgn(strMapKey, bLoadGrid, dwLife)
end

---给玩家设置指定副本地图的门票
---@param strPlayer string @ 玩家角色的GUID
---@param strMap string @副本地图的GUID
---@return bool
function lualib:Player_SetDgnTicket(strPlayer, strMap)
end

---判断玩家是否拥有副本地图的门票
---@param strPlayer string @玩家角色的GUID
---@param strMap string @副本角色的索引名
---@return bool
function lualib:Player_HasDgnTicket(strPlayer, strMap)
end

--- test
