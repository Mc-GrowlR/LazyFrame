--Item的宏定义
local i = 0

--对于个别表(类似数组)是从1开始
--因为习惯上，Lua的下标从1开始，不然无法使用标准函数遍历等操作

MAX_QUALITY_PROPERTY_NUM = 6
MAX_ENHANCE_LEVEL = 10
MAX_ENHANCE_PROPERTY_NUM = 3
MAX_EQUIP_SLOT = 3
MAX_IDENTIFY_PROPERTY_NUM = 3
MAX_EXT_PROPERTY_NUM = 5

i = 1
--扩展数据里的属性
PROPERTY_ATTR_NAME				=i;i=i+1--/// 属性名(数值)
PROPERTY_ATTR_VALUE				=i;i=i+1--/// 属性值(数值)

i = ITEM_PROP_TYPE_MAX + 1 -- 接着道具模版的属性之后开始递增
--以下道具实体独有
ITEM_PROP_ENTITY_GUID				=i;i=i+1--/// guid
ITEM_PROP_ENTITY_ID				=i;i=i+1--/// 模板Id
ITEM_PROP_ENTITY_NAME				=i;i=i+1--/// 名称
ITEM_PROP_ENTITY_ROLE				=i;i=i+1--/// 拥有者GUID
ITEM_PROP_ENTITY_SITE				=i;i=i+1--/// 当前所在的位置
ITEM_PROP_ENTITY_AMOUNT				=i;i=i+1--/// 当前的堆叠数量
ITEM_PROP_ENTITY_DURABILITY			=i;i=i+1--/// 装备耐久
ITEM_PROP_ENTITY_MAX_DURABILITY			=i;i=i+1--/// 装备最大耐久
ITEM_PROP_ENTITY_USE_COUNT			=i;i=i+1--/// 当前的使用次数
ITEM_PROP_ENTITY_IS_BOUND			=i;i=i+1--/// 是否已绑定
ITEM_PROP_ENTITY_LIFE				=i;i=i+1--/// 绝对时间起始或存活时间
ITEM_PROP_ENTITY_EXT_LEN			=i;i=i+1--/// 扩展数据长度
ITEM_PROP_ENTITY_EXT_DATA			=i;i=i+1--/// 扩展数据

ITEM_PROP_ENTITY_END = i;i=i+1
i = ITEM_PROP_TYPE_MAX + 20;i=i+1

--扩展数据:Equip
ITEM_PROP_EQUIP_VERSION				=i;i=i+1--/// 版本
ITEM_PROP_EQUIP_QUALITY				=i;i=i+1--/// 品质属性
ITEM_PROP_EQUIP_SLOTNUM				=i;i=i+1--/// 当前孔数量
ITEM_PROP_EQUIP_GEMSLOT				=i;i=i+1--/// 宝石槽位
ITEM_PROP_EQUIP_GEMS				=i;i=i+1--/// 宝石属性加成
ITEM_PROP_EQUIP_IDENTIFIES			=i;i=i+1--/// 鉴定属性
ITEM_PROP_EQUIP_REFINELEVEL			=i;i=i+1--/// 精炼等级
ITEM_PROP_EQUIP_REFINEDATA			=i;i=i+1--/// 精炼属性
ITEM_PROP_EQUIP_LUCKCURSE			=i;i=i+1--/// 幸运/诅咒
ITEM_PROP_EQUIP_EXT				=i;i=i+1--/// 其他扩展

ITEM_PROP_EQUIP_END = i;i=i+1
