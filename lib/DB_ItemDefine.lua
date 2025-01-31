--Item的宏定义
local i = 0
ITEM_PROP_ID                            =i;i=i+1--/// 物品编号
ITEM_PROP_NAME                          =i;i=i+1--/// 名称
ITEM_PROP_KEYNAME                       =i;i=i+1--/// 索引名称
ITEM_PROP_TYPE                          =i;i=i+1--/// 主类型
ITEM_PROP_SUBTYPE                       =i;i=i+1--/// 子类型
ITEM_PROP_WEAPONTYPE                    =i;i=i+1--/// 武器类型
ITEM_PROP_JUJUTYPE                      =i;i=i+1--/// 符咒类别
ITEM_PROP_LOGICTYPE                     =i;i=i+1--/// 逻辑排列类别
ITEM_PROP_LOGICSUBTYPE                  =i;i=i+1--/// 逻辑排列子类别
ITEM_PROP_LS2                           =i;i=i+1--/// 包裹排列
ITEM_PROP_SHOPTYPE                      =i;i=i+1--/// 出售修理类型
ITEM_PROP_SAVELOG                       =i;i=i+1--/// 是否写记录
ITEM_PROP_COLOR                         =i;i=i+1--/// 道具颜色
ITEM_PROP_QUALITY                       =i;i=i+1--/// 品质
ITEM_PROP_BIGICON                       =i;i=i+1--/// 角色模型图片
ITEM_PROP_TIPSICON                      =i;i=i+1--/// 大图标
ITEM_PROP_ICON                          =i;i=i+1--/// 图标编号
ITEM_PROP_DROPICON                      =i;i=i+1--/// 掉落图标编号
ITEM_PROP_AVATARMAN                     =i;i=i+1--/// 外形男
ITEM_PROP_AVATARWOMEN                   =i;i=i+1--/// 外形女
ITEM_PROP_WINGAVATARMAN                 =i;i=i+1--/// 翅膀模型男
ITEM_PROP_WINGAVATARWOMEN               =i;i=i+1--/// 翅膀模型女
ITEM_PROP_SHADOWAVATARMAN               =i;i=i+1--/// 影子男模型
ITEM_PROP_SHADOWAVATARWOMEN             =i;i=i+1--/// 影子女模型
ITEM_PROP_BRIEF                         =i;i=i+1--/// 物品介绍
ITEM_PROP_DESC                          =i;i=i+1--/// 物品说明
ITEM_PROP_NAQISOUND                     =i;i=i+1--/// 拿起/拾取音效
ITEM_PROP_FANGXIASOUND                  =i;i=i+1--/// 放下音效
ITEM_PROP_SHIYONGSOUND                  =i;i=i+1--/// 使用音效
ITEM_PROP_DIAOLUOSOUND                  =i;i=i+1--/// 掉落音效
ITEM_PROP_CUTSOUND                      =i;i=i+1--/// 挥砍音效
ITEM_PROP_HITSOUND                      =i;i=i+1--/// 命中音效
ITEM_PROP_SELFWEIGHT                    =i;i=i+1--/// 重量
ITEM_PROP_DURABILITY                    =i;i=i+1--/// 配置耐久度
ITEM_PROP_DURZEROAUTODEL                =i;i=i+1--/// 耐久为0是否自动消失
ITEM_PROP_STACK                         =i;i=i+1--/// 叠加数量
ITEM_PROP_BINDTYPE                      =i;i=i+1--/// 绑定类型
ITEM_PROP_TRADABLE                      =i;i=i+1--/// 是否可交易
ITEM_PROP_SPEDROP                       =i;i=i+1--/// 特殊掉落
ITEM_PROP_TIPDROP                       =i;i=i+1--/// 掉落提示
ITEM_PROP_TIPSELL                       =i;i=i+1--/// 出售提示
ITEM_PROP_CONFIRMATION                  =i;i=i+1--/// 使用是否确认
ITEM_PROP_USECOUNT                      =i;i=i+1--/// 使用数量
ITEM_PROP_USEZEROAUTODEL                =i;i=i+1--/// 使用次数为0是否自动消失
ITEM_PROP_LEVEL                         =i;i=i+1--/// 使用等级
ITEM_PROP_JOB                           =i;i=i+1--/// 使用职业
ITEM_PROP_GENDER                        =i;i=i+1--/// 使用性别
ITEM_PROP_PHYLIMIT                      =i;i=i+1--/// 物攻限制
ITEM_PROP_MAGLIMIT                      =i;i=i+1--/// 魔攻限制
ITEM_PROP_TAOLIMIT                      =i;i=i+1--/// 道术限制
ITEM_PROP_EFFECT                        =i;i=i+1--/// 使用特效编号
ITEM_PROP_DROPABLE                      =i;i=i+1--/// 可否丢弃
ITEM_PROP_STORABLE                      =i;i=i+1--/// 可否放入仓库
ITEM_PROP_REPAIRABLE                    =i;i=i+1--/// 可否修理
ITEM_PROP_SELLABLE                      =i;i=i+1--/// 可否出售
ITEM_PROP_CANAUCTION                    =i;i=i+1--/// 可否拍卖
ITEM_PROP_CANPURCHASE                   =i;i=i+1--/// 可否收购
ITEM_PROP_CANSHORTCUT                   =i;i=i+1--/// 可否放入快捷栏
ITEM_PROP_TIMELIMIT                     =i;i=i+1--/// 存在时限
ITEM_PROP_USEABSTIME                    =i;i=i+1--/// 绝对时间或相对时间
ITEM_PROP_TIMEUPAUTODEL                 =i;i=i+1--/// 存在时限是否消失
ITEM_PROP_TRACK                         =i;i=i+1--/// 跟踪级别
ITEM_PROP_SCRIPT                        =i;i=i+1--/// 脚本编号
ITEM_PROP_SUIT                          =i;i=i+1--/// 套装编号
ITEM_PROP_IDENTIFY                      =i;i=i+1--/// 可否鉴定
ITEM_PROP_CANUNEQUIP                    =i;i=i+1--/// 可否卸下
ITEM_PROP_DRILLABLE                     =i;i=i+1--/// 可否打孔
ITEM_PROP_MAXDRILL                      =i;i=i+1--/// 配置打孔数量上限
ITEM_PROP_CANENHANCE                    =i;i=i+1--/// 可否强化
ITEM_PROP_CANREFINE                     =i;i=i+1--/// 可否精炼
ITEM_PROP_REFINECOSTDUR                 =i;i=i+1--/// 精炼失败掉落耐久
ITEM_PROP_BAGSIZE                       =i;i=i+1--/// 开启背包格子数
ITEM_PROP_WAREHOUSESIZE                 =i;i=i+1--/// 开启仓库格子数
ITEM_PROP_SKILLID                       =i;i=i+1--/// 触发技能
ITEM_PROP_HP                            =i;i=i+1--/// 生命
ITEM_PROP_MP                            =i;i=i+1--/// 魔法
ITEM_PROP_MAXPHYDEF                     =i;i=i+1--/// 物防上限
ITEM_PROP_MINPHYDEF                     =i;i=i+1--/// 物防下限
ITEM_PROP_MAXMAGDEF                     =i;i=i+1--/// 魔防上限
ITEM_PROP_MINMAGDEF                     =i;i=i+1--/// 魔防下限
ITEM_PROP_MAXPHYATK                     =i;i=i+1--/// 攻击力上限
ITEM_PROP_MINPHYATK                     =i;i=i+1--/// 攻击力下限
ITEM_PROP_MAXMAGATK                     =i;i=i+1--/// 魔攻上限
ITEM_PROP_MINMAGATK                     =i;i=i+1--/// 魔攻下限
ITEM_PROP_MAXTAOATK                     =i;i=i+1--/// 道术上限
ITEM_PROP_MINTAOATK                     =i;i=i+1--/// 道术下限
ITEM_PROP_EA1                           =i;i=i+1--/// 金相性攻击
ITEM_PROP_EA2                           =i;i=i+1--/// 木相性攻击
ITEM_PROP_EA3                           =i;i=i+1--/// 水相性攻击
ITEM_PROP_EA4                           =i;i=i+1--/// 火相性攻击
ITEM_PROP_EA5                           =i;i=i+1--/// 土相性攻击
ITEM_PROP_ED1                           =i;i=i+1--/// 金相性防御
ITEM_PROP_ED2                           =i;i=i+1--/// 木相性防御
ITEM_PROP_ED3                           =i;i=i+1--/// 水相性防御
ITEM_PROP_ED4                           =i;i=i+1--/// 火相性防御
ITEM_PROP_ED5                           =i;i=i+1--/// 土相性防御
ITEM_PROP_WEIGHT                        =i;i=i+1--/// 配置背包负重
ITEM_PROP_EQUIPWEIGHT                   =i;i=i+1--/// 配置穿戴负重
ITEM_PROP_BRAWN                         =i;i=i+1--/// 腕力
ITEM_PROP_HIT                           =i;i=i+1--/// 准确（命中）
ITEM_PROP_MISS                          =i;i=i+1--/// 敏捷（闪避）
ITEM_PROP_MAGMISS                       =i;i=i+1--/// 魔法躲避
ITEM_PROP_BURST                         =i;i=i+1--/// 爆击率
ITEM_PROP_LC                            =i;i=i+1--/// 幸运/诅咒
ITEM_PROP_MOVESPEED                     =i;i=i+1--/// 移动速度
ITEM_PROP_ATTACKSPEED                   =i;i=i+1--/// 攻击速度
ITEM_PROP_POISON                        =i;i=i+1--/// 中毒回复值
ITEM_PROP_HPREC                         =i;i=i+1--/// 生命回复值
ITEM_PROP_MPREC                         =i;i=i+1--/// 魔法回复值
ITEM_PROP_INTENSITY                     =i;i=i+1--/// 强度
ITEM_PROP_SUCKHP                        =i;i=i+1--/// 吸血
ITEM_PROP_SUCKHPPCT                     =i;i=i+1--/// 吸血百分比
ITEM_PROP_SUCKMAXHPPCT                  =i;i=i+1--/// 吸血上限百分比
ITEM_PROP_SUCKMP                        =i;i=i+1--/// 吸魔
ITEM_PROP_SUCKMPPCT                     =i;i=i+1--/// 吸魔百分比
ITEM_PROP_SUCKMAXMPPCT                  =i;i=i+1--/// 吸魔上限百分比
ITEM_PROP_REFPHY                        =i;i=i+1--/// 物理伤害反射
ITEM_PROP_REFPHYPCT                     =i;i=i+1--/// 物理伤害反射百分比
ITEM_PROP_REFMAG                        =i;i=i+1--/// 魔法伤害反射数值
ITEM_PROP_REFMAGPCT                     =i;i=i+1--/// 魔法伤害反射百分比
ITEM_PROP_IMMMAG                        =i;i=i+1--/// 魔法伤害减免数值
ITEM_PROP_IMMMAGPCT                     =i;i=i+1--/// 魔法伤害减免百分比
ITEM_PROP_IMMPHY                        =i;i=i+1--/// 物理伤害减免数值
ITEM_PROP_IMMPHYPCT                     =i;i=i+1--/// 物理伤害减免百分比
ITEM_PROP_ISPHYIMM                      =i;i=i+1--/// 物理免疫
ITEM_PROP_ISMAGIMM                      =i;i=i+1--/// 魔法免疫
ITEM_PROP_SELLPRICE                     =i;i=i+1--/// 出售价格
ITEM_PROP_BUYPRICE                      =i;i=i+1--/// 买入价格
ITEM_PROP_BUNDLE                        =i;i=i+1--/// 打捆数量
ITEM_PROP_BUNDLEDSTID                   =i;i=i+1--/// 打捆对应物品ID
ITEM_PROP_BUFFID1                       =i;i=i+1--/// 道具自身携带的Buff1
ITEM_PROP_BUFFID2                       =i;i=i+1--/// 道具自身携带的Buff2
ITEM_PROP_BUFFID3                       =i;i=i+1--/// 道具自身携带的Buff3
ITEM_PROP_BUFFID4                       =i;i=i+1--/// 道具自身携带的Buff4
ITEM_PROP_RATE                          =i;i=i+1--/// 材料的概率加成
ITEM_PROP_GEMTYPE                       =i;i=i+1--/// 宝石效果类型
ITEM_PROP_GEMMATCH                      =i;i=i+1--/// 宝石与装备子类型匹配关系
ITEM_PROP_GEMATT1                       =i;i=i+1--/// 宝石属性类型
ITEM_PROP_GEMATTVALUE1                  =i;i=i+1--/// 宝石属性数值
ITEM_PROP_GEMWARRIOR                    =i;i=i+1--/// 战士生效比率
ITEM_PROP_GEMMAGE                       =i;i=i+1--/// 法师生效比率
ITEM_PROP_GEMTAO                        =i;i=i+1--/// 道士生效比率
ITEM_PROP_GEMLEVEL                      =i;i=i+1--/// 宝石等级
ITEM_PROP_GEMSYNTHESISLEVEL             =i;i=i+1--/// 宝石合成符等级
ITEM_PROP_GEMDIGLEVEL                   =i;i=i+1--/// 宝石摘除符等级
ITEM_PROP_SYNTHESISID                   =i;i=i+1--/// 合成后生成的新宝石id
ITEM_PROP_ITEMIDENTIFIER				=i;i=i+1--/// 物品标识
ITEM_PROP_FASHIONID						=i;i=i+1--/// 时装ID
i=10001
ITEM_PROP_ATTR1                         =i;i=i+1  --/// 装备属性1
ITEM_PROP_ATTR1VALUE                    =i;i=i+1  --/// 装备属性1的值
ITEM_PROP_ATTR2                         =i;i=i+1  --/// 装备属性2
ITEM_PROP_ATTR2VALUE                    =i;i=i+1  --/// 装备属性2的值
ITEM_PROP_ATTR3                         =i;i=i+1  --/// 装备属性3
ITEM_PROP_ATTR3VALUE                    =i;i=i+1  --/// 装备属性3的值
ITEM_PROP_ATTR4                         =i;i=i+1  --/// 装备属性4
ITEM_PROP_ATTR4VALUE                    =i;i=i+1  --/// 装备属性4的值
ITEM_PROP_ATTR5                         =i;i=i+1  --/// 装备属性5
ITEM_PROP_ATTR5VALUE                    =i;i=i+1  --/// 装备属性5的值
ITEM_PROP_ATTR6                         =i;i=i+1  --/// 装备属性6
ITEM_PROP_ATTR6VALUE                    =i;i=i+1  --/// 装备属性6的值
ITEM_PROP_ATTR7                         =i;i=i+1  --/// 装备属性7
ITEM_PROP_ATTR7VALUE                    =i;i=i+1  --/// 装备属性7的值
ITEM_PROP_ATTR8                         =i;i=i+1  --/// 装备属性8
ITEM_PROP_ATTR8VALUE                    =i;i=i+1  --/// 装备属性8的值
ITEM_PROP_ATTR9                         =i;i=i+1  --/// 装备属性9
ITEM_PROP_ATTR9VALUE                    =i;i=i+1  --/// 装备属性9的值
ITEM_PROP_ATTR10                        =i;i=i+1  --/// 装备属性10
ITEM_PROP_ATTR10VALUE                   =i;i=i+1  --/// 装备属性10的值

ITEM_PROP_TYPE_MIN                      = ITEM_PROP_ID                             --/// Item最小值
ITEM_PROP_TYPE_MAX                      = ITEM_PROP_FASHIONID                    --/// Item最大值


