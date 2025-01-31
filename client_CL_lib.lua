---@meta CL


---@class LuaGlobal
LuaGlobal = {}


---输出内容到dbg
---@param outputString string
function dbg(outputString)
end

---lua变量拷贝赋值
---@generic T : any
---@param oObject T
---@return T
function dup(oObject) end

---用作函数传参，和接收参数
---@class LuaParam
LuaParam = {}

---用作函数传参，和接收参数
---@class LuaArg
LuaArg = {}

---用作某些API储存结果
---@class LuaRet
LuaRet = {}

---@class CL
CL = {}


---@class json
json = {}

---Lua对象转换为JSON字符串
---@param oObject any@任意lua对象
---@return string @JSON字符串
function json.encode(oObject)
end

--- 此函数将JSON格式的字符串转换成Lua对象，对象可以为数字、字符串或表。
---@param strJson string @JSON字符串
---@return any @LUA对象
function json.decode(strJson)
end

---@return int
function CL:GetScreenWidth()
end

---@return int
function CL:GetScreenHeight()
end

---设置图片动画播放
---@param _FloderIndex int @指定动画图集
---@param _ElapseTick int @动画没帧的时间间隔，单位为毫秒，为0则取消动画属性
function CL:SetAnimateData(_FloderIndex, _ElapseTick)
end

---点击交易按钮
function CL:OnTradeBtn()
end

---添加一个定时器
---@param _LuaString string @回调函数名或Lua字符串脚本
---@param _Elapse ulong @执行间隔时间 单位是毫秒（ms）
---@param _Count int @指定回调次数 ：0代表无限次回调，达到回调次数后，程序自动删除该定时器
---@return uint @定时器ID
function CL:AddDelayTask(_LuaString, _Elapse, _Count)
end

---设置HP和MP遮罩图片,如果加了圆形遮罩，血条和蓝条上所有特效均不会绘制在圆形区域之外。
---@param _ImageID uint @图片资源的ID
---@param _OffX int @X方向的偏移量
---@param _OffY int @Y方向的偏移量
function CL:SetHPMPMaskImage(_ImageID, _OffX, _OffY)
end

---设置私聊文字是否高亮
---@param _Flag bool
function CL:SetChatWindowIsWhite(_Flag)
end

---设置颜色表颜色
---@param _Idx int @颜色表索引值
---@param _r int @red
---@param _g int @green
---@param _b int @blue
---@param _a int
function CL:SetColorTableData(_Idx, _r, _g, _b, _a)
end

---设置底部聊天框中颜色表的颜色
---@param _Idx int @颜色表索引值
---@param _r int
---@param _g int
---@param _b int
---@param _a int
function CL:SetGUIFormColorData(_Idx, _r, _g, _b, _a)
end

---获取有游戏声音设置
---@return bool @ 操作成功获取的信息储存在全局变量`LuaRet`中
function CL:GetSoundSetting()
end

---获取回调函数的数量
---@param _TextString string
---@return int @回调函数数量
function CL:GetCallBackCount(_TextString)
end

---设置窗口是否播放动画
---@param _HandleID int
---@param _Flag bool
function CL:SetGUIAnimate(_HandleID, _Flag)
end

---打开或关闭友好窗口
function CL:OnFriendWindow()
end

---点击组队按钮
function CL:OnTeamBtn()
end

---退出到角色选择界面
function CL:QuiteToLogin()
end

---打开或关闭商城窗口
function CL:OnGameMallWindow()
end

---打开背包窗口
function CL:OnOpenPakage()
end

---打开技能窗口
function CL:OnSkillWindow()
end

---退出游戏
function CL:QuiteGame()
end

---打开或关闭出行会窗口
function CL:OnFamilyWindow()
end

---打开或关闭任务窗口
function CL:OnQuestWindow()
end

---打开或关闭设置窗口
function CL:OnSettingWindow()
end

---打开或关闭邮件窗口
function CL:OnMailWindow()
end

---打开角色窗口
function CL:OnRoleWindow()
end

---显示（或者隐藏其他玩家）
function CL:OnShowHide()
end

---骑乘
function CL:OnRide()
end

--- 打开或关闭增强属性窗口
function CL:OnEhanceRolePreperyWindow()
end

---打开或关闭成就窗口
function CL:OnAchieveWindow()
end

---打开或关闭英雄接口
function CL:OnHeroListWindow()
end

---打开或关闭英雄背包窗口
function CL:OnHeroPakageWindow()
end

---打开或关闭英雄属性窗口
function CL:OnHeroPropWindow()
end

---召唤或收回英雄
function CL:OnSummonHero()
end

---设置是否静音
function CL:OnSoundMute(_HandleID)
end

---切换攻击模式
function CL:OnAttackMode()
end

---根据GUID获取物品的属性值
---@param _ItemGUID_Uint64Str string
---@param _PropType int @物品的属性类型（实体属性或模板属性）
---@return bool @ 操作则将获取的属性值储存在全局变量`LuaRet`中
function CL:GetItemEntityPropByGUID(_ItemGUID_Uint64Str, _PropType)
end

---获取地图缩略图的图片资源ID
---@param _MapID int @图片编号
---@return int @图片缩略图的图片资源iD
function CL:GetMiniMapImageID(_MapID)
end

---提交表单
---@param _ScriptName string @服务端的lua文件名
---@param _FunctionName string @lua文件中的函数名
---@param _SubmitString string @提交的内容（参数
---@return bool@ 提交成功返回`true`，失败则返回`false`
function CL:DoSubmitForm(_ScriptName, _FunctionName, _SubmitString)
end

