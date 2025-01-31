--Item位置的宏定义

--/// 背包数量
MAX_BAG_COUNT                     = 5
--/// 一个背包最大格子数
MAX_SLOT_PER_BAG                  = 40
--/// 背包最大的格子数
MAX_BAG_SLOT                      = (MAX_BAG_COUNT * MAX_SLOT_PER_BAG)
--/// 仓库最大格子数
MAX_WAREHOUSE_SIZE                = 40
--/// 高级仓库最大格子数
MAX_WAREHOUSE_ADV_SIZE            = 144

local i                           = 0
SITE_NULL                         = i; i = i + 1                        --/// 无位置
SITE_WEAPON                       = i; i = i + 1                        --/// 武器
SITE_HELMET                       = i; i = i + 1                        --/// 头盔
SITE_WRIST_0                      = i; i = i + 1                        --/// 护腕0
SITE_WRIST_1                      = i; i = i + 1                        --/// 护腕1
SITE_ARMOR                        = i; i = i + 1                        --/// 衣服
SITE_JUJU                         = i; i = i + 1                        --/// 符咒
SITE_SHOES                        = i; i = i + 1                        --/// 鞋子
SITE_SHOULDER                     = i; i = i + 1                        --/// 护肩
SITE_NECKLACE                     = i; i = i + 1                        --/// 项链
SITE_RING_0                       = i; i = i + 1                        --/// 戒指0
SITE_RING_1                       = i; i = i + 1                        --/// 戒指1
SITE_MEDAL                        = i; i = i + 1                        --/// 勋章

SITE_GEM                          = i; i = i + 1                        --/// 宝石
SITE_WINGS                        = i; i = i + 1                        --/// 翅膀
SITE_AMULET                       = i; i = i + 1                        --/// 守护
SITE_MOUNT                        = i; i = i + 1                        --/// 坐骑
SITE_SHIELD                       = i; i = i + 1                        --/// 盾牌
SITE_FASHION                      = i; i = i + 1                        --/// 时装
SITE_HAT                          = i; i = i + 1                        --/// 斗笠
SITE_GLOVES                       = i; i = i + 1                        --/// 手套
SITE_JEWELRY                      = i; i = i + 1                        --/// 珠宝

SITE_BAG_0                        = 22                                  --/// 第0背包
SITE_BAG_1                        = SITE_BAG_0 + MAX_SLOT_PER_BAG       --/// 第1背包
SITE_BAG_2                        = SITE_BAG_1 + MAX_SLOT_PER_BAG       --/// 第2背包
SITE_BAG_3                        = SITE_BAG_2 + MAX_SLOT_PER_BAG       --/// 第3背包
SITE_BAG_4                        = SITE_BAG_3 + MAX_SLOT_PER_BAG       --/// 第4背包

SITE_WAREHOUSE                    = SITE_BAG_4 + MAX_SLOT_PER_BAG       --/// 仓库
SITE_WAREHOUSE_ADV                = SITE_WAREHOUSE + MAX_WAREHOUSE_SIZE --/// 高级仓库

SITE_BAG_END                      = SITE_WAREHOUSE_ADV + MAX_WAREHOUSE_ADV_SIZE

i                                 = SITE_BAG_END
SITE_EXPAND_0                     = SITE_BAG_END;
SITE_EXPAND_1                     = SITE_BAG_END + 1; --/// 背包1扩充位置
SITE_EXPAND_2                     = SITE_BAG_END + 2; --/// 背包2扩充位置
SITE_EXPAND_3                     = SITE_BAG_END + 3; --/// 背包3扩充位置
SITE_EXPAND_4                     = SITE_BAG_END + 4; --/// 背包4扩充位置
SITE_EXPAND_END                   = SITE_BAG_END + 5; --/// 背包扩充结束

