--Skill的宏定义
local i = 0
SKILL_PROP_ID                           =i;i=i+1--/// 编号
SKILL_PROP_NAME                         =i;i=i+1--/// 名称
SKILL_PROP_KEYNAME                      =i;i=i+1--/// 索引名
SKILL_PROP_TYPE                         =i;i=i+1--/// 类型
SKILL_PROP_JOB                          =i;i=i+1--/// 职业
SKILL_PROP_COMMONATTACK                 =i;i=i+1--/// 是否普通攻击
SKILL_PROP_NEEDINSTANCE                 =i;i=i+1--/// 是否需要实例
SKILL_PROP_DAMAGETYPE                   =i;i=i+1--/// 伤害类型
SKILL_PROP_PROCESS                      =i;i=i+1--/// 是否有技能类型计算
SKILL_PROP_FLY                          =i;i=i+1--/// 是否有延时
SKILL_PROP_FLYTYPE                      =i;i=i+1--/// 延时类型
SKILL_PROP_FLYSPEED                     =i;i=i+1--/// 飞行速度
SKILL_PROP_FIXEDFLYTIME                 =i;i=i+1--/// 延时固定时间
SKILL_PROP_FLYFINDTARGET                =i;i=i+1--/// 延时搜索目标类型
SKILL_PROP_BLOCK                        =i;i=i+1--/// 是否判断魔法阻挡
SKILL_PROP_SWITCH                       =i;i=i+1--/// 是否为开关技能
SKILL_PROP_NORMALATTACK                 =i;i=i+1--/// 是否玩家普攻
SKILL_PROP_NORMALATTACKTYPE             =i;i=i+1--/// 普攻类型
SKILL_PROP_FIRETIME                     =i;i=i+1--/// 预存烈焰时间
SKILL_PROP_CHANNEL                      =i;i=i+1--/// 是否为通道技能
SKILL_PROP_CHANNELITEM                  =i;i=i+1--/// 对应通道道具
SKILL_PROP_CHANNELFIRE                  =i;i=i+1--/// 是否为火墙类通道
SKILL_PROP_INTERVAL                     =i;i=i+1--/// 触发间隔
SKILL_PROP_TIMELIMIT                    =i;i=i+1--/// 存在时限
SKILL_PROP_TIMECOFF                     =i;i=i+1--/// 通道技能时间系数
SKILL_PROP_MAXTIME                      =i;i=i+1--/// 通道技能最大存在时限
SKILL_PROP_PROFICIENCY                  =i;i=i+1--/// 熟练度上限
SKILL_PROP_LINKAGE                      =i;i=i+1--/// 技能链
SKILL_PROP_LEVEL                        =i;i=i+1--/// 技能等级
SKILL_PROP_NEXTLEVEL                    =i;i=i+1--/// 下一等级ID
SKILL_PROP_ROLELEVEL                    =i;i=i+1--/// 角色等级限定
SKILL_PROP_NEEDWEAPON                   =i;i=i+1--/// 需要武器类型
SKILL_PROP_CDTYPE                       =i;i=i+1--/// CD类型
SKILL_PROP_CD                           =i;i=i+1--/// 冷却时间
SKILL_PROP_CHAIN                        =i;i=i+1--/// 冷却组
SKILL_PROP_USEATTACKSPEED               =i;i=i+1--/// 攻速流程
SKILL_PROP_NEEDTARGET                   =i;i=i+1--/// 是否需要目标才能释放
SKILL_PROP_NEEDTARGETCLIENT             =i;i=i+1--/// 客户端是否需要目标才能释放
SKILL_PROP_SHAPE                        =i;i=i+1--/// 能力搜寻范围形状
SKILL_PROP_SHAPEPARAM1                  =i;i=i+1--/// 范围形状参数1
SKILL_PROP_SHAPEPARAM2                  =i;i=i+1--/// 范围形状参数2
SKILL_PROP_EXTPARAM1                    =i;i=i+1--/// 形状附加参数1
SKILL_PROP_MAXTARGET                    =i;i=i+1--/// 最多目标数量
SKILL_PROP_MAXCASTDISTANCE              =i;i=i+1--/// 施法最大距离
SKILL_PROP_MINCASTDISTANCE              =i;i=i+1--/// 施法最小距离
SKILL_PROP_READY                        =i;i=i+1--/// 准备时间
SKILL_PROP_AUTO                         =i;i=i+1--/// 自动重复能力
SKILL_PROP_COSTATT1                     =i;i=i+1--/// 消耗1
SKILL_PROP_COSTATTVALUE1                =i;i=i+1--/// 消耗值1
SKILL_PROP_COSTATT2                     =i;i=i+1--/// 消耗2
SKILL_PROP_COSTATTVALUE2                =i;i=i+1--/// 消耗值2
SKILL_PROP_COSTATT3                     =i;i=i+1--/// 消耗3
SKILL_PROP_COSTATTVALUE3                =i;i=i+1--/// 消耗值3
SKILL_PROP_ITEMSLOT                     =i;i=i+1--/// 装备位物品开销
SKILL_PROP_JUJUTYPE                     =i;i=i+1--/// 符咒类别
SKILL_PROP_ITEMID                       =i;i=i+1--/// 道具开销ID
SKILL_PROP_ITEMAMOUNT                   =i;i=i+1--/// 堆叠拼开销
SKILL_PROP_ITEMUSECOUNT                 =i;i=i+1--/// 有限品开销
SKILL_PROP_CATCH                        =i;i=i+1--/// 是否捕捉
SKILL_PROP_CATCHNUM                     =i;i=i+1--/// 最大可捕捉数量
SKILL_PROP_SUMMONNEW                    =i;i=i+1--/// 是否召唤
SKILL_PROP_SUMMONID                     =i;i=i+1--/// 召唤怪ID
SKILL_PROP_PCTKILL                      =i;i=i+1--/// 是否秒杀
SKILL_PROP_HPPCTKILL                    =i;i=i+1--/// Hp秒杀百分比
SKILL_PROP_HPPCTKILLRATE                =i;i=i+1--/// Hp秒杀几率
SKILL_PROP_PASSIVEATT1                  =i;i=i+1--/// 被动属性1
SKILL_PROP_PASSIVEATTVALUE1             =i;i=i+1--/// 值1
SKILL_PROP_PASSIVEATT2                  =i;i=i+1--/// 被动属性2
SKILL_PROP_PASSIVEATTVALUE2             =i;i=i+1--/// 值2
SKILL_PROP_PASSIVEATT3                  =i;i=i+1--/// 被动属性3
SKILL_PROP_PASSIVEATTVALUE3             =i;i=i+1--/// 值3
SKILL_PROP_DAMAGEPRIORITY               =i;i=i+1--/// 伤害目标优先级
SKILL_PROP_RESTOREPRIORITY              =i;i=i+1--/// 治疗目标优先级
SKILL_PROP_COLLIDE                      =i;i=i+1--/// 击退方式
SKILL_PROP_BEATGRID                     =i;i=i+1--/// 击退格数
SKILL_PROP_HATRED                       =i;i=i+1--/// 仇恨
SKILL_PROP_FIXEDHATRED                  =i;i=i+1--/// 固定仇恨值
SKILL_PROP_ICON                         =i;i=i+1--/// 技能图标
SKILL_PROP_SITE                         =i;i=i+1--/// 技能图标位置
SKILL_PROP_TIPS                         =i;i=i+1--/// 技能描述
SKILL_PROP_SKILLID                      =i;i=i+1--/// 技能特效
SKILL_PROP_BEGEFFECTID                  =i;i=i+1--/// 起始动画编号
SKILL_PROP_PROEFFECTID                  =i;i=i+1--/// 过程动画编号
SKILL_PROP_BRUISEEFFECTID               =i;i=i+1--/// 受击动画编号
SKILL_PROP_ENDEFFECTID                  =i;i=i+1--/// 收手动画编号
SKILL_PROP_BEGSOUNDID                   =i;i=i+1--/// 起始音效编号
SKILL_PROP_PROSOUNDID                   =i;i=i+1--/// 过程音效编号
SKILL_PROP_ENDSOUNDID                   =i;i=i+1--/// 结束音效编号
SKILL_PROP_RATE                         =i;i=i+1--/// 成功率
SKILL_PROP_GROUPRATE                    =i;i=i+1--/// 组技能概率
SKILL_PROP_BUFFRATE                     =i;i=i+1--/// 目标buff成功率
SKILL_PROP_SELFBUFFRATE                 =i;i=i+1--/// 自身buff成功率
SKILL_PROP_BUFFID                       =i;i=i+1--/// 目标附加BUFF1
SKILL_PROP_SELFBUFFID                   =i;i=i+1--/// 自己附加BUFF1
SKILL_PROP_COLLIDEBUFFID                =i;i=i+1--/// 冲撞成功后给自己附加BUFF
SKILL_PROP_COLLIDETARGETBUFFID          =i;i=i+1--/// 冲撞成功后给目标附加BUFF
SKILL_PROP_RESTORETYPE                  =i;i=i+1--/// 恢复类型
SKILL_PROP_HPRESTORE                    =i;i=i+1--/// 瞬回HP当前数值
SKILL_PROP_HPRESTOREPCT                 =i;i=i+1--/// 瞬回HP上限百分比
SKILL_PROP_MPRESTORE                    =i;i=i+1--/// 瞬回MP当前数值
SKILL_PROP_MPRESTOREPCT                 =i;i=i+1--/// 瞬回MP上限百分比
SKILL_PROP_A                            =i;i=i+1--/// 随机值小
SKILL_PROP_B                            =i;i=i+1--/// 随机值大
SKILL_PROP_C                            =i;i=i+1--/// 基础随机值小
SKILL_PROP_D                            =i;i=i+1--/// 基础随机值大
SKILL_PROP_E                            =i;i=i+1--/// 攻击力百分比系数
SKILL_PROP_DAMAGECOFF                   =i;i=i+1--/// 技能等级系数
SKILL_PROP_IGNOREDEFPCT                 =i;i=i+1--/// 忽视防御百分比
SKILL_PROP_DAMAGEVALUE                  =i;i=i+1--/// 伤害附加
SKILL_PROP_RESTORECOFF                  =i;i=i+1--/// 治疗系数
SKILL_PROP_RESTOREVALUE                 =i;i=i+1--/// 治疗附加
SKILL_PROP_TARGET_PLACE                 =i;i=i+1--/// 是否锁定目标
SKILL_PROP_BEFORECAGING                 =i;i=i+1--/// 是否锁定之前的目标
SKILL_PROP_RELIVE                       =i;i=i+1--/// 是否复活目标
SKILL_PROP_TELEPORTTYPE                 =i;i=i+1--/// 瞬移方式
SKILL_PROP_TELEPORTRADIUSX              =i;i=i+1--/// 随机移动半径X
SKILL_PROP_TELEPORTRADIUSY              =i;i=i+1--/// 随机移动半径Y
SKILL_PROP_TRIGGERSTEALTH               =i;i=i+1--/// 是否触发隐身
SKILL_PROP_IGNOREPLAYER                 =i;i=i+1--/// 是否忽略玩家
SKILL_PROP_TRIGGERGROUP                 =i;i=i+1--/// 触发组
SKILL_PROP_GROUP                        =i;i=i+1--/// 组id
SKILL_PROP_GROUPPRIORITY                =i;i=i+1--/// 组优先级
SKILL_PROP_INNER                        =i;i=i+1--/// 是否系统触发使用
SKILL_PROP_INITIATIVE                   =i;i=i+1--/// 是否客户端主动释放
SKILL_PROP_DIGMEAT                      =i;i=i+1--/// 是否挖肉技能
SKILL_PROP_SELFRELEASE                  =i;i=i+1--/// 是否可对自己释放
SKILL_PROP_IGNOREHIT                    =i;i=i+1--/// 是否无视对方闪避
SKILL_PROP_STIFFCD                      =i;i=i+1--/// 硬值时间
SKILL_PROP_CLIENTSTIFFCD                =i;i=i+1--/// 客户端硬值
SKILL_PROP_IGNORESERVANT                =i;i=i+1--/// 是否对随从无效
SKILL_PROP_MOUSETURN                    =i;i=i+1--/// 客户端是否根据鼠标位置转向
SKILL_PROP_FOOTPLACE                    =i;i=i+1--/// 客户端是否在原地释放技能
SKILL_PROP_DIRECTION                    =i;i=i+1--/// 客户端是否根据鼠标指向释放技能
SKILL_PROP_SEVERDELAY                   =i;i=i+1--/// 是否收到服务器回应后才播特效
SKILL_PROP_CLIENTACTION                 =i;i=i+1--/// 是否收到回应后播起手动作
SKILL_PROP_SKILLONGRID                  =i;i=i+1--/// 是否根据鼠标落点打逻辑格
SKILL_PROP_PLAYERTARGET                 =i;i=i+1--/// 是否可对玩家走spell_target流程
SKILL_PROP_MINING                       =i;i=i+1--/// 是否为挖矿技能
SKILL_PROP_FLYTRACK                     =i;i=i+1--/// 是否忽略误差范围
SKILL_PROP_MONSTERDAMAGEID              =i;i=i+1--/// 怪物技能加成匹配ID
SKILL_PROP_FLYERRORRANGE                =i;i=i+1--/// 技能最大误差


SKILL_PROP_TYPE_MIN                     = SKILL_PROP_ID                            --/// Skill最小值
SKILL_PROP_TYPE_MAX                     = SKILL_PROP_FLYERRORRANGE                 --/// Skill最大值


