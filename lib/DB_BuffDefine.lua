--Buff的宏定义
local i = 0
BUFF_PROP_ID                            =i;i=i+1--/// 编号
BUFF_PROP_NAME                          =i;i=i+1--/// 名称
BUFF_PROP_KEYNAME                       =i;i=i+1--/// 索引名
BUFF_PROP_GROUP                         =i;i=i+1--/// 组别
BUFF_PROP_INTERVAL                      =i;i=i+1--/// 触发间隔
BUFF_PROP_TIMELIMIT                     =i;i=i+1--/// 存在时限
BUFF_PROP_USEABSTIME                    =i;i=i+1--/// 绝对时间或相对时间
BUFF_PROP_TIMECOFF                      =i;i=i+1--/// 时间系数
BUFF_PROP_STACK                         =i;i=i+1--/// 叠加层数
BUFF_PROP_ATT1COFF                      =i;i=i+1--/// Att1系数
BUFF_PROP_ATT1                          =i;i=i+1--/// Att1
BUFF_PROP_ATTVALUE1                     =i;i=i+1--/// Att值1
BUFF_PROP_ATT2                          =i;i=i+1--/// Att2
BUFF_PROP_ATTVALUE2                     =i;i=i+1--/// Att值2
BUFF_PROP_ATT3                          =i;i=i+1--/// Att3
BUFF_PROP_ATTVALUE3                     =i;i=i+1--/// Att值3
BUFF_PROP_ATT4                          =i;i=i+1--/// Att4
BUFF_PROP_ATTVALUE4                     =i;i=i+1--/// Att值4
BUFF_PROP_ATT5                          =i;i=i+1--/// Att5
BUFF_PROP_ATTVALUE5                     =i;i=i+1--/// Att值5
BUFF_PROP_ATT6                          =i;i=i+1--/// Att6
BUFF_PROP_ATTVALUE6                     =i;i=i+1--/// Att值6
BUFF_PROP_ATT7                          =i;i=i+1--/// Att7
BUFF_PROP_ATTVALUE7                     =i;i=i+1--/// Att值7
BUFF_PROP_ATT8                          =i;i=i+1--/// Att8
BUFF_PROP_ATTVALUE8                     =i;i=i+1--/// Att值8
BUFF_PROP_ATT9                          =i;i=i+1--/// Att9
BUFF_PROP_ATTVALUE9                     =i;i=i+1--/// Att值9
BUFF_PROP_ATT10                         =i;i=i+1--/// Att10
BUFF_PROP_ATTVALUE10                    =i;i=i+1--/// Att值10
BUFF_PROP_ATT11                         =i;i=i+1--/// Att11
BUFF_PROP_ATTVALUE11                    =i;i=i+1--/// Att值11
BUFF_PROP_ATT12                         =i;i=i+1--/// Att12
BUFF_PROP_ATTVALUE12                    =i;i=i+1--/// Att值12
BUFF_PROP_ATT13                         =i;i=i+1--/// Att13
BUFF_PROP_ATTVALUE13                    =i;i=i+1--/// Att值13
BUFF_PROP_ATT14                         =i;i=i+1--/// Att14
BUFF_PROP_ATTVALUE14                    =i;i=i+1--/// Att值14
BUFF_PROP_ATT15                         =i;i=i+1--/// Att15
BUFF_PROP_ATTVALUE15                    =i;i=i+1--/// Att值15
BUFF_PROP_ATT16                         =i;i=i+1--/// Att16
BUFF_PROP_ATTVALUE16                    =i;i=i+1--/// Att值16
BUFF_PROP_ATT17                         =i;i=i+1--/// Att17
BUFF_PROP_ATTVALUE17                    =i;i=i+1--/// Att值17
BUFF_PROP_ATT18                         =i;i=i+1--/// Att18
BUFF_PROP_ATTVALUE18                    =i;i=i+1--/// Att值18
BUFF_PROP_ATT19                         =i;i=i+1--/// Att19
BUFF_PROP_ATTVALUE19                    =i;i=i+1--/// Att值19
BUFF_PROP_ATT20                         =i;i=i+1--/// Att20
BUFF_PROP_ATTVALUE20                    =i;i=i+1--/// Att值20
BUFF_PROP_ATT21                         =i;i=i+1--/// Att21
BUFF_PROP_ATTVALUE21                    =i;i=i+1--/// Att值21
BUFF_PROP_ATT22                         =i;i=i+1--/// Att22
BUFF_PROP_ATTVALUE22                    =i;i=i+1--/// Att值22
BUFF_PROP_ATT23                         =i;i=i+1--/// Att23
BUFF_PROP_ATTVALUE23                    =i;i=i+1--/// Att值23
BUFF_PROP_ATT24                         =i;i=i+1--/// Att24
BUFF_PROP_ATTVALUE24                    =i;i=i+1--/// Att值24
BUFF_PROP_ATT25                         =i;i=i+1--/// Att25
BUFF_PROP_ATTVALUE25                    =i;i=i+1--/// Att值25

BUFF_PROP_CLIENTSHOW                    =i;i=i+1--/// 是否客户端显示
BUFF_PROP_ICON                          =i;i=i+1--/// BUFF图标
BUFF_PROP_OFFLINESAVE                   =i;i=i+1--/// 是否下线保存
BUFF_PROP_DIEAUTODEL                    =i;i=i+1--/// 死亡自动删除
BUFF_PROP_CANCANCEL                     =i;i=i+1--/// 客户端是否可手动点掉
BUFF_PROP_TIPS                          =i;i=i+1--/// BUFFTIPS
BUFF_PROP_MAGICEFFECT                   =i;i=i+1--/// BUFF特效
BUFF_PROP_DISAPPEAREFFECT               =i;i=i+1--/// BUFF消失特效
BUFF_PROP_HASIMMSHIELD                  =i;i=i+1--/// 是否有减免盾
BUFF_PROP_HASMANASHIELD                 =i;i=i+1--/// 是否有魔盾
BUFF_PROP_IMMSHIELD                     =i;i=i+1--/// 减免盾百分比值
BUFF_PROP_ISSTEALTH                     =i;i=i+1--/// 是否有隐身
BUFF_PROP_CHANGECOLOR                   =i;i=i+1--/// 变色
BUFF_PROP_CANLOCKMONSTER                =i;i=i+1--/// 是否锁妖咒
BUFF_PROP_CANTIMESTACK                  =i;i=i+1--/// 是否时间叠加
BUFF_PROP_CANEFFECTSTACK                =i;i=i+1--/// 是否效果叠加
BUFF_PROP_HPFULLAUTOCANCEL              =i;i=i+1--/// HP满后是否自动删除
BUFF_PROP_MPFULLAUTOCANCEL              =i;i=i+1--/// MP满后是否自动删除
BUFF_PROP_JUMPMAPSAVE                   =i;i=i+1--/// 跳图是否保存
BUFF_PROP_AVATAR                        =i;i=i+1--/// 改变外形
BUFF_PROP_PROMPT                        =i;i=i+1--/// 提示信息


BUFF_PROP_TYPE_MIN                      = BUFF_PROP_ID                             --/// Buff最小值
BUFF_PROP_TYPE_MAX                      = BUFF_PROP_PROMPT                         --/// Buff最大值