i                                 = SITE_EXPAND_END
SITE_GLASSES                      = i; i = i + 1 --/// 眼镜
SITE_BRACELET_0                   = i; i = i + 1 --/// 手镯0
SITE_BRACELET_1                   = i; i = i + 1 --/// 手镯1
SITE_MASK                         = i; i = i + 1 --/// 面甲
SITE_KNEELET                      = i; i = i + 1 --/// 护膝
SITE_CHESTPLATE                   = i; i = i + 1 --/// 护胸
SITE_CLOAK                        = i; i = i + 1 --/// 披风
SITE_EARRINGS                     = i; i = i + 1 --/// 耳环
SITE_HEADWEAR                     = i; i = i + 1 --/// 头饰
SITE_LEGGUARD                     = i; i = i + 1 --/// 护腿
SITE_JADE                         = i; i = i + 1 --/// 玉佩
SITE_INSTRUMENT                   = i; i = i + 1 --/// 乐器
SITE_HANGINGS                     = i; i = i + 1 --/// 挂饰
SITE_EQUIP_RESERVED_0             = i; i = i + 1
SITE_EQUIP_RESERVED_1             = i; i = i + 1
SITE_EQUIP_RESERVED_2             = i; i = i + 1
SITE_EQUIP_RESERVED_3             = i; i = i + 1
SITE_EQUIP_RESERVED_4             = i; i = i + 1
SITE_EQUIP_RESERVED_5             = i; i = i + 1
SITE_EQUIP_RESERVED_6             = i; i = i + 1
SITE_EQUIP_RESERVED_7             = i; i = i + 1
SITE_EQUIP_RESERVED_8             = i; i = i + 1
SITE_EQUIP_RESERVED_9             = i; i = i + 1

