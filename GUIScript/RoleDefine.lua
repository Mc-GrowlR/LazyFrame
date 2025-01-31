--Role的宏定义
local i = 0
ROLE_PROP_ROLEID                          =i;i=i+1--//角色ID
ROLE_PROP_ROLENAME                        =i;i=i+1--//角色名
ROLE_PROP_SEX                             =i;i=i+1--//性别
ROLE_PROP_JOB                             =i;i=i+1--//职业
ROLE_PROP_STATUS                          =i;i=i+1--//状态:0＝活着的，1＝死亡,尸体完整的， 2＝残骸,被挖过的
ROLE_PROP_POSX                            =i;i=i+1--//位置X坐标
ROLE_PROP_POSY                            =i;i=i+1--//位置Y坐标
ROLE_PROP_DIR                             =i;i=i+1--//方向
ROLE_PROP_RESTHP                          =i;i=i+1--//HP百分比
ROLE_PROP_HELMETID                        =i;i=i+1--//头盔ID
ROLE_PROP_CLOTHESID                       =i;i=i+1--//衣服ID
ROLE_PROP_WEAPONID                        =i;i=i+1--//武器ID
ROLE_PROP_WEAPONITEMID                    =i;i=i+1--//武器ID
ROLE_PROP_WINGSID                         =i;i=i+1--//翅膀ID
ROLE_PROP_MOUNTID                         =i;i=i+1--//坐骑ID
ROLE_PROP_HAIRCOLOR                       =i;i=i+1--//发型颜色
ROLE_PROP_HAIRSTYLE                       =i;i=i+1--//发型
ROLE_PROP_HEADER                          =i;i=i+1--//头像
ROLE_PROP_LEVEL                           =i;i=i+1--//等级
ROLE_PROP_FAMILY_NAME                     =i;i=i+1--//行会名称
ROLE_PROP_FAMILY_TITLE                    =i;i=i+1--//行会称号
ROLE_PROP_ALIAS                           =i;i=i+1--//别名

local i = 0
ROLE_PROP64_EXP                           =i;i=i+1--///经验
ROLE_PROP64_INGOT                         =i;i=i+1--///元宝
ROLE_PROP64_BIND_INGOT                    =i;i=i+1--///绑定元宝
ROLE_PROP64_INTEGRAL                      =i;i=i+1--///积分
ROLE_PROP64_GOLD                          =i;i=i+1--///金币
ROLE_PROP64_BIND_GOLD                     =i;i=i+1--///绑定金币
ROLE_PROP64_GOLD_DEPOSIT                  =i;i=i+1--///仓库金币
ROLE_PROP64_INNER_FORCE_EXP				  =i;i=i+1--///内功经验

local i = 0
ROLE_PROP32_LEVEL                         =i;i=i+1
ROLE_PROP32_JOB                           =i;i=i+1
ROLE_PROP32_HP                            =i;i=i+1--///hp
ROLE_PROP32_MAX_HP                        =i;i=i+1
ROLE_PROP32_MP                            =i;i=i+1--///mp
ROLE_PROP32_MAX_MP                        =i;i=i+1
ROLE_PROP32_MAX_PHY_DEF                   =i;i=i+1--///physical defense
ROLE_PROP32_MIN_PHY_DEF                   =i;i=i+1
ROLE_PROP32_MAX_MAG_DEF                   =i;i=i+1--///magical defense
ROLE_PROP32_MIN_MAG_DEF                   =i;i=i+1
ROLE_PROP32_MAX_PHY_ATK                   =i;i=i+1--///physical attack
ROLE_PROP32_MIN_PHY_ATK                   =i;i=i+1
ROLE_PROP32_MAX_MAG_ATK                   =i;i=i+1--///magical attack
ROLE_PROP32_MIN_MAG_ATK                   =i;i=i+1
ROLE_PROP32_MAX_TAO_ATK                   =i;i=i+1--///taoism attack
ROLE_PROP32_MIN_TAO_ATK                   =i;i=i+1