---挂接逻辑事件
---@param EventID int @游戏逻辑事件ID：[逻辑事件](https://tool.173uu.com/#/scriptdocument/0?name=g2629&jump=&t=1718346319035)
---@param _Tag string | nil @事件描述
---@param _EventFunc string | function @回调函数名称，挂接方式有二：
---1. `Lua`函数对象：`RegisterUIEvent(LUA_EVENT_OPENPAKAGEGUI, "玩家打开包裹打印消息", OnOpenPackage)`
---2. `Lua`函数名的字符串 : `RegisterUIEvent(LUA_EVENT_OPENPAKAGEGUI, "玩家打开包裹打印消息", "OnOpenPackage")`
function RegisterUIEvent(EventID, _Tag, _EventFunc)
end

---向聊天发送消息
---@param _CurInputString string
---@param _CurrenChannel int
function CL:ChatWindowSendMessage(_CurInputString, _CurrenChannel)
end

---在游戏中显示一条消息
---@param _MsgType int
---@param _MsgStr string
function CL:ShowTypeMsg(_MsgType, _MsgStr)
end

---获取玩家GUID
---@return string # 角色的GUID
function CL:GetPlayerSelfGUID()
end

---根据地图的索引名获取地图编号
---@param _KeyName string
---@return int
function CL:GetMapIdByKeyName(_KeyName)
end

---获取背包中所有物品的GUID
---@return bool @背包中是否存在物品
function CL:GetPackageItemGUIDList()
end

---根据索引名获取物品的模板句柄
---@param _KeyName string
---@return int @物品的模板句柄
function CL:GetItemTemplateHandleByKeyName(_KeyName)
end

---根据ID获取物品的模拟句柄
---@param _ID int
---@return int @物品的模板句柄
function CL:GetItemTemplateHandleByID(_ID)
end

---判断图片是否存在
---@param _ImageID uint
function CL:IsTextureExists(_ImageID)
end

--- 根据模板句柄获取物品的模板属性的属性值
---@param _ItemTemplateHandle int
---@param _PropType int
---@return bool @结果放在全局变量LuaRet中
function CL:GetItemTemplatePropByHandle(_ItemTemplateHandle, _PropType)
end

---获取图片的纹理高度
---@param _ImageID uint
---@return int @ 纹理高度
function CL:GetTextureHeight(_ImageID)
end

---获取图片的纹理宽度
---@param _ImageID uint @ 图片资源ID
---@return int @纹理宽度
function CL:GetTextureWidth(_ImageID)
end

---获取自身指定装备位装备的GUID
---@param _PartType int @装备位
---@return string @指定装备位中的装备的GUID
function CL:GetPlayerSelfEquipGUID(_PartType)
end

---设置物品框前景图片
---@param _Handle int
---@param _Info string
---@param _ImgId int
function RDItemCtrlSetFrontImageID(_Handle, _Info, _ImgId)
end

---使用默认浏览器打开特定链接
---@param _Type int
function CL:OpenUrlUseIEByType(_Type)
end

---获取玩家角色自身的基本属性
---@param _PropertyType int @类型的属性
---@return bool @返回结果放在变量LuaRet中
function CL:GetPlayerSelfPropBase(_PropertyType)
end

---获取玩家角色自身的64位属性
---@param _PropertyType
---| `ROLE_PROP64_EXP`	        角色的经验值
---| `ROLE_PROP64_INGOT`	    元宝数
---| `ROLE_PROP64_BIND_INGOT`	绑定元宝数
---| `ROLE_PROP64_INTEGRAL` 	积分
---| `ROLE_PROP64_GOLD`	        金币数
---| `ROLE_PROP64_BIND_GOLD`	绑定金币数
---| `ROLE_PROP64_GOLD_DEPOSIT`	仓库金币数
---@return bool @返回结果在`LuaRet`类型为`string`中
function CL:GetPlayerSelfProperty64(_PropertyType) end

---打开或关闭游戏设置窗口
function CL:OnGameSettingWindow() end

---打开或关闭活动窗口
function CL:OnOpenCampaign() end

---获取其他玩家角色64位属性
---@param _RoleGUID string
---@param _PropertyType int
function CL:GetPlayerProperty64(_RoleGUID, _PropertyType) end

---获取当前角色经验值总数
---@return bool
---如操作成功，则获取的数值存储在全局变量`LuaRet` 类型为`string`中。
function CL:GetSelfUpgradeExp() end

---清除逻辑事件
---@param EventID int
---@param _Tag string
function UnRegisterUIEvent(EventID, _Tag)
end

---使用json字符串配置物品品质框的显示
---@param jsonData string @可以预先按照格式定义好`lua table`，然后再用`json.encode(qualityImageData)`进行转换传参
---@return bool @true:OK,false:No
---### 示例代码
---``` lua
---local qualityImageData = {
---    color = {
---        {
---            id = "道具颜色", rect_image = {图片资源ID, "显示方法", 具体数值1, 具体数值2}, bg_image = {图片资源ID, "显示方法", 具体数值1, 具体数值2}
---        },
---    },
---    quality = {
---        {
---            range = {0, 9}, rect_image = {图片资源ID, "显示方法", 具体数值1, 具体数值2}, bg_image = {图片资源ID, "显示方法", 具体数值1, 具体数值2}
---        },
---    }
---}
---```
---### 参数的类型和定义如下
--- - **道具范围** (`string`):道具模板表中道具颜色的配置
--- - 道具品质范围(string)：0-9显示金色边框，20-29显示紫色边框。
--- - rect_image代表边框图片；bg_image代表底框图片。
--- - 图片资源ID(int)：图片资源编号；
--- - 显示方法(string)：支持按比例缩放和指定尺寸显示。ctrl_scale_factor代表按物品框控件尺寸缩放；
--- - image_scale_factor代表按图片资源尺寸缩放；size代表按填写的尺寸显示；
--- - 具体数值1(float)：根据显示方法参数的设置，填写宽度的比例或尺寸。比例默认为1.0，尺寸的单位为像素。
--- - 具体数值2(float)：根据显示方法参数的设置，填写高度的比例或尺寸。比例默认为1.0，尺寸的单位为像素。
function CL:SetQualityImageDataEx(jsonData)
end

---获取当前玩家指定装备位装备的GUIUData句柄
---@param _PartType int @装备位
---@return int @装备的GUIData句柄
function CL:GetEquimentItemDataPart(_PartType)
end

---获取鼠标上物品的GUIData句柄
---@return number @GUIData句柄
function CL:GetMouseGUIItemData()
end

---根据GUIData属性类型获取物品GUIData属性值
---@param _ItemGUIDataHandleID int @ 物品的GUIData句柄
---@param _PropType int @ GUIData属性类型
function CL:GetItemGUIDataPropByType(_ItemGUIDataHandleID, _PropType)
end

---清空鼠标上的物品
function CL:ClearMouseGUIItemData()
end

---获取背包中有个物品的位置
---@return int
--- - 获取成功则返回首个无物品的位置的相对索引（从0开始）
--- - 获取失败则返回-1
function CL:PlayerGetPakageFreeSiteIdx() end

---初始化聊天频道文字颜色
---@param _Channel int @聊天频道：1当前 2组队 3行会 4世界 5小喇叭 7私聊（暂无效果） 8全服 20系统（暂无效果）
---@param _r int @红色的颜色值，范围为0~255
---@param _g int @绿色的颜色值，范围为0~255
---@param _b int @蓝色的颜色值，范围为0~255
---@param _a int @颜色透明度，范围为0~255 0表示全透明，255表示不透明
function CL:InitChannelTextColor(_Channel, _r, _g, _b, _a)
end

---初始化聊天框文本颜色
---@param _Channel int @聊天频道：1当前 2组队 3行会 4世界 5小喇叭 7私聊（暂无效果） 8全服 20系统（暂无效果）
---@param _r int @红色的颜色值，范围为0~255
---@param _g int @绿色的颜色值，范围为0~255
---@param _b int @蓝色的颜色值，范围为0~255
---@param _a int @颜色透明度，范围为0~255 0表示全透明，255表示不透明
function CL:InitChannelExTextColor(_Channel, _r, _g, _b, _a)
end

---初始化聊天频道背景颜色
---@param _Channel int @聊天频道：1当前 2组队 3行会 4世界 5小喇叭 7私聊（暂无效果） 8全服 20系统（暂无效果）
---@param _r int @红色的颜色值，范围为0~255
---@param _g int @绿色的颜色值，范围为0~255
---@param _b int @蓝色的颜色值，范围为0~255
---@param _a int @颜色透明度，范围为0~255 0表示全透明，255表示不透明
function CL:InitChannelFillBackColor(_Channel, _r, _g, _b, _a)
end

---获取是否允许使用聊天表情
function CL:GetEnableUseChatFace()
end

---设置是否屏蔽特定的聊天窗口
---@param _Channel int @聊天频道：1当前 2组队 3行会 4世界 5小喇叭 7私聊（暂无效果） 8全服 20系统（暂无效果）
---@param _Open bool
function CL:SetChatChannelOpenClose(_Channel, _Open)
end

---设置技能“蛮力冲锋”动作的播放倍速
---@param Rate float 人物动作的播放倍速（以人物的跑步速率为基础参照值） `1`人物动作以人物的跑步速率进行播放,`1.5`人物动作以人物的跑步速率的,`1.5`倍进行播放（为默认值） 2人物动作以人物的跑步速率的2倍进行播放
function CL:SetRushActionRate(Rate)
end

---设置蛮力冲锋技能残影的生成效果
---@param config string 残影生成效果对应的字符串 此参数为字符串格式，值之间用英文逗号（“,”）隔开，格式为："alphaBegin,distance"。 具体说明如下： 1.字符串中的第1个值（alphaBegin）：残影生成时的透明度，范围为0-255，默认值为250； 2.字符串中的第2个值（distance）：残影播放的帧间距（即每隔几帧生成残影），范围为1-6，默认值为3。
function CL:SetRushTrailConfig(config)
end

---求两数的和（非负数
---@param _Data1 uint
---@param _Data2 uint
---@return uint
function CL:UIntAdd(_Data1, _Data2)
end

---获取颜色值
---@param _ColorStr string
---@return int @最终计算的十进制颜色值数字
function CL:GetColor(_ColorStr)
end

---获取指定类型的排行榜数据
---@param _type int @排行榜类型
---@param _Tag string @自定义标签用于区分不同作用的回调函数
---@param _CallBack string @获取成功后的回调函数名
---@return bool
function CL:GetRankList(_type, _Tag, _CallBack)
end

---获取英雄是否显示时装
---@param guid string @英雄GUID
---@return boolean @true：显示，fals：不显示
function CL:HeroGetShowFashionEx(guid)
end

---根据GUID获取物品的模板句柄
---@param _ItemGUID_Uint64Str string @物品的GUID
---@return int @物品的模板句柄
function CL:GetItemTemplateHandleByGUID(_ItemGUID_Uint64Str)
end

---设置物品框高亮图片
---@param _Handle int @物品框句柄
---@param _Info string? @指定物品框控件的描述
---@param _ImgId int @物品框高亮时显示的图片ID
function RDItemCtrlSetHighlightImageID(_Handle, _Info, _ImgId)
end

---根据ID获取物品的模板属性的属性值
---@param _ID int @ 物品的ID
---@param _PropType int @物品的模板属性
---@return bool
function CL:GetItemTemplatePropByID(_ID, _PropType)
end

---根据文件名打开Lua窗口
---@param _FileName string @要打开的Lua窗口对应的文件名（无需后缀名） 如需传递参数，在文件名后以#依次分割。
---@return bool
function GenForm(_FileName)
end

---设置是否显示时装
---@param _Show bool @`true` 显示时装,`fasle`不显示时装
function CL:ShowFashion(_Show)
end

---获取怪物模板属性
---@param _KeyName string @怪物是的索引名（KeyName）
---@param _PropertyType int @怪物模板属性类型
---@return bool @`true`:OK; `false`: No
---怪物模板属性类型
---1. 怪物名
---2. 怪物类型
---3. 小头像
---4. 怪物等级
---5. 怪物多重血条中单条的血量
---6. 怪物名字颜色
---7. 怪物最大血量
---8. 怪物模型
---9. 怪物重生时间（单位为毫秒（ms））
function CL:GetMonsterTemplateProperty(_KeyName, _PropertyType)
end

---设置表情使用上限
---@param _Count int 聊天表情最大数量
function CL:SetMaxFaceCount(_Count)
end

---设置是否允许使用聊天表情
---@param _UseChatFace bool @`true`表示允许使用，`fasle`表示禁止使用
function CL:SetEnableUseChatFace(_UseChatFace)
end

---设置指定频道是否显示文本
---@param _Channel int @频道 1当前 2组队 3行会 4世界 5小喇叭 7私聊 8全服 20系统
---@param _ShowText bool@ `true`表示显示, `false`：表示隐藏
function CL:SetShowChannelText(_Channel, _ShowText)
end

---获取制定频道是否显示文本
---@param _Channel int @频道 1当前 2组队 3行会 4世界 5小喇叭 7私聊 8全服 20系统
---@return bool  @`true`表示显示, `false`：表示隐藏
function CL:GetShowChannelText(_Channel)
end

---设置玩家角色自定义字符串变量
---@param _KeyName string @自定义变量的索引名
---@param _Data string@ 自定义变量的值
function CL:SetPlayerCustomDataString(_KeyName, _Data)
end

---添加自动释放技能链
---@param _SkillLinkID int @技能链ID
function CL:AddAttackAutoUseSkill(_SkillLinkID)
end

---保存玩家自定义变量
---此函数保存玩家自定义变量到本地文件。
---一般情况下，文件名为CustomSetting.xml，保存在游戏主目录\extra\Config中对用户的文件夹下。
function CL:SavePlayerCustomData()
end

---设置玩家角色自定义整型变量
---@param _KeyName string @自定义变量的索引名
---@param _Data int @ 自定义变量的值
function CL:SetPlayerCustomData(_KeyName, _Data)
end

---移除自动释放技能列表中的技能链
---@param _SkillLinkID int @技能链的ID
function CL:DelAttackAutoUseSkill(_SkillLinkID)
end

---获取玩家角色自定义字符串变量
---@param _KeyName string @自定义变量的索引名
---@return bool @`true` 执行成功，`false` 执行失败
--- 此函数返回操作成功或失败。如操作成功，获取的自定义变量存储在全局变量LuaRet中。
function CL:GetPlayerCustomDataString(_KeyName)
end

---获取玩家角色自定义整型变量
---@param _KeyName string @自定义变量的索引名
---@return bool @`true` 执行成功，`false` 执行失败
--- 此函数返回操作成功或失败。如操作成功，获取的自定义变量存储在全局变量LuaRet中。
function CL:GetPlayerCustomData(_KeyName)
end

---获取角色拥有的所有称号
---@return bool
---> 如操作成功，则获取的称号信息存储在全局变量LuaRet中。
--- - `i`为索引号。
--- - `LuaRet[i][1]`称号`ID`；
--- - `LuaRet[i][2]`称号名字；
--- - `LuaRet[i][3]`称号描述；
--- - `LuaRet[i][4]`是否加入未获得称号显示，`0`代表该称号不在角色未获取称号列表中显示，`1`代表该称号在角色未获取称号列表中显示。
function CL:GetMyTitleList()
end

---获取当前角色是否显示时装
---@param guid string @角色GUID
---@return bool @是否显示时装: true: yes, fasle:no
function CL:GetPlayerShowFashion(guid)
end

---获取当前是否显示时装
---@return bool @是否显示时装: true: yes, fasle:no
function CL:GetShowFashion()
end

---获取当前是否显示时装武器
---@return bool @是否显示时装: true: yes, fasle:no
function CL:GetShowWeapFashion()
end

---设置是否显示时装武器
---@param _Show bool@是否显示时装: true: yes, fasle:no
function CL:ShowWeapFashion(_Show)
end

---获取其他玩家角色基本属性
---@param _RoleGUID string@角色的GUID
---@param _PropertyType int@属性的类型
---@return bool @ true:执行成功
function CL:GetPlayerPropBase(_RoleGUID, _PropertyType)
end

---获取服务器传回的玩家角色自定义字符串变量
---@param _RoleGUID string @玩家角色的GUID
---@param _DataKey string @自定义变量的索引名
---@return string @自定义的变量
function CL:GetPlayerCustomStringData(_RoleGUID, _DataKey)
end

---获取Buff属性
---@param _BuffID int @Buff模板ID
---@param _PropType int @BUff的属性类型
---@return bool @ `true`:OK,`false`:No
function CL:GetBuffProp(_BuffID, _PropType)
end

---根据ID获取特效模板属性
---@param _ID int @特效ID
---@param _PropType int @物品的模板属性类型
---@return bool @ `true`:OK,`false`:No
function CL:GetMagicTemplatePropByID(_ID, _PropType)
end

---添加全局动作
---@param action string @JSON格式的动作配置
---@return bool @添加全局动作是否成功。
function CL:AddGlobalAction(action)
end

---打印字符串到日志
---@param _LogStr string @要打印的内容
---功能与dbg相近
function CL:Log(_LogStr)
end

---GBK转UTF8编码
---@param _GBKString string
---@return string
function CL:GBK2UTF8(_GBKString)
end

---将鼠标上的物品放下
---放下的位置不定
---@param _ItemGUIDataHandle int 物品的GUIData句柄
function CL:PutMouseGUIItemData(_ItemGUIDataHandle)
end

---获取文本的像素宽度
---@param _FontName string @字体名称（即FontSetting.xml文件中的FontUseName字段的值）
---@param _TextInfo string @文本字符串
---@return int@ 文本字符串的宽度
function CL:GetRichEditFontStrWidth(_FontName, _TextInfo)
end

---发送获取成就列表请求
function CL:GetGloryList()
end

---打开指定的游戏内窗口
---@param _FormDlgName string @窗口的名吃个
---@param _XPos int @ 窗口位置横坐标，-1 表示默认位置
---@param _YPos int @窗口位置纵坐标，-1 表示默认位置
function CL:OpenGameFormDlg(_FormDlgName, _XPos, _YPos)
end

---打开或关闭排行榜
function CL:OnRankWindow()
end

---获取游戏区服ID
---@return string @区服ID 失败：空字符串
function CL:GetGameServerID()
end

---获取当前选中角色的GUID
---@return string @若选中角色则返回角色的GUID 若没有选中角色则返回空字符串
function CL:GetCurSelectRoleGUID()
end

---获取目标玩家所有装备的GUIData句柄
function CL:GetPlayerTargetEquipData()
end

---向玩家发起交易请求
---@param _PlayerGUID string @玩家的GUID
function CL:DoTrade(_PlayerGUID)
end

---添加好友
---@param _PlayerName string @玩家角色的名字
function CL:LogicAddFriend(_PlayerName)
end

---获取所在查看装备的玩家角色GUID
---@return string @玩家角色的GUID
function CL:GetViewEquipTarPlayerGUID()
end

---与制定玩家私聊
---@param _PlayerName string @玩家角色的名字
function CL:LogicSendPrivateTalk(_PlayerName)
end

---设置技能图标映射
---@param _SrcImageID int@ 源图片资源的ID
---@param _DecImageID int @目标图片资源的ID
function CL:SetSkillImageIDMap(_SrcImageID, _DecImageID)
end

--- 获取技能栏指定位置的数据类型
---@param _Pos int @技能栏的位置，0代表第一个位置
---@return int @属性，如指定的位置有存在数据，则返回其类型。否则返回0
--- -  1物品
--- - 2技能
--- - 3英雄物品
function CL:SkillBarGetTypeByPos(_Pos)
end

---获取技能栏指定位置技能的Id
---@param _Pos int @技能栏的位置，0代表第一个位置
---@return uint @指定的位置存在数据且类型是技能，则返回该技能的ID，否则返回0。
function CL:SkillBarGetSkillIdByPos(_Pos)
end

--- 获取大地图面板中的NPC及跳转点名称
--- 获取的名称信息存储在全局变量LuaRet中。
--- i为序号
--- LuaRet[i]NPC或者跳转点的名称（string）。
function CL:GetJumpAndNPCStringList()
end

--- 自动寻路走向NPC或跳转点
---@param _SelString string @ NPC或跳转点名称。 在游戏中打开大地图面板，会显示当前场景地图中NPC和跳转点的名称。
function CL:NPCListBoxOnLButtonUp(_SelString)
end

---查找背包中指定位置的物品的GUID
---@param _ItemPos int @背包中物品的位置，从0开始
---@return string @ 执行成功则返回该位置物品的GUID 执行失败则返回空字符串（""）
function CL:PackageGetGUIDByPos(_ItemPos)
end

--- 设置单摇杆的可拖动半径
---@param _WalkDis int @走路范围，配置值需大于10，默认值为100
---@param _RockRadius int @最大范围（摇杆滑块最大的有效操控范围）
function CL:SetRockerParam(_WalkDis, _RockRadius)
end

---设置走路摇杆的默认透明度
---@param _Alpha int @透明度， 0 ~ 100
function CL:UpdateRockerWnd2Alpha(_Alpha)
end

---设置跑步摇杆的默认透明度
---@param _Alpha int @透明度， 0 ~ 100
function CL:UpdateRockerWndAlpha(_Alpha)
end

---获取组队成员GUID列表
---@return bool@ 此函数返回操作成功或失败。如操作成功，获取的信息存储在全局变量`LuaRet`中。 `LuaRet[i]`第`i`个成员的`GUID`。
function CL:GetTeamMemberGUIDList()
end

--- 主动处理组队请求 组队请求队列非空时，执行此接口会主动处理组队请求队列中的第一条，并弹出提示菜单。
function CL:OnDealWithTeamInviteReq()
end

---是否接受入队请求
---@param _SenderName string @申请入队角色的名字
---@param _accept bool @是否接受入队
---@return bool @`true` 执行成功 , `false`执行失败
function CL:AcceptApplyTeam(_SenderName, _accept)
end

---处理交易邀请
---@param _Guid string @ 对方角色的GUID
---@param _Accept int @是否接受交易请求 `1`:OK, `No`:false
function CL:AcceptP2pInvite(_Guid, _Accept)
end

--- 判断当前是否为WiFi连接状态
---@return bool @设备当前处于WIFI 状态则返回`true`否则返回`false`
function CL:IsWifi()
end

---获取网络信号强度
---@return int @ 网络信号强度 范围为0~5，强度依次增大。
function CL:GetNetSignalLevel()
end

---获取设备剩余电量
---@return int @ 设备电池的剩余电量，范围为0~100。
function CL:GetBatteryLevel()
end

---获取电池充钱状态
---@return bool @ true正在充电状态 false非充电状态
function CL:BatteryIsCharging()
end

---开始录音
---@param callback string @执行结束录音`StopRecord`函数后的回调函数
---@return bool @成功开始录音返回true，否则返回false。
--- - 程序会传递以下参数作为回调函数的入参，由脚本进行后续的处理。
--- - 是否成功(bool)；文件名(string)；持续时间(int)
function CL:StartRecord(callback)
end

---判断是否在播放录音中
---@return bool @`true` 处于播放录音状态,`false` 未处于播放录音状态
function CL:IsPlayRecording()
end

---停止播放录音
---@return bool @操作执行成功返回`true` ，否则返回`false`
function CL:StopPlayRecord()
end

---播放录音
---@param filename string @录音文件名从接口StartRecord执行后获取。
---@param callback string @
--- - 要执行的回调函数名。
--- - 程序同时会传递以下参数，保存于全局变量LuaParam中，由脚本进行后续的处理。
--- - 播放状态(int)：0表示开始播放；1表示准备下载；2表示下载结束。
--- - 播放结果(bool)：true表示播放成功；false表示播放失败。
---@return bool @`true` 执行成功,`false`执行失败
function CL:PlayRecord(filename, callback)
end

---角色自动寻路
---@param MapName string @地图的索引名
---@param X int @位置的横坐标
---@param Y int @未知的纵坐标
function CL:AutoRunByPos(MapName, X, Y)
end

---获取设备信息
--- 仅限手游
---@return string @根据设备类型肯机会不同信息：
--- - Android设备：手机厂商、手机名称、手机型号
--- - iOS设备：iOS
--- - Windows设备：Win32
function CL:GetDeviceInfo()
end

---获取设备类型
---全设备
---@return int @设备类型：
--- - 0运行Windows的设备
--- - 1运行Android的设备
--- - 2运行iOS的设备
function CL:GetHardWareType()
end

---移动物品到指定位置
---@param _ItemGUID string
---@param _Site int @物品位置
function CL:PlayerMoveItem(_ItemGUID, _Site)
end

---设置鼠标上的物品
---@param _ItemGUIDataHandle int @物品的GUIData句柄
function CL:SetMouseGUIItemData(_ItemGUIDataHandle)
end

---复制文本到剪切板
---@param _TextString string @文本内容
function CL:CopyTextToClipBoard(_TextString)
end

---查看玩家资料
--- - 此函数查看玩家资料，查询结果会触发`LUA_EVENT_OTHERROLEDATA`类型的脚本事件。
--- - 当被查询的角色不在线时，调用接口无效果。
---@param _PlayerName string @玩家角色的名字
function CL:LogicLookInfo(_PlayerName)
end

---获取玩家自身32属性
---@param _PropertyType int @属性类型
---@return bool @`true`执行成功，`false`执行失败
function CL:GetPlayerSelfProperty32(_PropertyType)
end

---设置物品设置中指定物品的勾选状态
---@param template_id int @物品的ID
---@param show_name bool @显示名称选项是否勾选
---@param manual_pickup bool @ 手动拾取选项是否勾选
---@param auto_pickup bool @挂机拾取选项是否勾选
function CL:SetItemClickInfo(template_id, show_name, manual_pickup, auto_pickup)
end

---获取行会特定类型信息
---@param _reqType int @类型 1行会公告 2行会消息 4行会封号 8行会成员 16敌对行会 32联盟行会 64入会申请列表 128行会基本信息 256可以加入的行会 512在线成员 2048所有成员
---@param _Tag string @自定义标签 用于区分不同作用的回调函数
---@param _CallBack string @获取信息成功后执行的回调函数名
---@return bool @`true` 执行失败 ，`fasle`执行失败
--- 此函数返回操作成功或失败。如操作成功，获取的列表信息存储在全局变量LuaParam中。
---LuaParam详细信息在：[ 获取行会特定类型信息 ](https://tool.173uu.com/#/scriptdocument/0?name=g2413&jump=&t=1719664046524)
function CL:FamilyInfoRequest(_reqType, _Tag, _CallBack)
end

---显示或隐藏聊天频道
---@param _CheckNum int @聊天频道
---@param flg bool @制定频道是否隐藏
function CL:OnChatWindowShowChange(_CheckNum, flg)
end

---添加角色的聊天黑名单
---@param _Name string @角色的名称
function CL:AddChatBlock(_Name)
end

---获取所有物品的模板信息
---@return bool @ 执行成功返回true，执行失败则返回false。
--- - 此函数返回操作成功或失败。如操作成功，获取的物品模板信息存储在全局变量LuaRet中。
--- - `i`为索引号，列表按照物品编号升序排序。
--- - `LuaRet[i][1]`物品编号；
--- - `LuaRet[i][2]`物品索引名称；
--- - `LuaRet[i][3]`物品名称。
function CL:GetItemTemplates()
end

---获取游戏安装路径
---@return string @安装目录路径
function CL:GetCurWorkPath()
end

---获取物品自定义整形变量
---@param _ItemEntityHandle int @物品的实体句柄
---@param _ItemCustomKey string @自定义变量的索引名
---@return int @自定义变量的值
function CL:GetItemEntityCustomVarInt(_ItemEntityHandle, _ItemCustomKey)
end

---根据GUID获取物品的实体 句柄
---@param _ItemGUID_Uint64Str string @物品的GUID
---@return int @物品的实体句柄
function CL:GetItemEntityHandleByGUID(_ItemGUID_Uint64Str)
end

---获取当前地图逻辑格宽度
---@return int @逻辑格宽度，单位为像素(px)
function CL:GetLogicGridWidth()
end

---获取当前地图逻辑格高度
---@return int @逻辑格高度，单位为像素(px)
function CL:GetLogicGridHeight()
end

---在地图指定位置添加特效
---@param _MagicID int @特效ID
---@param _X int @特效在地图上的X坐标
---@param _Y int @特效在地图上的Y坐标
---@param _AniSpeed int @特效播放一阵的时间间隔，单位为毫秒，默认值为0（即使用Magic特效的默认播放播放一阵的时间间隔）
---@param _Life int @特效播放的时间，单位为毫秒（ms），默认值为0（即使用Magic特效的默认播放时间）
---@return int @添加特效的实体ID
function CL:AddMagicToPoint(_MagicID, _X, _Y, _AniSpeed, _Life)
end

---根据实体ID 删除特效
---@param _MagicObjID int @特效的实体ID
function CL:DelMagicByObjID(_MagicObjID)
end

---删除地图上的特效
---@param _MagicID int @特效ID
---@param _X int @地图上的坐标
---@param _Y int @地图上的Y坐标
function CL:DelMagicFromPoint(_MagicID, _X, _Y)
end

---获取怪物实体的属性
---@param monster_guid string @怪物 GUID(客户端)
---@return bool @操作结果，获取属性数据是否成功
--- - 此函数返回操作成功或失败。如操作成功，获取的属性列表信息存储在全局变量`LuaRet`中；
--- - 其中怪物名字在PC端其返回GBK编码, 而移动端则返回的是UTF8编码。
--- `LuaRet[1]` 怪物 GUID
--- `LuaRet[2]` 怪物名称
--- `LuaRet[3]` 怪物位置的X坐标，单位为像素；
--- `LuaRet[4]` 怪物位置的Y坐标，单位为像素；
--- `LuaRet[5]` 怪物等级；
--- `LuaRet[6]` 怪物索引名称；
function CL:GetMonsterEntityPropByGUID(monster_guid)
end

---为角色添加特效
---@param _MagicID int @特效ID
---@param _RoleGUID string @角色的GUID
---@param _AniSpeed int @分客户端
--- - 2D客户端：特效播放一帧的时间间隔
---     - 单位为毫秒（ms），默认值为0（即使用Magic特效的默认播放播放一帧的时间间隔）
--- - 3D客户端：特效播放的速度
---     - 0特效的原始播放速度（为默认值）
---     - 将要设置的倍数乘以1000即为设置值
---@param _Life int @特效播放时间 ,单位为毫秒（ms），默认值为0（即使用Magic特效的默认播放播放一帧的时间间隔）
function CL:AddMagicToRole(_MagicID, _RoleGUID, _AniSpeed, _Life)
end

---获取当前客户端的类型
---@return 0|1|2|3|4|5 @
--- - 客户端类型
---     - 0端游
---     - 1页游
---     - 2手游
---     - 3H5
---     - 43D端游
---     - 53D手游
function CL:GetClientType() end

---强制加载Lua脚本到游戏
---加载完成后，将自动运行脚本
---@param _FileName string @文件名
---@return bool @`true` 执行成功 ,`false`执行失败
function CL:LoadLuaFileForce(_FileName) end

---加载Lua脚本到游戏
---进加载脚本文件，不会自动运行
---@param _FileName string @文件名
---@return bool @`true` 执行运行, `false`执行失败
function CL:LoadLuaFile(_FileName) end

---重新加载所有Lua文件
---@return bool @`true` 执行运行, `false`执行失败
function CL:ReloadAllLuaFiles() end

---添加物品系统消息
--- 适用于2D手游和端游
---@param _ActionName string @消息名称
---@param _ActionColor uint @消息名称的颜色
---@param _MsgName string @消息内容
---@param _MsgColor uint @消息内容的颜色
---@param _NumberName string @消息文本
---@param _NumberColor uint @消息文本的颜色
function CL:AddItemSystemMessage(_ActionName, _ActionColor, _MsgName, _MsgColor, _NumberName, _NumberColor) end

---添加物品系统消息
---2D端游不适用，建议使用：`AddItemSystemMessage`
---@param _ActionName string @消息名称
---@param _ActionColor uint @消息名称的颜色
---@param _MsgName string @消息内容
---@param _MsgColor uint @消息内容的颜色
---@param _NumberName string @消息文本
---@param _NumberColor uint @消息文本的颜色
function CL:AddSystemMessage(_ActionName, _ActionColor, _MsgName, _MsgColor, _NumberName, _NumberColor) end

---根据ID获取技能的模板属性
---@param _ID int @技能的ID
---@param _PropType int @技能的模板属性类型
---@return bool @`true` 执行运行, `false`执行失败
---此函数返回操作成功或失败。如操作成功，则获取的属性存储在全局变量`LuaRet`中。
function CL:GetSkillTemplatePropByID(_ID, _PropType) end

---获取所有技能的熟练度
---@return bool @`true` 执行运行, `false`执行失败
---此函数返回操作成功或失败。如操作成功，则获取的技能熟练度存储在全局变量LuaRet中。
---`LuaRet[i]` ,`i`为技能编号（技能`ID`），值为对应技能的熟练度。
function CL:GetPlayerSelfSkillList() end

---根据GUIData属性类型设置物品GUIData属性值
---@param _ItemGUIDataHandleID int @物品的GUIData句柄
---@param _PropType int @GUIData属性类型
---@return bool @`true` 执行运行, `false`执行失败
function CL:SetItemGUIDataPropByType(_ItemGUIDataHandleID, _PropType) end

---根据试题 句柄获取物品的属性值
---@param _ItemEntityHandleID int @物品的实体句柄
---@param _PropType int @物品的无形类型（实体属性或模板属性）
---@return bool @`true` 获取成功 ,`false` 获取失败
---此函数返回操作成功或失败。如操作成功，则获取的属性值存储在LuaRet中。
function CL:GetItemEntityPropByHandle(_ItemEntityHandleID, _PropType)
end

---获取指定字体的 字符串宽度
---@param _FontName string @字体名称（即FontSetting.xml文件中的FontUseName字段的值）
---@param _TextInfo string @指定的字符串
---@return int @字符串的宽度，单位为像素(px)
function CL:GetFontStrWidth(_FontName, _TextInfo)
end

---获取已预存技能的列表
---获取的 列表信息储存在全局变量LuaRet中
function CL:GetPrestoredSkillList()
end

---获取好友列表
---@param _Type int @好友类型：`0` 好友,`1`附近玩家,`2`仇人
--- 获取的列表信息储存在全局变量`LuaRet`中
--- - `i` 好友的序号
---     - `LuaRet[i][1]`:玩家角色的名字
---     - `LuaRet[i][2]`:玩家是否在线(`1`表示在线，`0`表示离线)
---     - `LuaRet[i][3]`:亲密度
--- - 当获取的**好友类型**为`0` (即好友)时，亲密度 >= `0`
--- - 当获取的**好友类型**为`1`（即附近玩家）时，亲密度恒等于`0`；
--- - 当获取的**好友类型**为`2`（即仇人）时，亲密度恒小于`0`。
function CL:GetFriendList(_Type)
end

---删除好友
---@param _PlayerName string @玩家角色的名字
function CL:LogicDelFriend(_PlayerName)
end

---删除所有好友
--- - 仅适用于2d端游
function CL:LogicDelAllFriend()
end

---添加玩家角色到黑名单（仇人）
---@param _PlayerName string @玩家角色的名字
function CL:LogicAddToBlackList(_PlayerName)
end

---播放声音
---@param _SoundName string @声音资源包中的中文路径
---@param _Type int @声音类型
function CL:Play2DSound(_SoundName, _Type)
end

---打开邮件
---@param _Guid string @邮件的GUID
function CL:OpenMail(_Guid)
end

---获取行会信息列表
---@param startIndex int 起始索引
---@param count int @获取行会数量
---@param _Tag string @自定义标签
---@param _CallBack string @获取信息成功后执行的 回调函数名
function CL:GetFamilyList(startIndex, count, _Tag, _CallBack)
end

---UTF82GBK
---2D手游专用
---@param _UTF8String string @UTF8编码的字符串
---@return string @GBK编码的字符串
function CL:UTF82GBK(_UTF8String)
end

---发送加入行会请求
---@param _Guid string @行会的GUID
---@return bool @`true` 执行成功，`false` 执行失败
function CL:FamilyJoinRequest(_Guid)
end

--- 设置游戏基本设置
--- > 与ChangeBasicSetting接口不同，此接口会将设置变更写入到文件（GameBasicSetting.xml）进行保存。
---@param _SettingIndex int @
--- - 0-99代表基本设置中的字段定义中对应的索引值。
--- - 101代表扩展设置中字段名为基本设置且索引值为0的选项，即是否屏蔽自身翅膀的展示。
---@param _Check bool @`true`表示勾选（生效），`false`表示不勾选（取消）
function CL:SetBasicSetting(_SettingIndex, _Check)
end

---改变游戏基本设置
--- > 与SetBasicSetting接口不同，此接口仅在游戏运行时改变设置项，不会将变更写入到文件进行保存。
---@param id int @
--- - 0-99代表基本设置中的字段定义中对应的索引值。
--- - 101代表扩展设置中字段名为基本设置且索引值为0的选项，即是否屏蔽自身翅膀的展示。
---@param val bool  @`true`表示勾选（生效），`false`表示不勾选（取消）
function CL:ChangeBasicSetting(id, val)
end

---设置玩家角色隐藏标志
--- > 设置不会隐藏任何野怪。
---@param _Flag
---| `0` 表示取消设置。
---| `1` 表示只隐藏其他玩家角色而不隐藏其宠物。
---| `2` 表示只隐藏其他玩家角色的宠物而不隐藏玩家角色自身。
---| `3` 表示同时隐藏玩家角色和宠物。
function CL:SetHideRoleFlag(_Flag)
end

---设置游戏保护设置数据
---@param id
---| `2003` # 延迟时间数据
---| `2004` # HP设置数据
---| `2005` # HP按百分比设置数据
---| `2006` # 复选框是否选中
---| `2007` # 下拉框中当前选中项目
---@param index int @数组索引值范围0~9，
---@param _String string @设置值
---@return bool @`true` 执行成功 ，`false` 执行失败
function CL:SetProtectIndex(id, index, _String)
end

---@class ProtectArr2002
---@field [1] int[]
---@field [2] int[]
---@field [3] int[]
---@field [4] int[]
---@field [5] int[]
---@field [6] int[]
---@field [7] int[]
---@field [8] int[]
---@field [9] int[]
---@field [10] int[]

---获取游戏保护设置数据
---@param id
--- | `2002` # 下拉框中物品的模板ID数据
--- | `2003` # 延迟时间数据
--- | `2004` # HP设置数据
--- | `2005` # HP按百分比设置数据
--- | `2006` # 复选框是否选中数据
--- | `2007` # 下拉框中当前选中项目的索引号
---@return bool #
--- - `true`获取成功，`false`获取失败，获取的属性存储在全局变量`LuaRet`中。
--- - `LuaRet` 的类型：`ProtectArr2002` ..
function CL:GetProtectArr(id)
end

---设置是否使用新的 点击地面行走方式
---仅限手游适用
---@param flag bool @是否使用新的点击地面行走方式
---此接口的效果会受到全局变量`ClickGroundCanMove`的影响，如果全局变量`ClickGroundCanMove`设置为`false`，则无法点击地面移动。
---两种点击地面行走方式的区别：
--- - 新点击地面行走方式：
---     - （1）点击1次朝指向方向走路移动1格，持续按压屏幕朝向按压方向持续行走，按压过程中可通过拖动按压位置改变移动方向；
---     - （2）若目标点为玩家或者怪物，玩家到指定位置后不会对该目标进行攻击。
--- - 原点击地面行走方式：
---     - （1）点击地面后自动寻路到所点击坐标，持续按压屏幕无效果；
---     - （2）若目标点为玩家或者怪物，玩家自动寻路到指定位置后会直接对该目标进行攻击。
function CL:SetPressWalk(flag)
end

---设置选中某个玩家角色
---@param _PlayerName string @ 玩家角色名称
---@return bool @`true` 执行成功 ，`false` 执行失败
function CL:SetSelectPlayer(_PlayerName)
end

---取消已选中的对象
function CL:CancelCurSelecet()
end

---获取跨服信息
function CL:GetJumpServerList()
end

---获取当前区服名称
---@return string # 获取成功则返回玩家当前所在的区服名称 获取失败则返回空字串（`""`）
function CL:GetCurServerName() end

---获取当前玩家角色账号ID
---@return string # 当前玩家角色的账号ID
function CL:GetRoleLoginUserID() end

--- 转换时间戳为指定格式文本
---@param _TimeStr string # 时间戳。
---@param _Format string # 格式，例如："%Y-%m-%d"
---@return string # 格式化的时间字符串。
function CL:GetTimeStrWithFormat(_TimeStr, _Format) end

---初始化聊天频道文字颜色
---@param _Channel int @聊天频道：1当前 2组队 3行会 4世界 5小喇叭 7私聊（暂无效果） 8全服 20系统（暂无效果）
---@param _r int @红色的颜色值，范围为0~255
---@param _g int @绿色的颜色值，范围为0~255
---@param _b int @蓝色的颜色值，范围为0~255
---@param _a int @颜色透明度，范围为0~255 0表示全透明，255表示不透明
function CL:InitChannelTextGrowColor(_Channel, _r, _g, _b, _a) end

--- 根据物品索引名获取背包中物品的数量
---@param _KeyName string # 物品的索引名
---@return int #  物品数量
function CL:GetPackageItemCountByKeyName(_KeyName)
end

---获取服务器传回的玩家角色自定义整型变量
---@param _RoleGUID string #玩家角色的GUID
---@param _DataKey string #自定义变量的索引名
---@return int # 自定义的变量
function CL:GetPlayerCustomIntData(_RoleGUID, _DataKey) end

---设置剪切板文本内容
---@param _Text string # 文本内容
function CL:SetPasteboardText(_Text) end

--- 获取当前地图的关键字索引
---@return string # 地图的关键字索引（KeyName）
function CL:GetCurMapKeyName() end

--- 获取追踪任务数据
---@param quest_type int
---@return int #获取的任务数量
---> 获取的任务数据储存在全局变量`LuaRet`中
---> `i`为索引号
--- - `LuaRet[i][1]` 任务id
--- - `LuaRet[i][2]` 任务名
--- - `LuaRet[i][3]` 任务类型，0代表全部，1代表主线，2代表支线，3代表其他；
--- - `LuaRet[i][4]` 进行中的追踪文本；
--- - `LuaRet[i][5]` 任务完成时的追踪文本；
function CL:GetQuestTraceDataByType(quest_type) end

--- 通过Buff索引名获取Buff信息
---@param key_name string # BUFF索引名
---@param prop_type int # BUFF属性类型
---@return bool
function CL:GetBuffPropByKeyName(key_name, prop_type) end

---获取其他玩家角色32位属性
---@param _RoleGUID string
---@param _PropertyType int
---@return bool # 执行结果
function CL:GetPlayerProperty32(_RoleGUID, _PropertyType) end

--- 求两个字符串代表的数字的积
---@param _Left string # 左边字符串
---@param _Right string # 右边字符串
---@return string # 计算结果（为字符串 格式）
function CL:Multiply(_Left, _Right) end

--- 求两个字符串代表的数字的商
---@param _Left string # 左边字符串
---@param _Right string # 右边字符串
---@return string # 计算结果（为字符串格式）
---> 如果参数`_Right` 字符串为`0`,则返回计算结果为`0`
function CL:Divided(_Left, _Right) end

--- 设置角色额外伤害的图片
---@param _Idx int # `0` - `9` 伤害的索引值
---@param _ImageID uint # 伤害图片资源 ID
function CL:SetUserRoleHurtImage(_Idx, _ImageID) end

--- 设置角色额外伤害的图片
---@param _Idx int # `0` - `9` 伤害的索引值
---@param _ImageID uint # 伤害图片资源 ID
function CL:SetUserRoleHurtImage2(_Idx, _ImageID) end

---改变攻击模式
---@param _AttacMod
---| `0` 全体模式
---| `1` 和平模式
---| `2` 组队模式
---| `3` 行会模式
---| `4` PK模式
---| `5` 联盟模式
---| `6` 阵营模式
function CL:ChangeAttacMod(_AttacMod) end

--- 此函数作用为打开摆摊面板。
function CL:ShowStallGUI() end

--- 打开神兔宝库面板
function CL:OnCBGDealerWnd() end

--- 设置技能栏指定位置的数据
---@param _Pos int # 技能栏的位置，0代表第一个位置
---@param _Type  # 数据的类型。
---| `1` 物品
---| `2` 技能
---@param _TemplateID int
function CL:SkillBarSetDataByPos(_Pos, _Type, _TemplateID) end

--- 以指定的方式复活角色
---@param _ReliveType
---| `1` 原地复活
---| `2` 回城复活
---| `2` 副本复活
---@return boolean
function CL:DoPlayerReliveByType(_ReliveType) end

--- 获取当前地图的角色复活方式
---@return
---| `1` # 回到附近城市
---| `2` # 回到附近城市或原地复活
---| `3` # 回到副本入口
---| `4` # 回到副本入口或原地复活
function CL:GetMapOption() end

---设置当前使用的字体
---@param _FontName string # 字体名称
function CL:SetCurFont(_FontName) end

---获取杀死自己玩家角色名
---@return string # 玩家角色名称
function CL:GetKillerName() end

---在屏幕上绘制图片
---@param _XPos int
---@param _YPos int
---@param _ImageID int
function CL:DrawImage(_XPos, _YPos, _ImageID) end

--- 获取当前玩家角色的状态
---@return
---| `0` # 未登录
---| `1` # 选角色
---| `2` # 游戏中
---| `3` # 死亡
function CL:GetPlayerStatus() end

--- 设置角色额外伤害的飘字起始图片资源ID和间隔
--- > only 2d端游
---@param _Idx
---| `0` # 15 other_attach_num         自身或被击角色 额外伤害飘字
---| `1` # 16 other_attach_num1 -Se:4  自身或被击角色 额外伤害飘字
---| `2` # 17 other_attach_num2 -Se:5  自身或被击角色 额外伤害飘字
---| `3` # 18 other_attach_num3 -Se:6  自身或被击角色 额外伤害飘字
---| `4` # 19 other_attach_num4 -Se:7  自身或被击角色 额外伤害飘字
---| `5` # 20 other_attach_num5 -Se:8  自身或被击角色 额外伤害飘字
---| `6` # 21 other_attach_num6 -Se:9  自身或被击角色 额外伤害飘字
---| `7` # 22 other_attach_num7 -Se:10 自身或被击角色 额外伤害飘字
---| `8` # 23 other_attach_num8 -Se:11 自身或被击角色 额外伤害飘字
---| `9` # 24 other_attach_num9 -Se:12 自身或被击角色 额外伤害飘字
---@param _ImageID uint
---@param _Interval int # 图片资源间隔
function CL:SetUserRoleHurtNumImage(_Idx, _ImageID, _Interval) end

--- 获取任务奖励物品具体信息
---@param _QuestID int # 任务ID
---@return bool # LuaRet 类型：
--- 列表信息储存在全局变量 `LuaRet` 中：
--- - `i` 为奖励物品的序号；
--- - `LuaRet[i][1]` 奖励物品的模板 `ID`；
--- - `LuaRet[i][2]` 奖励物品的数量；
--- - `LuaRet[i][3]` 绑定的类型:
---     - `0` 代表**非绑定**
---     - `1` 代表**绑定**，
---     - `2` 代表**绑定或不绑定**都可以。
function CL:GetQuestAwardByID(_QuestID) end

--- 设置多功能编辑框超链接文字的颜色
---@param _Flag # 设置类型
---| 1 选中链接的颜色（即高亮的颜色）
---| 2 可选择字符串链接的颜色（即SELECT标签中的文字）
---| 3 标题链接的颜色（即TITLE标签中的文字）
---| 4 名字链接的颜色（即NAMELINK标签中的文字）
---| 5 普通链接的颜色（即LINK标签中的文字）
---| 6 NPC链接的颜色（即NPCLINK标签中的文字）
---| 7 物品链接的颜色（即ITEMLINK标签中的文字）
---| 8 UI链接的颜色（即UILINK标签中的文字）
---| 9 关闭链接的颜色（即CLOSE标签中的文字）
---@param _ColorStr string #颜色字符串  示例： `#FFFFE0`
function CL:SetSystemColor(_Flag, _ColorStr) end

--- 设置是否锁定物品
---@param _ItemGUID string
---@param _Lock bool
function CL:CustomLockItem(_ItemGUID, _Lock) end

--- 通过称号ID获取称号信息
---@param id int
---@return bool # 获取称号信息是否成功
---  此函数返回操作成功或失败。如操作成功，获取的属性列表信息存储在全局变量`LuaRet`中；</br>
--- 其中名称, 描述, 来源在PC端其返回`GBK`编码，而移动端则返回的是`UTF8`编码，</br>这点和`CL:GetTitleList`和`CL:GetMyTitleList`不同。</br>
--- - `LuaRet[1]` 称号ID；
--- - `LuaRet[2]` 名称；
--- - `LuaRet[3]` 描述；
--- - `LuaRet[4]` 是否加入未获得称号显示；
--- - `LuaRet[5]` 来源；
--- - `LuaRet[6]` Buff ID；
function CL:GetTitleTemplatePropByID(id) end

--- 根据套装ID获取装备ID列表
---@param _ID int
---@return bool #  此函数返回操作成功或失败。如操作成功，则获取的信息存储在全局变量LuaRet中。 LuaRet[i] 第i件装备的ID。
function CL:GetSuitItemListByID(_ID) end

--- 自动寻路到达NPC所在位置
---@param _Name string
---@param _QuestID int
function CL:AutoFindPathByNPCKeyName(_Name, _QuestID) end

---设置聊天窗口是否自动语音聊天
---@param flg bool @
---@param index int @频道
function CL:SetChatWindowAutoVoiceChat(flg, index) end

---显示私聊页面
---@param _HandleID int @私聊按钮的句柄
---@param _Name string @私聊的玩家角色名
function CL:ChatWindowShowPrivatePage(_HandleID, _Name) end

---收取邮件的附件
---@param _Guid string @邮件的GUID
---@param _Index int @附件索引：
--- - `1`: 金币
--- - `2`：元宝
--- - `3~7`：物品@最多允许添加`5`个物品
--- - `8`：积分
function CL:AttachmentMail(_Guid, _Index) end

---获取字体高度
---@param _FontName string @字体名称
---@return int @指定字体的高度
function CL:GetFontStrHeight(_FontName) end

--- 获取物品自定义字符串变量
---@param _ItemEntityHandle int  #物品实体句柄
---@param _ItemCustomKey string 自定义变量索引名
---@return string
function CL:GetItemEntityCustomVarStr(_ItemEntityHandle, _ItemCustomKey) end

--- 设置物品的掉落特效（扩展）
---@param _Idx int
---@param _ImageID uint
---@param _R int
---@param _G int
---@param _B int
---@param _A int
function CL:SetItemEffectEx(_Idx, _ImageID, _R, _G, _B, _A) end

--- 设置指定光柱特效的缩放值
---@param image_id uint
---@param scale_x int # 10000
---@param scale_y int
function CL:SetBeamEffectScaleByImageID(image_id, scale_x, scale_y) end

--- 设置物品的掉落特效
---@param _Idx int
---@param _ImageID uint
--- -  2D：特效的图片资源ID
--- -  3D：特效ID
---@param _R int
---@param _G int
---@param _B int
---@param _A int
function CL:SetItemEffect(_Idx, _ImageID, _R, _G, _B, _A) end

--- 求两数的和
---@param _Data1 int
---@param _Data2 int
---@return int #计算结果
function CL:Add(_Data1, _Data2) end

--- 求两数的商
---@param _Data1 int
---@param _Data2 int
---@return int
function CL:Div(_Data1, _Data2) end

--- 获取当前时间的TICK值
---@return int @ 当前时间的TICK值（即从操作系统启动开始所经过的毫秒数）
function CL:GetCurTick() end

--- 获取组队成员（含自身）的属性
---@param _RoleGUID string # 玩家角色的GUID
---@param _PropertyType int # 属性类型
function CL:GetTeamPropByPlayerGUIDAll(_RoleGUID, _PropertyType) end

--- 设置伤害飘字
---@param _RoleGUID string
---@param _AttackValue int
---@param _Type int
---@param _Dir int
function CL:SetRoleHurtNum(_RoleGUID, _AttackValue, _Type, _Dir) end

--- 获取当前运行的定时器ID
---@return int
function CL:TaskGetCurrentTaskID() end

--- 删除定时器自定义参数
---@param _ID uint
---@param _Key string
function CL:TaskDelParam(_ID, _Key) end

--- 获取定时器的回调总次数
---@param _ID int
---@return uint
function CL:TaskGetCount(_ID) end

--- 获取定时器回调时间间隔
---@param _ID int
---@return uint
function CL:TaskGetElapse(_ID) end

--- 获取定时器自定义参数
---@param _ID int
---@param _Key string
---@return string
function CL:TaskGetParam(_ID, _Key) end

--- 修改定时器回调总次数
---@param _ID uint
---@param _Count ulong
---@return bool
function CL:TaskSetCount(_ID, _Count) end

--- 修改定时器回调时间间隔
---@param _ID ulong
---@param _Elapse ulong
---@return bool
function CL:TaskSetElapse(_ID, _Elapse) end

--- 添加定时器自定义参数
---@param _ID ulong
---@param _Key string
---@param _Value string
---@return bool
function CL:TaskSetParam(_ID, _Key, _Value) end

--- 修改定时器的回调函数
---@param _ID ulong
---@param _Script string
---@return bool
function CL:TaskSetScript(_ID, _Script) end

---DelDelayTask
---@param _ID int
function CL:DelDelayTask(_ID) end

--- 根据实体ID获取特效实体属性
---@param _MagicObjID int
---@param _PropType int
---@return bool
function CL:GetMagicEntityPropByObjID(_MagicObjID, _PropType) end

--- 删除邮件
---@param _Guid string #邮件的GUID
function CL:DeleteMail(_Guid) end

--- 根据地图的索引名获取地图名称
---@param _MapKeyName string
---@return string
function CL:GetMapNameByKeyName(_MapKeyName) end

--- 设置技能栏中指定技能的快捷键
---@param _Index int #技能栏索引位置
---@param _KeyStr string # 技能栏快捷键
function CL:SetSkillHotKeyMap(_Index, _KeyStr) end

--- 获取鼠标在大地图上的逻辑格坐标位置 </br>
---  获取的坐标位置存储在LuaRet中。
--- - LuaRet[1]横坐标（X）；
--- - LuaRet[2]纵坐标（Y）。
--- - 如果x，y的值为0，表示获取失败。
function CL:GetCurMouseGridPosInBigMap() end

--- 复活角色
function CL:DoPlayerRelive() end

--- 获取BUFF剩余持续时间
---@param _StrRole string
---@param _BuffID int
---@return int # BUFF的剩余时间，单位位秒（s
function CL:GetBuffLeftTime(_StrRole, _BuffID) end

--- 打开或关闭充值窗口
function CL:OnPaymentWindow() end

--- 打开或关闭VIP窗口
function CL:OnVIPWindow() end

--- 将玩家角色踢出队伍
---@param _TargetName string
---@return bool #
function CL:KickOutOfTeam(_TargetName) end

---LeaveTeam
---此接口会向服务器发送离开队伍消息，服务器返回消息后会触发`LUA_EVENT_ONLEAVETEAM`类型的脚本事件。
---@return bool # 执行结果
function CL:LeaveTeam() end

--- 获取角色自身装备的句柄列表
---@return bool
function CL:GetEquimentItemDataList() end

--- 设置伤害图片和飘字的偏移量
---@param _HurtType int # 伤害类型
---@param _PictureOffsetX int # 伤害图片相对于起始位置的X偏移
--- - 正数: 向右偏移
--- - 负数: 向左偏移
---@param _PictureOffsetY int #伤害图片相对于起始位置的Y偏移
--- - 手游：正数向上偏移 负数向下偏移
--- - 端游：正数向下偏移 负数向上偏移
---@param _HurtNumX int # 伤害飘字相对于起始位置的X偏移
--- - 正数: 向右偏移
--- - 负数: 向左偏移
---@param _HurtNumY int # 伤害飘字相对于起始位置的Y偏移
--- - 手游：正数向上偏移 负数向下偏移
--- - 端游：正数向下偏移 负数向上偏移
function CL:SetHurtPictureNumOffset(_HurtType, _PictureOffsetX, _PictureOffsetY, _HurtNumX, _HurtNumY) end

--- 播放声音文件
---@param _FileName string # 文件名
---@param _Url string # 声音文件的下载地址
---@param _Elapse uint # 延迟播放时间
function CL:PlaySoundEx(_FileName, _Url, _Elapse) end

--- 打开帮助面板
--- > 此接口功能与外框“帮助”按钮和小地图“?”按钮作用一样。
function CL:OnShowHelp() end

--- 注册快捷键
---@param _HotKeyStr string
---@param _Name string
---@param _LuaFuncName string
function CL:HotKeyRegister(_HotKeyStr, _Name, _LuaFuncName) end

--- 删除快捷键
---@param _HotKeyStr string # 快捷键名称
function CL:HotKeyDelete(_HotKeyStr) end

--- 获取技能栏指定位置物品的ID
---@param _Pos int # 技能栏的位置。
--- - 0代表第一个位置，以此类推。
---@return uint
--- - 手游返回规则：
---     - 指定的位置存在数据且类型是物品，则返回该物品的ID，否则返回0。
--- - 端游返回规则：
---     - 指定的位置存在数据，则返回该物品或技能的ID，否则返回0。
function CL:SkillBarGetItemIdByPos(_Pos) end

--- 清除技能栏中绑定的技能或道具
---@param _Pos int # 技能栏位置 `0`代表第一个位置，以此类推。
---@return bool# 清除结果
function CL:SkillBarClearDataByPos(_Pos) end

--- 创建模型容器
---@param _ParentHandleID long # 浮空舰的句柄
---@param _pContainerID string # 模型容器的名称
---@param _PosX int # 创建位置的横坐标
---@param _PosY int #创建位置的纵坐标
---@param _WeapMirror bool #武器是否启用镜像
---@return long #
function CL:AvatarContainerCreate(_ParentHandleID, _pContainerID, _PosX, _PosY, _WeapMirror) end

--- 设定模型容器的类型和道具
---@param _HandleID int
---@param _AvatarType
---| `0` #身体
---| `1` #武器
---| `2` #翅膀
---| `3` #头发
---| `4` #盾牌
---@param _ItemID int # 道具的模板id
function CL:AvatarContainerSetData(_HandleID, _AvatarType, _ItemID) end

--- 设置模型的性别和职业
---@param _HandleID long
---@param _Gender 1|2
---@param _Job 1|2|3
function CL:AvatarContainerSetInfo(_HandleID, _Gender, _Job) end

--- 设置模型整体的缩放比
---@param _HandleID int
---@param _Scale int
function CL:AvatarContainerSetScale(_HandleID, _Scale) end

--- 设置角色外观某个部件的大图标图片
---@param _HandleID int
---@param _AvatarType
---| `0` #身体
---| `1` #武器
---| `2` #翅膀
---| `3` #头发
---| `4` #盾牌
---@param _ItemBigIconID int
function CL:AvatarContainerSetBigIconData(_HandleID, _AvatarType, _ItemBigIconID) end

--- 获取称号模板表信息
---@return bool
--- Type:
function CL:GetTitleList() end

--- 打开角色面板中的指定页面
---@param _PageIndex
---| `0` 装备页面
---| `1` 属性页面
---| `2` 状态页面 (仅在端游)
---| `4` 称号页面
---| `5` 其他页面
---| `6` 技能页面 (仅在端游)
function CL:OpenSkillSet(_PageIndex) end

--- 设置小地图高亮图片
---@param _ImageID int
---@param _OffX int
---@param _OffY int
function CL:SetLittleMapHighlightImage(_ImageID, _OffX, _OffY) end

--- 获取Att的属性
---@param _AttrID int # Attr的模板ID。
---@param _PropType  # Att的属性类型。
---| `ATT_PROP_ID` # 属性表ID
---| `ATT_PROP_NAME` # 属性的英文字段名
---| `ATT_PROP_CHINANAME` # 属性的中文字段名
---| `ATT_PROP_KEYNAME` # 索引名称
---@return bool
function CL:GetAttrProp(_AttrID, _PropType) end

--- 根据模板ID获取背包中物品的位置
---@param _ItemId int # 物品的模板ID
---@return bool #
---如操作成功，则获取的物品的位置信息存储在全局变量LuaRet中。
--- - `LuaRet[1]` 物品所在的页（从0开始）。
--- - `LuaRet[2]` 物品在该页中的位置（从0开始）。
function CL:PackageFindItemPosById(_ItemId) end

--- 获取角色buff信息
---@param role_id string # 角色的GUID
---@param buff_id uint16 # buff的ID
--- - `LuaRet[1]` BUFF的ID
--- - `LuaRet[2]` 堆叠数量
function CL:GetRoleBuffInfo(role_id, buff_id) end

---分隔字符串:  此函数按指定的字体和宽度，将字符串分割为两段。
---@param _FontName string
---@param _Text string
---@param _Width int
---@return bool
--- `LuaRet[1]`和`LuaRet[2]`中分别保存分割后的字符串。
function CL:CutString(_FontName, _Text, _Width) end

--- 添加一个从A点运动到B点的特效
---@param template_id int
---@param ax int
---@param ay int
---@param bx int
---@param by int
---@param anim_speed int
---@param life int
---@return int # 特效实体ID
--- - `0` 特效生成失败。
--- - `>0` 特效生成成功
function CL:AddMagicFromPointAToB(template_id, ax, ay, bx, by, anim_speed, life) end