--// 自定义装备位
SITE_EQUIP_CUSTOM_0               = i; i = i + 1
SITE_EQUIP_CUSTOM_1               = i; i = i + 1
SITE_EQUIP_CUSTOM_2               = i; i = i + 1
SITE_EQUIP_CUSTOM_3               = i; i = i + 1
SITE_EQUIP_CUSTOM_4               = i; i = i + 1
SITE_EQUIP_CUSTOM_5               = i; i = i + 1
SITE_EQUIP_CUSTOM_6               = i; i = i + 1
SITE_EQUIP_CUSTOM_7               = i; i = i + 1
SITE_EQUIP_CUSTOM_8               = i; i = i + 1
SITE_EQUIP_CUSTOM_9               = i; i = i + 1
SITE_EQUIP_CUSTOM_10              = i; i = i + 1
SITE_EQUIP_CUSTOM_11              = i; i = i + 1
SITE_EQUIP_CUSTOM_12              = i; i = i + 1
SITE_EQUIP_CUSTOM_13              = i; i = i + 1
SITE_EQUIP_CUSTOM_14              = i; i = i + 1
SITE_EQUIP_CUSTOM_15              = i; i = i + 1
SITE_EQUIP_CUSTOM_16              = i; i = i + 1
SITE_EQUIP_CUSTOM_17              = i; i = i + 1
SITE_EQUIP_CUSTOM_18              = i; i = i + 1
SITE_EQUIP_CUSTOM_19              = i; i = i + 1
SITE_EQUIP_CUSTOM_20              = i; i = i + 1
SITE_EQUIP_CUSTOM_21              = i; i = i + 1
SITE_EQUIP_CUSTOM_22              = i; i = i + 1
SITE_EQUIP_CUSTOM_23              = i; i = i + 1
SITE_EQUIP_CUSTOM_24              = i; i = i + 1
SITE_EQUIP_CUSTOM_25              = i; i = i + 1
SITE_EQUIP_CUSTOM_26              = i; i = i + 1
SITE_EQUIP_CUSTOM_27              = i; i = i + 1
SITE_EQUIP_CUSTOM_28              = i; i = i + 1
SITE_EQUIP_CUSTOM_29              = i; i = i + 1
SITE_EQUIP_CUSTOM_30              = i; i = i + 1
SITE_EQUIP_CUSTOM_31              = i; i = i + 1
SITE_EQUIP_CUSTOM_32              = i; i = i + 1
SITE_EQUIP_CUSTOM_33              = i; i = i + 1
SITE_EQUIP_CUSTOM_34              = i; i = i + 1
SITE_EQUIP_CUSTOM_35              = i; i = i + 1
SITE_EQUIP_CUSTOM_36              = i; i = i + 1
SITE_EQUIP_CUSTOM_37              = i; i = i + 1
SITE_EQUIP_CUSTOM_38              = i; i = i + 1
SITE_EQUIP_CUSTOM_39              = i; i = i + 1
SITE_EQUIP_CUSTOM_40              = i; i = i + 1
SITE_EQUIP_CUSTOM_41              = i; i = i + 1
SITE_EQUIP_CUSTOM_42              = i; i = i + 1
SITE_EQUIP_CUSTOM_43              = i; i = i + 1
SITE_EQUIP_CUSTOM_44              = i; i = i + 1
SITE_EQUIP_CUSTOM_45              = i; i = i + 1
SITE_EQUIP_CUSTOM_46              = i; i = i + 1
SITE_EQUIP_CUSTOM_47              = i; i = i + 1
SITE_EQUIP_CUSTOM_48              = i; i = i + 1
SITE_EQUIP_CUSTOM_49              = i; i = i + 1
SITE_EQUIP_CUSTOM_50              = i; i = i + 1
SITE_EQUIP_CUSTOM_51              = i; i = i + 1
SITE_EQUIP_CUSTOM_52              = i; i = i + 1
SITE_EQUIP_CUSTOM_53              = i; i = i + 1
SITE_EQUIP_CUSTOM_54              = i; i = i + 1
SITE_EQUIP_CUSTOM_55              = i; i = i + 1
SITE_EQUIP_CUSTOM_56              = i; i = i + 1
SITE_EQUIP_CUSTOM_57              = i; i = i + 1
SITE_EQUIP_CUSTOM_58              = i; i = i + 1
SITE_EQUIP_CUSTOM_59              = i; i = i + 1
SITE_EQUIP_CUSTOM_60              = i; i = i + 1
SITE_EQUIP_CUSTOM_61              = i; i = i + 1
SITE_EQUIP_CUSTOM_62              = i; i = i + 1
SITE_EQUIP_CUSTOM_63              = i; i = i + 1
SITE_EQUIP_CUSTOM_64              = i; i = i + 1
SITE_EQUIP_CUSTOM_65              = i; i = i + 1
SITE_EQUIP_CUSTOM_66              = i; i = i + 1
SITE_EQUIP_CUSTOM_67              = i; i = i + 1
SITE_EQUIP_CUSTOM_68              = i; i = i + 1
SITE_EQUIP_CUSTOM_69              = i; i = i + 1
SITE_EQUIP_CUSTOM_70              = i; i = i + 1
SITE_EQUIP_CUSTOM_71              = i; i = i + 1
SITE_EQUIP_CUSTOM_72              = i; i = i + 1
SITE_EQUIP_CUSTOM_73              = i; i = i + 1
SITE_EQUIP_CUSTOM_74              = i; i = i + 1
SITE_EQUIP_CUSTOM_75              = i; i = i + 1
SITE_EQUIP_CUSTOM_76              = i; i = i + 1
SITE_EQUIP_CUSTOM_77              = i; i = i + 1
SITE_EQUIP_CUSTOM_78              = i; i = i + 1
SITE_EQUIP_CUSTOM_79              = i; i = i + 1
SITE_EQUIP_CUSTOM_80              = i; i = i + 1
SITE_EQUIP_CUSTOM_81              = i; i = i + 1
SITE_EQUIP_CUSTOM_82              = i; i = i + 1
SITE_EQUIP_CUSTOM_83              = i; i = i + 1
SITE_EQUIP_CUSTOM_84              = i; i = i + 1
SITE_EQUIP_CUSTOM_85              = i; i = i + 1
SITE_EQUIP_CUSTOM_86              = i; i = i + 1
SITE_EQUIP_CUSTOM_87              = i; i = i + 1
SITE_EQUIP_CUSTOM_88              = i; i = i + 1
SITE_EQUIP_CUSTOM_89              = i; i = i + 1
SITE_EQUIP_CUSTOM_90              = i; i = i + 1
SITE_EQUIP_CUSTOM_91              = i; i = i + 1
SITE_EQUIP_CUSTOM_92              = i; i = i + 1
SITE_EQUIP_CUSTOM_93              = i; i = i + 1
SITE_EQUIP_CUSTOM_94              = i; i = i + 1
SITE_EQUIP_CUSTOM_95              = i; i = i + 1
SITE_EQUIP_CUSTOM_96              = i; i = i + 1
SITE_EQUIP_CUSTOM_97              = i; i = i + 1
SITE_EQUIP_CUSTOM_98              = i; i = i + 1
SITE_EQUIP_CUSTOM_99              = i; i = i + 1
SITE_EQUIP_CUSTOM_100             = i; i = i + 1
SITE_EQUIP_CUSTOM_101             = i; i = i + 1
SITE_EQUIP_CUSTOM_102             = i; i = i + 1
SITE_EQUIP_CUSTOM_103             = i; i = i + 1
SITE_EQUIP_CUSTOM_104             = i; i = i + 1
SITE_EQUIP_CUSTOM_105             = i; i = i + 1
SITE_EQUIP_CUSTOM_106             = i; i = i + 1
SITE_EQUIP_CUSTOM_107             = i; i = i + 1
SITE_EQUIP_CUSTOM_108             = i; i = i + 1
SITE_EQUIP_CUSTOM_109             = i; i = i + 1
SITE_EQUIP_CUSTOM_110             = i; i = i + 1
SITE_EQUIP_CUSTOM_111             = i; i = i + 1
SITE_EQUIP_CUSTOM_112             = i; i = i + 1
SITE_EQUIP_CUSTOM_113             = i; i = i + 1
SITE_EQUIP_CUSTOM_114             = i; i = i + 1
SITE_EQUIP_CUSTOM_115             = i; i = i + 1
SITE_EQUIP_CUSTOM_116             = i; i = i + 1
SITE_EQUIP_CUSTOM_117             = i; i = i + 1
SITE_EQUIP_CUSTOM_118             = i; i = i + 1
SITE_EQUIP_CUSTOM_119             = i; i = i + 1
SITE_EQUIP_CUSTOM_120             = i; i = i + 1
SITE_EQUIP_CUSTOM_121             = i; i = i + 1
SITE_EQUIP_CUSTOM_122             = i; i = i + 1
SITE_EQUIP_CUSTOM_123             = i; i = i + 1
SITE_EQUIP_CUSTOM_124             = i; i = i + 1
SITE_EQUIP_CUSTOM_125             = i; i = i + 1
SITE_EQUIP_CUSTOM_126             = i; i = i + 1
SITE_EQUIP_CUSTOM_127             = i; i = i + 1
SITE_EQUIP_CUSTOM_128             = i; i = i + 1
SITE_EQUIP_CUSTOM_129             = i; i = i + 1
SITE_EQUIP_CUSTOM_130             = i; i = i + 1
SITE_EQUIP_CUSTOM_131             = i; i = i + 1
SITE_EQUIP_CUSTOM_132             = i; i = i + 1
SITE_EQUIP_CUSTOM_133             = i; i = i + 1
SITE_EQUIP_CUSTOM_134             = i; i = i + 1
SITE_EQUIP_CUSTOM_135             = i; i = i + 1
SITE_EQUIP_CUSTOM_136             = i; i = i + 1
SITE_EQUIP_CUSTOM_137             = i; i = i + 1
SITE_EQUIP_CUSTOM_138             = i; i = i + 1
SITE_EQUIP_CUSTOM_139             = i; i = i + 1
SITE_EQUIP_CUSTOM_140             = i; i = i + 1
SITE_EQUIP_CUSTOM_141             = i; i = i + 1
SITE_EQUIP_CUSTOM_142             = i; i = i + 1
SITE_EQUIP_CUSTOM_143             = i; i = i + 1
SITE_EQUIP_CUSTOM_144             = i; i = i + 1
SITE_EQUIP_CUSTOM_145             = i; i = i + 1
SITE_EQUIP_CUSTOM_146             = i; i = i + 1
SITE_EQUIP_CUSTOM_147             = i; i = i + 1
SITE_EQUIP_CUSTOM_148             = i; i = i + 1
SITE_EQUIP_CUSTOM_149             = i; i = i + 1
SITE_EQUIP_CUSTOM_END             = i; i = i + 1
SITE_END                          = SITE_EQUIP_CUSTOM_END --/// 结束格