ROLE_PROP32_HIT                           =i;i=i+1--///命中
ROLE_PROP32_MISS                          =i;i=i+1--///闪避
ROLE_PROP32_MOVE_SPEED                    =i;i=i+1--///移动速度，基准值
ROLE_PROP32_ATTACK_SPEED                  =i;i=i+1--///攻击速度，基准值

ROLE_PROP32_WEIGHT                        =i;i=i+1--///背包负重
ROLE_PROP32_MAX_WEIGHT                    =i;i=i+1
ROLE_PROP32_EQUIP_WEIGHT                  =i;i=i+1--///装备负重
ROLE_PROP32_MAX_EQUIP_WEIGHT              =i;i=i+1
ROLE_PROP32_BRAWN                         =i;i=i+1--///腕力
ROLE_PROP32_MAX_BRAWN                     =i;i=i+1

ROLE_PROP32_POINT                         =i;i=i+1--///剩余属性点
ROLE_PROP32_POINT_HP                      =i;i=i+1--///hp point
ROLE_PROP32_POINT_MP                      =i;i=i+1--///mp point
ROLE_PROP32_POINT_PHY_ATK                 =i;i=i+1--///physical attack point
ROLE_PROP32_POINT_MAG_ATK                 =i;i=i+1--///magical attack point
ROLE_PROP32_POINT_TAO_ATK                 =i;i=i+1--///taoism attack point
ROLE_PROP32_POINT_PHY_DEF                 =i;i=i+1--///physical defense point
ROLE_PROP32_POINT_MAG_DEF                 =i;i=i+1--///magical defense point

ROLE_PROP32_ELE_1_ATK                     =i;i=i+1--///属性攻击1
ROLE_PROP32_ELE_2_ATK                     =i;i=i+1--///属性攻击2
ROLE_PROP32_ELE_3_ATK                     =i;i=i+1--///属性攻击3
ROLE_PROP32_ELE_4_ATK                     =i;i=i+1--///属性攻击4
ROLE_PROP32_ELE_5_ATK                     =i;i=i+1--///属性攻击5

ROLE_PROP32_ELE_1_DEF                     =i;i=i+1--///属性防御1
ROLE_PROP32_ELE_2_DEF                     =i;i=i+1--///属性防御2
ROLE_PROP32_ELE_3_DEF                     =i;i=i+1--///属性防御3
ROLE_PROP32_ELE_4_DEF                     =i;i=i+1--///属性防御4
ROLE_PROP32_ELE_5_DEF                     =i;i=i+1--///属性防御5

ROLE_PROP32_HP_REC                        =i;i=i+1--///hp回复速度
ROLE_PROP32_MP_REC                        =i;i=i+1--///mp回复速度
ROLE_PROP32_POISON_REC                    =i;i=i+1--///中毒恢复速度

ROLE_PROP32_ENERGY                        =i;i=i+1--///活力
ROLE_PROP32_MAX_ENERGY                    =i;i=i+1--///活力上限

ROLE_PROP32_BURST                         =i;i=i+1--///暴击率
ROLE_PROP32_LUCK_CURSE                    =i;i=i+1--///幸运/诅咒
ROLE_PROP32_PK                            =i;i=i+1--///PK值
ROLE_PROP32_PRESTIGE                      =i;i=i+1--///声望
ROLE_PROP32_MERITORIOUS                   =i;i=i+1--///功勋
ROLE_PROP32_ACHIEVEMENT                   =i;i=i+1--///成就

