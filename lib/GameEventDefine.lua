--- 逻辑事件定义在此文件中定义
--- 逻辑事件中的各个参数需从全局变量
--事件定义
local i = 0
LUA_EVENT_NONE = i; i = i + 1				--()
LUA_EVENT_ONPLAYLEVELUP = i; i = i + 1	  	--玩家等级提升(INT _Level)
LUA_EVENT_ONLOGIN = i; i = i + 1		 		--登录()
LUA_EVENT_INITRESCOMPLETE = i; i = i + 1		--窗口创建完毕()
LUA_EVENT_ONENTERMAP = i; i = i + 1	 		--进入地图(string _MapKeyName INT _XPos INT _YPos)
LUA_EVENT_ONADDSKILL = i; i = i + 1			--添加技能(INT _SkillID)
LUA_EVENT_ONADDITEM = i; i = i + 1 			--添加物品(string _ItemName,UINT64 _ItemGUID,INT _ItemID)
LUA_EVENT_ONDROPITEM = i; i = i + 1 			--丢弃物品(string _ItemName,UINT64 _ItemGUID,INT _ItemID)
LUA_EVENT_CHANGEATTACMODE = i; i = i + 1 	--切换攻击模式(INT _AttacMode)
LUA_EVENT_GETNEWQUEST = i; i = i + 1 		--接取任务(INT _QuestID)
LUA_EVENT_FINISHQUEST = i; i = i + 1 		--完成任务(INT _QuestID)
LUA_EVENT_READYQUEST = i; i = i + 1 			--激活任务(INT _QuestID)
LUA_EVENT_DROPQUEST = i; i = i + 1			--放弃任务(INT _QuestID)
LUA_EVENT_ONADDBUFF = i; i = i + 1 			--添加buff(INT _BuffID)
LUA_EVENT_ONPLAYERAPPEAR = i; i = i + 1		--玩家出现(UINT64 _RoleID)
LUA_EVENT_ONFINISHMASTER = i; i = i + 1		--拜师完成()
LUA_EVENT_ONFINISHMARRY = i; i = i + 1		--结婚完成()
LUA_EVENT_ONJOINFAMILY = i; i = i + 1		--加入行会()
LUA_EVENT_ONLEAVEFAMILY = i; i = i + 1		--离开行会()
LUA_EVENT_ONACHIEVECASTLE = i; i = i + 1		--获得城堡()
LUA_EVENT_ONLOSECASTLE = i; i = i + 1		--关闭城堡()
LUA_EVENT_ONNEWMAIL = i; i = i + 1			--新邮件提醒()
LUA_EVENT_ONADDFRIEND = i; i = i + 1			--添加好友()
LUA_EVENT_ONDELFRIEND = i; i = i + 1			--删除好友()
LUA_EVENT_ONJOINTEAM = i; i = i + 1			--加入队伍()
LUA_EVENT_ONLEAVETEAM = i; i = i + 1			--离开队伍()
LUA_EVENT_ONP2PTRADEOK = i; i = i + 1		--交易()
LUA_EVENT_OPENPAKAGEGUI = i; i = i + 1		--打开包裹()
LUA_EVENT_OPENSKILLGUI = i; i = i + 1		--打开技能面板()
LUA_EVENT_OPENROLEGUI = i; i = i + 1			--打开角色面板()
LUA_EVENT_OPENMAILGUI = i; i = i + 1			--打开邮件()
LUA_EVENT_OPENQUESTGUI = i; i = i + 1		--打开任务面板()
LUA_EVENT_OPENSYSSETGUI = i; i = i + 1		--打开设置面板()
LUA_EVENT_OPENFAMILYGUI = i; i = i + 1		--打开行会面板()
LUA_EVENT_OPENVIPGUI = i; i = i + 1			--打开VIP面板()
LUA_EVENT_OPENRANKGUI = i; i = i + 1			--打开排行榜面板()
LUA_EVENT_OPENFRIENDGUI = i; i = i + 1		--打开好友面板()
LUA_EVENT_OPENBIGMAPGUI = i; i = i + 1		--打开大地图面板()
LUA_EVENT_OPENBIGCAMPAIGNGUI = i; i = i + 1	--打开活动面板()
LUA_EVENT_OPENWAREHOUSEGUI = i; i = i + 1	--打开仓库面板()
LUA_EVENT_OPENADVWAREHOUSEGUI = i; i = i + 1	--打开高级仓库面板()
LUA_EVENT_OPENGAMEMALLGUI = i; i = i + 1		--打开商城面板()
LUA_EVENT_OPENGAMESETTINGGUI = i; i = i + 1	--打开游戏设置面板()
LUA_EVENT_PROPERTYDATA = i; i = i + 1		--角色属性改变(UINT64 _RoleID, INT _Type, INT _Data)
LUA_EVENT_CLOSEQUESTGUI = i; i = i + 1		--关闭任务窗口()
LUA_EVENT_CLOSEPACKAGEGUI = i; i = i + 1		--关闭包裹窗口()
LUA_EVENT_CLOSEROLEGUI = i; i = i + 1		--关闭角色面板()
LUA_EVENT_CLOSESKILLGUI = i; i = i + 1		--关闭技能面板()
LUA_EVENT_ONAPPLYITEM = i; i = i + 1			--使用物品(string _ItemName,UINT64 _ItemGUID,INT _ItemID)
LUA_EVENT_ONTEAMINVITE = i; i = i + 1		--被邀请组队()
LUA_EVENT_UPDATASCREENSIZE = i; i = i + 1	--窗口大小改变时调用(INT_XDiff,INT_YDiff)
LUA_EVENT_ONQUITEGAME = i; i = i + 1			--登出时调用()
LUA_EVENT_ONSHOWFORM = i; i = i + 1			--接收到表单(string _FormName, string _FormContent)
LUA_EVENT_SUBMITFORMACK = i; i = i + 1		--提交表单反馈(string _ScriptName, string _FormRet)
LUA_EVENT_RELOADLUAEND = i; i = i + 1		--重新加载脚本完毕()
LUA_EVENT_ONGUIDECREATE = i; i = i + 1		--新手面板创建事件(GuideId)
LUA_EVENT_ONEQUIPMENT = i; i = i + 1			--穿戴装备事件(name, guid, id, site)
LUA_EVENT_HORSEBUTTONCLICK = i; i = i + 1	--玩家骑马事件 flag:0行走 1:骑马(flag)
LUA_EVENT_WNDLOADLAYOUT = i; i = i + 1      	--窗口成功加载布局文件(string _LayOutFile, INT _pCurWnd)
LUA_EVENT_ITEMWNDMOVEITEMIN = i; i = i + 1	--从背包源物品格移动道具到目标窗口(INT _CurItemWindowType, DWORD _SrcItemGUIDataHandle)
LUA_EVENT_OPENNPCTALK = i; i = i + 1			--打开NPC面板(string _NpcName, UINT64 _NpcGUID, string _Text)
LUA_EVENT_CLICKNPCTALKITEM = i; i = i + 1	--点击NPC面板上的条目(string _NpcName, string _ItemInfo)
LUA_EVENT_CLICKTASKMAPLINK = i; i = i + 1	--点击任务追踪面板上的跳地图链接(string _MapKeyName)
LUA_EVENT_CLICKTASKNPCLINK = i; i = i + 1	--点击任务追踪面板上的NPC链接(string _NpcKeyName)
LUA_EVENT_DEFENDICONINIT = i; i = i + 1		--二级密码防护控件初始化事件()
LUA_EVENT_UILINK = i; i = i + 1				--UILink点击事件,用于点击链接触发打开窗口,提交表单,等
LUA_EVENT_ONITEMUPDATE = i; i = i + 1		--物品更新事件(string _ItemGUID)
LUA_EVENT_ONITEMATTRCHANGE = i; i = i + 1	--物品属性改变事件(string _ItemGUID)
LUA_EVENT_ONITEMDESTROY = i; i = i + 1		--物品删除事件(string _ItemGUID)
LUA_EVENT_ONUISTYLECHANGE = i; i = i + 1		--界面布局发生变化(bool _UseNewStyle)
LUA_EVENT_ONHEROCREATE = i; i = i + 1		--英雄创建事件(string _DummyGUID)
LUA_EVENT_ONHERODESTROY = i; i = i + 1		--英雄销毁事件(string _DummyGUID)
LUA_EVENT_ONMOUSEITEMCLEAR = i; i = i + 1	--鼠标上物品清空事件(DWORD _ItemGUIData)
LUA_EVENT_OFFEQUIPMENT = i; i = i + 1		--脱装备事件(string GUID)
LUA_EVENT_AUTOATTACSTOP = i; i = i + 1		--跳地图后挂机停止
LUA_EVENT_PLAYERADDBUFF = i; i = i + 1		--玩家添加buff(INT _BuffID)
LUA_EVENT_PLAYERDESTORYBUFF = i; i = i + 1	--玩家销毁buff(INT _BuffID)
LUA_EVENT_HEROADDBUFF = i; i = i + 1			--英雄添加buff(INT _BuffID)
LUA_EVENT_HERODESTORYBUFF = i; i = i + 1		--英雄销毁buff(INT _BuffID)
LUA_EVENT_HERO_CHANGESTATE = i; i = i + 1	--英雄状态改变
LUA_EVENT_ONHEROADDITEM = i; i = i + 1		--添加物品(string _ItemName,UINT64 _ItemGUID,INT _ItemID)
LUA_EVENT_PLAYERATTREXTREF = i; i = i + 1	--(string _Info, INT _Type, INT _ChangeType)
LUA_EVENT_HEROATTREXTREF = i; i = i + 1		--(string _Info, INT _Type, INT _ChangeType)
LUA_EVENT_PLAYERERRORCODE = i; i = i + 1		--(int ErrorCode)
LUA_EVENT_HEROERRORCODE = i; i = i + 1		--(int ErrorCode)
LUA_EVENT_SHIELDREMOVE = i; i = i + 1		--(int ErrorCode)
LUA_EVENT_INATHLETICSREGION = i; i = i + 1	--(int ErrorCode)
LUA_EVENT_OUTATHLETICSREGION = i; i = i + 1	--(int ErrorCode)
LUA_EVENT_INITMAININTERFACE = i; i = i + 1	--()
LUA_EVENT_SWITICHSKILLACTIVE = i; i = i + 1	--(int skilltype, int active)
LUA_EVENT_STALLSELL = i; i = i + 1			--(string BuyerName, int ItemCount, string ItemName)
LUA_EVENT_ITEMCTRLIN = i; i = i + 1			--(INT _Handle, int ItemID, string ItemGUID)
LUA_EVENT_ITEMCTRLOUT = i; i = i + 1			--(INT _Handle, int ItemID, string ItemGUID)
LUA_EVENT_CUSTOMDATALOAD = i; i = i + 1		--()
LUA_EVENT_OPENHEROGUI = i; i = i + 1			--()
LUA_EVENT_OPENHEROPACKAGE = i; i = i + 1		--()
LUA_EVENT_OPENDESKWINODW = i; i = i + 1		--()
LUA_EVENT_CHATCHANNELCHANGE = i; i = i + 1	--聊天类型改变
LUA_EVENT_UPDATAMALLITEM = i; i = i + 1	
LUA_EVENT_PROPERTYDATA64 = i; i = i + 1         --角色64位属性改变
LUA_EVENT_CHOOSEPLAYER = i; i = i + 1			--选中玩家
LUA_EVENT_HIDECHOOSEPLAYER = i; i = i + 1		--取消玩家
LUA_EVENT_PACKAGECOUNT = i; i = i + 1			--背包內道具數量
LUA_EVENT_SKILLPROFICIENCY = i; i = i + 1		--技能熟练度更新
LUA_EVENT_RANKLIST = i; i = i + 1				--排行榜列表
LUA_EVENT_MALLLIST = i; i = i + 1				--商城列表
LUA_EVENT_P2PINVITE = i; i = i + 1				--交易邀请
LUA_EVENT_P2PLOCK = i; i = i + 1				--交易锁定
LUA_EVENT_STALLSETPRICE = i; i = i + 1			--摆摊准备上架通知
LUA_EVENT_VISITSTALLLIST = i; i = i + 1		--查看摆摊列表通知
LUA_EVENT_HIDEVISITSTALL = i; i = i + 1		--关闭别人摆摊界面
LUA_EVENT_VISITSTALLBUY = i; i = i + 1			--别人摆摊物品被买
LUA_EVENT_TRANSFERLEADERTEAM = i; i = i + 1	--移交队长
LUA_EVENT_DISMISSTEAM = i; i = i + 1 			--解散队伍
LUA_EVENT_OPENTEAM = i; i = i + 1 				--打开组队面板
LUA_EVENT_CLOSETEAM = i; i = i + 1 			--关闭组队面板
LUA_EVENT_ONCHANGEFRIEND = i; i = i + 1		--更新好友信息
LUA_EVENT_ONFINISHACHIVE = i; i = i + 1		--完成了某个成就,id,状态，1：未完成，2：已完成，3：奖励已领取
LUA_EVENT_ONACHIVELIST = i; i = i + 1			--成就列表
LUA_EVENT_JOINTEAM = i; i = i + 1				--有玩家申请入队
LUA_EVENT_CLOSESYSSETGUI = i; i = i + 1		--关闭设置面板()
LUA_EVENT_MAILLIST = i; i = i + 1				--邮件列表()
LUA_EVENT_MAILDETAIL = i; i = i + 1			--邮件内容()
LUA_EVENT_MAILATTACHMENTOK = i; i = i + 1		--邮件领取成功()
LUA_EVENT_NPCQUEST = i; i = i + 1         		--npc任务id
LUA_EVENT_FAMILYINVITE = i; i = i + 1			--邀请玩家加入行会
LUA_EVENT_FAMILYINVITENOTICE = i; i = i + 1	--受邀加入行会通知
LUA_EVENT_QUICKCHANGE = i; i = i + 1			--快捷键变更
LUA_EVENT_STARTSTALL = i; i = i + 1			--开始摆摊是否成功
LUA_EVENT_OTHERROLEDATA = i; i = i + 1			--其他玩家数据
LUA_EVENT_OPENTRADEGUI = i; i = i + 1			--打开交易面板()
LUA_EVENT_OPENSTALLGUI = i; i = i + 1			--打开摆摊面板()
LUA_EVENT_CLOSEGAMEMALLGUI = i; i = i + 1		--关闭商城面板()
LUA_EVENT_CLOSEWAREHOUSEGUI = i; i = i + 1		--关闭仓库面板()
LUA_EVENT_CLOSEADVWAREHOUSEGUI = i; i = i + 1 	--关闭高级仓库面板()
LUA_EVENT_CLOSETRADEGUI = i; i = i + 1			--关闭交易面板()
LUA_EVENT_CLOSESTALLGUI = i; i = i + 1			--关闭摆摊面板()
LUA_EVENT_CAMPAIGNLIST = i; i = i + 1			--活动列表
LUA_EVENT_FAMILYNOTICECONFIRM = i; i = i + 1 	--修改行会消息确认
LUA_EVENT_ONLEAVETEAMEX = i; i = i + 1			--离开队伍EX,补充原leave事件不足
LUA_EVENT_ONJOINTEAMEX = i; i = i + 1			--加入队伍EX,补充原join事件不足
LUA_EVENT_SKIllAPPLY = i; i = i + 1				--能已使用， 如打出烈火， para[0] = LINKAGEID
LUA_EVENT_CALLBACKCOUNTCHANGE = i; i = i + 1	--右键交易组队消息个数改变 key,count
LUA_EVENT_SETTINGPROPCHANGE = i; i = i + 1  	--某个设置属性的变化 如1018页游走跑模式的切换 para[0] = id, para[1] = value
LUA_EVENT_OBJDISPEAR = i; i = i + 1				--场景物品消失
LUA_EVENT_PROPERTYDATALIST = i; i = i + 1		--角色32位属性改变列表,页游使用,微端不发起此事件
LUA_EVENT_AUTOMOVEEND = i; i = i + 1			--自动寻路结束
LUA_EVENT_OTHERPLAYERINFO = i; i = i + 1		--其他玩家信息
LUA_EVENT_INNERFORCELEVELUP = i; i = i + 1
LUA_EVENT_RECORD = i; i = i + 1					--气泡录音
LUA_EVENT_NPCTALKCHANGE = i; i = i + 1			--npctalk发生改变（例如点击了某个链接）
LUA_EVENT_WECHAT_SHARE = i; i = i + 1           --微信分享(仅支持手游)
LUA_EVENT_ONTEAMINVITEOVER = i; i = i + 1       --组队邀请消息处理完，通知脚本隐藏组队按钮， 微端(暂未开放)
LUA_EVENT_AUTOFIGHTSTART = i; i = i + 1         --自动战斗开始
LUA_EVENT_AUTOFIGHTEND = i; i = i + 1           --自动战斗结束
LUA_EVENT_ONSERVANTAPPEAR = i; i = i + 1        --宠物出现(uint64 _RoleID)
LUA_EVENT_P2PCONFIRM = i; i = i + 1             --交易确认
LUA_EVENT_JUMPINFO = i; i = i + 1               --跨服消息(1)或(2, false)或(2, true)
LUA_EVENT_STALLSELLQUERY = i; i = i + 1         --摆摊，查询出售返回(unsigned long long player_guid, string stall_name)
LUA_EVENT_STALLBUYQUERY = i; i = i + 1          --摆摊，查询收购返回(unsigned long long player_guid)
LUA_EVENT_STALLSELLNTF = i; i = i + 1           --摆摊，有人卖给摊主物品(unsigned long long buyer_guid, unsigned long long seller_guid)
LUA_EVENT_STALLREADYNTF = i; i = i + 1          --摆摊，准备好开始摆摊(string player_guid)
LUA_EVENT_STALLUPLOAD = i; i = i + 1            --摆摊，上架物品(1)
LUA_EVENT_SPEAKER = i; i = i + 1                --喇叭(暂未开放)
LUA_EVENT_MOBAROOMLIST = i; i = i + 1           --房间列表(table roomlist)
LUA_EVENT_MOBAENTERROOM = i; i = i + 1          --进入房间(int room_id)或(0)
LUA_EVENT_MOBAEXITROOM = i; i = i + 1           --退出房间(int room_id)
LUA_EVENT_MOBACREATECHARA = i; i = i + 1        --创建角色(暂未开放)
LUA_EVENT_MOBAROOMMEMBERLIST = i; i = i + 1     --房间玩家列表(table memberlist, bool _redhost, bool _bluehost)
LUA_EVENT_MOBAKICKMEMBER = i; i = i + 1         --踢出房间玩家(unsigned long long guid)
LUA_EVENT_MOBAKICKED = i; i = i + 1             --被踢出
LUA_EVENT_MOBAREADY = i; i = i + 1              --准备就绪(unsigned char camp, unsigned char is_ready)或(3, 1)或(0)
LUA_EVENT_MOBASETVICEHOST = i; i = i + 1        --设置对方房主
LUA_EVENT_MOBACHANGECAMP = i; i = i + 1         --切换阵营(unsigned long long playerguid)
LUA_EVENT_MOBACHANGEROOMINFO = i; i = i + 1     --修改房间信息(string room_name)或(0)
LUA_EVENT_MOBACHANGESKIN = i; i = i + 1         --切换皮肤(unsigned long long user_guid, int skin, int job, int gender)
LUA_EVENT_MAILDELETE = i; i = i + 1             --通知脚本邮件是否删除成功(string mail_id, bool delete_success, int errorcode)
LUA_EVENT_OPENDOOR_EFFECT = i; i = i + 1        --通知播放游戏登录时开门的特效
LUA_EVENT_FINGERS_SEPARATE = i; i = i + 1       --手指分开(仅支持手游)
LUA_EVENT_FINGERS_GATHER = i; i = i + 1         --手指合拢(仅支持手游)
LUA_EVENT_UPDATE_MALL_CHARTS_DATA = i; i = i + 1    --通知脚本促销商品的信息，获取的列表信息存储在全局变量LuaParam中
LUA_EVENT_ONMONSTERAPPEAR = i; i = i + 1        --通知脚本怪物出现事件，获取的列表信息存储在全局变量LuaParam中
LUA_EVENT_COUNT = i; i = i + 1					--事件个数 
LUA_EVENT_ONPLAYERDISAPPEAR = 186;				--玩家消失(UINT64 _RoleID)
LUA_EVENT_ENTERGAME_ROLE = 188; --要进入游戏的当前角色信息
LUA_EVENT_CANGBAOGE_ERRMSG = 189; --藏宝阁错误信息
LUA_EVENT_CANGBAOGE_CLIENTMSG = 190; --藏宝阁客户端信息
EVENT_DEFAULT_TAG = "0"