--道具所在位置相关定义
ROLEEQUIEMNT_COUNT                = 16
PACKTOOL_COUNT                    = 5

SKILLBARDATA_SIZE                 = 10
SKILLBARDATA_STARTPOS             = 100000

PACKDATA_STARTPOS                 = SITE_BAG_0
PACKDATA_PAGE_COUNT               = 5
PACKDATA_SIZE                     = 40

ROLEEQUIMENTDATA_SIZE             = ROLEEQUIEMNT_COUNT
ROLEEQUIMENTDATA_STARTPOS1        = SITE_WEAPON
ROLEEQUIMENTDATA_ENDPOS1          = SITE_JEWELRY + 1
ROLEEQUIMENTDATA_STARTPOS2        = SITE_GLASSES
ROLEEQUIMENTDATA_ENDPOS2          = SITE_EQUIP_CUSTOM_END

ROLESKILLDATA_SIZE                = 5
ROLESKILLDATA_PAGESIZE            = 5
ROLESKILLDATA_STARTPOS            = 200000

NPCSHOPDATA_SIZE                  = 8
NPCSHOPDATA_PAGESIZE              = 12
NPCSHOPDATA_STARTPOS              = 110000

WAREHOUSEDATA_SIZE                = MAX_WAREHOUSE_SIZE
WAREHOUSEDATA_STARTPOS            = SITE_WAREHOUSE