--//////////////////////////////////////////////////////////////////////////
--///    转生
ROLE_PROP32_REINCARNATION                 =i;i=i+1
ROLE_PROP32_REIN_HP                       =i;i=i+1
ROLE_PROP32_REIN_MP                       =i;i=i+1
ROLE_PROP32_REIN_MAX_PHY_DEF              =i;i=i+1--///physical defense
ROLE_PROP32_REIN_MIN_PHY_DEF              =i;i=i+1
ROLE_PROP32_REIN_MAX_MAG_DEF              =i;i=i+1--///magical defense
ROLE_PROP32_REIN_MIN_MAG_DEF              =i;i=i+1
ROLE_PROP32_REIN_MAX_PHY_ATK              =i;i=i+1--///physical attack
ROLE_PROP32_REIN_MIN_PHY_ATK              =i;i=i+1
ROLE_PROP32_REIN_MAX_MAG_ATK              =i;i=i+1--///magical attack
ROLE_PROP32_REIN_MIN_MAG_ATK              =i;i=i+1
ROLE_PROP32_REIN_MAX_TAO_ATK              =i;i=i+1--///taoism attack
ROLE_PROP32_REIN_MIN_TAO_ATK              =i;i=i+1
ROLE_PROP32_REIN_HIT                      =i;i=i+1--///命中
ROLE_PROP32_REIN_MISS                     =i;i=i+1--///闪避
ROLE_PROP32_REIN_BURST                    =i;i=i+1--///暴击率
ROLE_PROP32_REIN_WEIGHT                   =i;i=i+1--///背包负重
ROLE_PROP32_REIN_EQUIP_WEIGHT             =i;i=i+1--///装备负重
ROLE_PROP32_REIN_BRAWN                    =i;i=i+1--///腕力
--//////////////////////////////////////////////////////////////////////////

ROLE_PROP32_BAG_SIZE_0                    =i;i=i+1--///包裹0大小
ROLE_PROP32_BAG_SIZE_1                    =i;i=i+1--///包裹1大小
ROLE_PROP32_BAG_SIZE_2                    =i;i=i+1--///包裹2大小
ROLE_PROP32_BAG_SIZE_3                    =i;i=i+1--///包裹3大小
ROLE_PROP32_BAG_SIZE_4                    =i;i=i+1--///包裹4大小

ROLE_PROP32_WAREHOUSE_SIZE                =i;i=i+1--///玩家的仓库大小
ROLE_PROP32_WAREHOUSE_ADV_SIZE            =i;i=i+1--///玩家高级仓库大小
--//////////////////////////////////////////////////////////////////////////

--///    role 运行时百分比加成
ROLE_PROP32_MAX_HP_PCT                    =i;i=i+1--///hp
ROLE_PROP32_MAX_MP_PCT                    =i;i=i+1--///mp
ROLE_PROP32_MAX_PHY_DEF_PCT               =i;i=i+1--///physical defense
ROLE_PROP32_MIN_PHY_DEF_PCT               =i;i=i+1
ROLE_PROP32_MAX_MAG_DEF_PCT               =i;i=i+1--///magical defense
ROLE_PROP32_MIN_MAG_DEF_PCT               =i;i=i+1
ROLE_PROP32_MAX_PHY_ATK_PCT               =i;i=i+1--///physical attack
ROLE_PROP32_MIN_PHY_ATK_PCT               =i;i=i+1
ROLE_PROP32_MAX_MAG_ATK_PCT               =i;i=i+1--///magical attack
ROLE_PROP32_MIN_MAG_ATK_PCT               =i;i=i+1
ROLE_PROP32_MAX_TAO_ATK_PCT               =i;i=i+1--///taoism attack
ROLE_PROP32_MIN_TAO_ATK_PCT               =i;i=i+1

ROLE_PROP32_ELE_1_ATK_PCT                 =i;i=i+1--///属性攻击1
ROLE_PROP32_ELE_2_ATK_PCT                 =i;i=i+1--///属性攻击2
ROLE_PROP32_ELE_3_ATK_PCT                 =i;i=i+1--///属性攻击3
ROLE_PROP32_ELE_4_ATK_PCT                 =i;i=i+1--///属性攻击4
ROLE_PROP32_ELE_5_ATK_PCT                 =i;i=i+1--///属性攻击5

ROLE_PROP32_ELE_1_DEF_PCT                 =i;i=i+1--///属性防御1
ROLE_PROP32_ELE_2_DEF_PCT                 =i;i=i+1--///属性防御2
ROLE_PROP32_ELE_3_DEF_PCT                 =i;i=i+1--///属性防御3
ROLE_PROP32_ELE_4_DEF_PCT                 =i;i=i+1--///属性防御4
ROLE_PROP32_ELE_5_DEF_PCT                 =i;i=i+1--///属性防御5

ROLE_PROP32_MAX_WEIGHT_PCT                =i;i=i+1--///背包负重
ROLE_PROP32_MAX_EQUIP_WEIGHT_PCT          =i;i=i+1--///装备负重
ROLE_PROP32_MAX_BRAWN_PCT                 =i;i=i+1--///腕力

ROLE_PROP32_HP_REC_PCT                    =i;i=i+1--///hp回复速度
ROLE_PROP32_MP_REC_PCT                    =i;i=i+1--///mp回复速度
ROLE_PROP32_POISON_REC_PCT                =i;i=i+1--///中毒恢复速度

--//////////////////////////////////////////////////////////////////////////
--///    速度相关，另外一套运算
ROLE_PROP32_MOVE_SPEED_PCT                =i;i=i+1--///移动速度
ROLE_PROP32_ATTACK_SPEED_PCT              =i;i=i+1--///攻击速度
--//////////////////////////////////////////////////////////////////////////

--//////////////////////////////////////////////////////////////////////////
--///    战斗属性
--//////////////////////////////////////////////////////////////////////////
ROLE_PROP32_SUCK_HP                       =i;i=i+1--///吸当前hp - 数值
ROLE_PROP32_SUCK_HP_PCT                   =i;i=i+1--///吸当前hp - 百分比
ROLE_PROP32_SUCK_MAX_HP_PCT               =i;i=i+1--///吸hp上限 - 百分比

ROLE_PROP32_SUCK_MP                       =i;i=i+1--///吸当前mp - 数值
ROLE_PROP32_SUCK_MP_PCT                   =i;i=i+1--///吸当前mp - 百分比
ROLE_PROP32_SUCK_MAX_MP_PCT               =i;i=i+1--///吸mp上限 - 百分比

ROLE_PROP32_REF_PHY                       =i;i=i+1--///物理伤害反射 - 数值
ROLE_PROP32_REF_PHY_PCT                   =i;i=i+1--///物理伤害反射 - 百分比

ROLE_PROP32_REF_MAG                       =i;i=i+1--///魔法伤害反射 - 数值
ROLE_PROP32_REF_MAG_PCT                   =i;i=i+1--///魔法伤害反射 - 百分比

ROLE_PROP32_IMM_MAG                       =i;i=i+1--///魔法伤害减免 - 数值
ROLE_PROP32_IMM_MAG_PCT                   =i;i=i+1--///魔法伤害减免 - 百分比

ROLE_PROP32_IMM_PHY                       =i;i=i+1--///物理伤害减免 - 数值
ROLE_PROP32_IMM_PHY_PCT                   =i;i=i+1--///物理伤害减免 - 百分比
--//////////////////////////////////////////////////////////////////////////

ROLE_PROP32_ATK_MODE                      =i;i=i+1--///攻击类型

--//////////////////////////////////////////////////////////////////////////
--///    状态开关
--//////////////////////////////////////////////////////////////////////////
ROLE_PROP32_CAN_WALK                      =i;i=i+1--///能走路
ROLE_PROP32_CAN_RUN                       =i;i=i+1--///能跑步
ROLE_PROP32_CAN_TURN                      =i;i=i+1--///能转向
ROLE_PROP32_CAN_JUMP_MAP                  =i;i=i+1--///能跳地图
ROLE_PROP32_CAN_PHY_ATK                   =i;i=i+1--///能物理攻击
ROLE_PROP32_CAN_MAG_ATK                   =i;i=i+1--///能魔法攻击
ROLE_PROP32_CAN_USE_ITEM                  =i;i=i+1--///能使用道具(包括换装)

ROLE_PROP32_IS_PHY_IMM                    =i;i=i+1--///物理免疫
ROLE_PROP32_IS_MAG_IMM                    =i;i=i+1--///魔法免疫
ROLE_PROP32_IS_STEALTH                    =i;i=i+1--///隐形