ADVWAREHOUSEDATA_SIZE             = 50
ADVWAREHOUSEDATA_STARTPOS         = SITE_WAREHOUSE_ADV

GAMESTALLDATA_SIZE                = 25
GAMESTALLDATA_GAMESTALL_STARTPOS  = 300100
GAMESTALLDATA_VISITSTALL_STARTPOS = 300200

SKILLHOTKEYDATA_SIZE              = 16

ITEMTRADEDATA_SIZE                = 10

--位置类型
i                                 = 0
INVALID_POS                       = i; i = i + 1
PACKAGE_POS                       = i; i = i + 1
SKILLBAR_POS                      = i; i = i + 1
EQUIMENT_POS                      = i; i = i + 1
GAMESTALL_POS                     = i; i = i + 1
VISITSTALL_POS                    = i; i = i + 1

--GUIData属性类型
i                                 = 0
ITEMGUIDATA_ITEMGUID              = i; i = i + 1 -- GUID
ITEMGUIDATA_IMAGEID               = i; i = i + 1 -- ICON
ITEMGUIDATA_TYPE                  = i; i = i + 1 -- 类型：`1`表示物品，`2`表示技能
ITEMGUIDATA_ITEMID                = i; i = i + 1 -- 模板ID
ITEMGUIDATA_PARAM                 = i; i = i + 1 -- 自定义参数
ITEMGUIDATA_ITEMCOUNT             = i; i = i + 1 -- 数量
ITEMGUIDATA_INVALIDATE            = i; i = i + 1 -- 是否有效
ITEMGUIDATA_ISSTACKITEM           = i; i = i + 1 -- 是否可堆叠
ITEMGUIDATA_ITEMPOS               = i; i = i + 1 -- 绝对位置
ITEMGUIDATA_CDTIME                = i; i = i + 1 -- CD时间
ITEMGUIDATA_CDSTARTTICK           = i; i = i + 1 -- CD开始时间
ITEMGUIDATA_INCDSTATE             = i; i = i + 1 -- 是否CD状态
ITEMGUIDATA_ITEMLOCK              = i; i = i + 1 -- 是否锁定
ITEMGUIDATA_ITEMPRICETYPE         = i; i = i + 1 -- 价格类型：`1`金币，`2`元宝
ITEMGUIDATA_ITEMPRICE             = i; i = i + 1 -- 价格
ITEMGUIDATA_ISSHOWBIND            = i; i = i + 1 -- 是否绑定


function GetItemPosType(ItemPos)
	local PosType = INVALID_POS
	if (ItemPos >= SKILLBARDATA_STARTPOS) and (ItemPos <= SKILLBARDATA_STARTPOS + SKILLBARDATA_SIZE) then
		PosType = SKILLBAR_POS
	elseif (ItemPos >= GAMESTALLDATA_GAMESTALL_STARTPOS) and (ItemPos <= GAMESTALLDATA_GAMESTALL_STARTPOS + GAMESTALLDATA_SIZE) then
		PosType = GAMESTALL_POS
	elseif (ItemPos >= GAMESTALLDATA_VISITSTALL_STARTPOS) and (ItemPos <= GAMESTALLDATA_VISITSTALL_STARTPOS + GAMESTALLDATA_SIZE) then
		PosType = VISITSTALL_POS
	elseif ((ItemPos >= SITE_BAG_0) and (ItemPos < SITE_BAG_4 + MAX_SLOT_PER_BAG)) then
		PosType = PACKAGE_POS
	elseif ((ItemPos >= ROLEEQUIMENTDATA_STARTPOS1) and (ItemPos < ROLEEQUIMENTDATA_ENDPOS1)) or ((ItemPos >= ROLEEQUIMENTDATA_STARTPOS2) and (ItemPos < ROLEEQUIMENTDATA_ENDPOS2)) then
		PosType = EQUIMENT_POS
	end
	return PosType;
end