ROLE_PROP32_HAS_MANA_SHIELD               =i;i=i+1--///有mana shield
ROLE_PROP32_HAS_COLLIDE                   =i;i=i+1--///处于冲撞状态
ROLE_PROP32_HAS_REPELLED                  =i;i=i+1--///处于击退状态
ROLE_PROP32_CAN_PUSH                      =i;i=i+1--///能被推
ROLE_PROP32_CAN_USE_SKILL                 =i;i=i+1--///能使用技能

ROLE_PROP32_IS_BLACK                      =i;i=i+1--///是否为黑名

ROLE_PROP32_HAS_IMM_SHIELD                =i;i=i+1--///有imm shield
ROLE_PROP32_IMM_SHIELD                    =i;i=i+1--///imm shield 值

ROLE_PROP32_HAS_BAG_GUARD                 =i;i=i+1--///有包裹防掉落
ROLE_PROP32_HAS_EQUIP_GUARD               =i;i=i+1--///有装备防掉落
ROLE_PROP32_IS_GRAY                       =i;i=i+1--///灰名
ROLE_PROP32_IS_CHAOS                      =i;i=i+1--///混沌
ROLE_PROP32_IS_POISONING                  =i;i=i+1--///是否中毒(绿毒, 红毒走减防BUFF, 没有属性)
ROLE_PROP32_IS_GHOST                      =i;i=i+1--///是否ghost
ROLE_PROP32_IS_PK                         =i;i=i+1--///是否pk状态
ROLE_PROP32_CAN_THROUGH                   =i;i=i+1--///是否可以穿人穿怪
ROLE_PROP32_CAN_ZHENSHI                   =i;i=i+1--///是否珍视
ROLE_PROP32_CAN_OPT_BAG                   =i;i=i+1--///是否可以操作包裹
ROLE_PROP32_CAN_CHANGE_ATK_MODE           =i;i=i+1--///是否可以改变攻击类型

--//////////////////////////////////////////////////////////////////////////
--/// 内功
--//////////////////////////////////////////////////////////////////////////
ROLE_PROP32_INNER_FORCE          		  =i;i=i+1--/// 角色内功值
ROLE_PROP32_INNER_FORCE_LV       		  =i;i=i+1--/// 角色内功等级
ROLE_PROP32_INNER_FORCE_REC      		  =i;i=i+1--/// 内功恢复速度
ROLE_PROP32_INNER_FORCE_REC_PCT  		  =i;i=i+1--/// 内功恢复速度百分比
ROLE_PROP32_MAX_INNER_FORCE      		  =i;i=i+1--/// 角色最大内功值
ROLE_PROP32_INNER_FORCE_EXP_PCT           =i;i=i+1--/// 内功经验倍数
ROLE_PROP32_INNER_FORCE_DERATE_PCT        =i;i=i+1--/// 内功伤害减免百分比

--//////////////////////////////////////////////////////////////////////////
ROLE_PROP32_BIG_BAG_SIZE                  =i;i=i+1--///大包裹大小
ROLE_PROP32_IS_PRETENDING_DEAD            =i;i=i+1--///是否假死状态
ROLE_PROP32_IS_IGNORE_INV_DETECT          =i;i=i+1--///是否无视侦测隐形
ROLE_PROP32_Can_Be_THROUGH                =i;i=i+1--///是否可被穿透
ROLE_PROP32_BURST_COFF                    =i;i=i+1--///暴击加成
ROLE_PROP32_ONLY_SHOW_MP                  =i;i=i+1--///是否只显示魔法蓝条

--//////////////////////////////////////////////////////////////////////////
local i = 180
ROLE_PROP32_HAS_TEAM                      =i;i=i+1--///有队伍
ROLE_PROP32_GENDER                        =i;i=i+1--///性别
ROLE_PROP32_HEAD                          =i;i=i+1--///头像
ROLE_PROP32_HAIR                          =i;i=i+1--///头发
ROLE_PROP32_HAIR_COLOR                    =i;i=i+1--///头发颜色
ROLE_PROP32_GM_LEVEL                      =i;i=i+1--///gm等级
ROLE_PROP32_IDENTIFY                      =i;i=i+1--///鉴定积分
ROLE_PROP32_TITLE                         =i;i=i+1--///称号
ROLE_PROP32_GOLD_SETTLEMENT               =i;i=i+1--///金币结算: 1金币结算 0:绑币结算
ROLE_PROP32_STALL                         =i;i=i+1--///0: 未摆摊 1: 摆摊准备 2: 摆摊中
ROLE_PROP32_FRIEND_SWITCH                 =i;i=i+1--///0: 不可加好友       1: 可加好友
ROLE_PROP32_TEAM_SWITCH                   =i;i=i+1--///0: 不接收队伍邀请   1: 接收队伍邀请
ROLE_PROP32_HAS_FAMILY                    =i;i=i+1--/// 有行会
ROLE_PROP32_EXP_PCT                       =i;i=i+1--/// 经验倍数
ROLE_PROP32_MAG_MISS                      =i;i=i+1--/// 魔法闪避
ROLE_PROP32_INTENSITY                     =i;i=i+1--/// 强度
ROLE_PROP32_ATTACK_PCT                    =i;i=i+1--/// 攻击力倍数
ROLE_PROP32_DEFENSE_PCT                   =i;i=i+1--/// 防御力倍数
ROLE_PROP32_GP_RUNTIME                    =i;i=i+1--///
ROLE_PROP32_GP                            =i;i=i+1--///
ROLE_PROP32_RIDE_SWITCH                   =i;i=i+1--///骑乘开关
ROLE_PROP32_VIP_LEVEL                     =i;i=i+1--///VIP等级
ROLE_PROP32_VIP_BUYTIMES                  =i;i=i+1--///VIP购买时间
ROLE_PROP32_LOCK_SWITCH                   =i;i=i+1--///锁开关
ROLE_PROP32_EFFECT1                       =i;i=i+1--///特效1
ROLE_PROP32_EFFECT2                       =i;i=i+1--///特效2
ROLE_PROP32_EFFECT3                       =i;i=i+1--///特效3
ROLE_PROP32_EFFECT4                       =i;i=i+1--///特效4
ROLE_PROP32_EFFECT5                       =i;i=i+1--///特效5
ROLE_PROP32_CAMP                          =i;i=i+1--///阵营
ROLE_PROP32_AVATAR                        =i;i=i+1--///外形
ROLE_PROP32_RAGE                          =i;i=i+1--///怒气值
ROLE_PROP32_MAX_RAGE                      =i;i=i+1--///最大怒气值
ROLE_PROP32_HUNT_DROP_PCT                 =i;i=i+1--///怪物掉落倍数
ROLE_PROP32_IGNORE_DEF                    =i;i=i+1--///忽视目标防御常数
ROLE_PROP32_IGNORE_DEF_PCT                =i;i=i+1--///忽视目标防御百分比
ROLE_PROP32_IGNORE_IMM                    =i;i=i+1--///忽视目标减免盾常数
ROLE_PROP32_IGNORE_IMM_PCT                =i;i=i+1--///忽视目标减免盾百分比
ROLE_PROP32_IGNORE_DEF_VALID              =i;i=i+1--///忽视目标防御生效概率百分比
ROLE_PROP32_IGONRE_IMM_VALID              =i;i=i+1--///忽视目标减免盾生效概率百分比
ROLE_PROP32_FASHION_SWITCH                =i;i=i+1--///时装开关
ROLE_PROP32_FASHION_WEAPON_SWITCH         =i;i=i+1--///时装武器开关
--//////////////////////////////////////////////////////////////////////////


--组队Tip头像上的信息查询索引定义------------------------------------------
local i = 0
TEAMINFO_NAME                           =i;i=i+1
TEAMINFO_HEAD                           =i;i=i+1
TEAMINFO_ONLINE                         =i;i=i+1
TEAMINFO_LEVEL                          =i;i=i+1
TEAMINFO_JOB                            =i;i=i+1
TEAMINFO_GENDER                         =i;i=i+1
TEAMINFO_MAPCODE                        =i;i=i+1
TEAMINFO_MAPNAME                        =i;i=i+1

