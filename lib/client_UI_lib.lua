---@meta

---@class UI
UI = {}

---服务端GUID转成客户端GUID
---@param _Str string @服务端的GUID字符串
---@return bool @如操作成功，转换后的`GUID`（类型：`string`会被储存在全局变量`LuaRet`中）
function UI:Lua_Str2GUID(_Str)
end

---客户端GUID转服务端GUID
---@param _Str string @客户端的GUID字符串
---@return bool @`true` 执行成功，`false` 执行失败如。操作成功，转换后的GUID（类型：`string`会被储存在全局变量`LuaRet`中）
function UI:Lua_GUID2Str(_Str)
end

---打开面板
---@param _ParentHandleID int @父窗口句柄
---@param _WindowName string@ 面板对应的脚本名
---@return bool @`true`执行成功，`false`执行失败
function UI:Lua_OpenWindow(_ParentHandleID, _WindowName)
end

---根据ID 获取技能的模板集属性
---@param _ID int @技能的ID
---@param _PropType int @技能的模板属性类型
---@return bool @`true`执行成功，`false`执行失败
---此函数返回操作成功或失败。如操作成功，则获取的属性存储在全局变量`LuaRet`中。
function UI:Lua_GetSkillTemplatePropByID(_ID, _PropType) end

---根据试题句柄获取物品的属性值
---@param _ItemEntityHandleID int @物品的实体句柄
---@param _PropType int @物品的属性类型（实体属性或模板属性）
---@return bool @`true` 获取成功 ,`false` 获取失败
---此函数返回操作成功或失败。如操作成功，则获取的属性值存储在LuaRet中。
function UI:Lua_GetItemEntityPropByHandle(_ItemEntityHandleID, _PropType)
end

---获取 att的属性
---@param _AttrID int @ Attr的模板ID
---@param _PropType int @Att的属性类型
function UI:Lua_GetAttrProp(_AttrID, _PropType) end

---根据ID 获取物品的模板句柄
---@param _ID int @物品的ID
---@return bool @`true`,执行成功,`false`执行失败则返回空字符串
--- 如操作成功，获取的数据（类型：`int`）存储在全局变量LuaRet中。
function UI:Lua_GetItemTemplateHandleByID(_ID) end

---根据模板句柄 获取物品的 模板属性的属性值
---@param _ItemTemplateHandle int @物品的模板句柄
---@param _PropType int @物品的模板属性类型
---@return bool @`true`,执行成功,`false`执行失败则返回空字符串
--- 如操作成功，获取的数据存储在全局变量LuaRet中。
function UI:Lua_GetItemTemplatePropByHandle(_ItemTemplateHandle, _PropType) end

---根据GUID获取物品的实体句柄
---@param _ItemGUID_Uint64Str string @物品的GUID
---@return bool @`true`,执行成功,`false`执行失败则返回空字符串
--- 如操作成功，获取的数据（类型：`int`）存储在全局变量LuaRet中。
function UI:Lua_GetItemEntityHandleByGUID(_ItemGUID_Uint64Str) end

---在游戏中显示一条消息
---@param _MsgType int @消息类型显示
---@param _MsgStr string @消息内容
function UI:Lua_ShowTypeMsg(_MsgType, _MsgStr) end

---获取游戏安装路径
---@return bool
function UI:Lua_GetCurWorkPath() end

---获取窗口大小
---@return bool #`true` 获取成功，`false`  获取失败
--- - 此函数返回操作成功或失败。如操作成功，则获取窗口大小的数值存储在LuaRet中。
---     - `LuaRet[1]`窗口的宽度，单位为像素（px）；
---     - `LuaRet[2]`窗口的高度，单位为像素（px）。
function UI:Lua_WndGetSizeM() end

---获取屏幕大小
---@return bool #`true` 获取成功，`false`  获取失败
--- - 此函数返回操作成功或失败。如操作成功，则获取窗口大小的数值存储在LuaRet中。
---     - `LuaRet[1]`窗口的宽度，单位为像素（px）；
---     - `LuaRet[2]`窗口的高度，单位为像素（px）。
function UI:Lua_GetScreenSize() end

---根据 控件类型和信息创建控件
---@param _CtrlType int # 控件类型
--- - `1`图片控件
--- - `2`按钮控件
--- - `3`复选框控件
--- - `4`编辑框控件
--- - `5`组合框控件
--- - `6`列表框控件
--- - `7`单选按钮控件
--- - `8`静态文本框控件
--- - `9`水平滚动条控件
--- - `10`垂直滚动条控件
--- - `11`树形控件(手游中无效)
--- - `12`多功能编辑框控件
--- - `13`物品框控件
--- - `14`窗体控件
---@param _CtrlLay string # 控件信息，（为xml格式的文本字符串 ，为lay格式）
---@return bool `true`执行成功，`false`执行失败
--- > 如执行成功，返回创建的控件句柄（类型：`int`）存储在全局变量`LuaRet`中。
function UI:Lua_WndCreateCtrl(_CtrlType, _CtrlLay) end

---向服务器提交表单
---@param _ScriptName string #服务端的lua文件名
---@param _FunctionName string # lua文件中的函数名
---@param _SubmitString string # 提交的内容，
function UI:Lua_SubmitForm(_ScriptName, _FunctionName, _SubmitString) end

---获取窗口句柄， 此函数通过要查询窗口（子控件）的完整层级路径，获取相应窗口（子控件）的句柄。
---@param _WndDesc string # 要查询窗口的层级完整路径（用英文逗号“,”分隔）
--- > 例如：“FriendWindow, ExampleWnd1, ExampleButton”。
---@return int @获取成功则返回窗口（子控件）的句柄,获取失败则返回0
function UI:Lua_GetWindow(_WndDesc)
end

---查找窗口是否存在
---@param _HandleID int # 窗口句柄ID
---@param _Info string # 窗口名称
---@return bool `true` 执行成功,`false` 执行失败
function UI:Lua_FindWindow(_HandleID, _Info)
end

---根据文件名打开Lua窗口
---@param _Path string #  要打开的Lua窗口对应的文件名（无需后缀名）如需传递参数，在文件名后以#依次分割。
---@return bool # `true` 执行成功， `false` 执行失败
function UI:Lua_GenForm(_Path)
end

---使用form字符串创建Lua窗口
---@param _Info string # form字符串
---@return  bool # `true` 创建成功， `false` 创建失败
function UI:Lua_GenFormByString(_Info)
end

---加载Lua脚本到游戏
---@param _FileName string # 文件名
---@return bool # `true` 执行失败 `false` 执行失败
function UI:Lua_LoadLuaFile(_FileName)
end

---获取物品框中物品的属性值
---@param _PropType int # GUIData属性类型
---@return bool
--- > 结果存放在`LuaRet`中
function UI:Lua_RDItemCtrlGetGUIDataPropByType(_PropType)
end

--- 获取物品自定义字符串变量
---@param _ItemEntityHandle int  #物品实体句柄
---@param _ItemCustomKey string 自定义变量索引名
function UI:Lua_GetItemEntityCustomVarStr(_ItemEntityHandle, _ItemCustomKey) end

--- 根据索引名获取物品的模板句柄
---@param _KeyName string
---@return bool
function UI:Lua_GetItemTemplateHandleByKeyName(_KeyName) end

---获取自身所有装备的GUID
---`LuaRet[idx]`,`idx`为索引号，范围为`1~64`，值为装备的`GUID`；
function UI:Lua_GetPlayerSelfEquipData() end

--- 获取英雄的装备GUID列表
---@param guid string #英雄的GUID
---@return bool # 返回的结果在全局变量`LuaRet` 中
function UI:Lua_GetPlayerHeroEquipDataEx(guid) end

--- 获取英雄的装备GUID列表
---@return bool # 返回的结果在全局变量`LuaRet` 中
function UI:Lua_GetPlayerHeroEquipData() end

--- 根据GUID获取物品的模板句柄
---@param _ItemGUID_Uint64Str string # 物品的GUID
---@return bool # `true` 执行成功，`false` 执行失败 返回的结果在全局变量`LuaRet` 中
function UI:Lua_GetItemTemplateHandleByGUID(_ItemGUID_Uint64Str) end

--- 获取套装属性
---@param _ID int
---@param _PropType int #套装的类型
---@return bool #结果储存在全局变量`LuaRet`中
function UI:Lua_GetSuitPropByID(_ID, _PropType) end

--- 根据套装ID获取装备ID列表
---@param _ID int # 套装的ID
function UI:Lua_GetSuitItemListByID(_ID) end

--- 根据ID获取物品的模板属性的属性值
---@param _ID int
---@param _PropType int
function UI:Lua_GetItemTemplatePropByID(_ID, _PropType) end

--- 根据GUIData属性类型获取物品的GUIData属性值
---@param _ItemGUIDataHandleID int
---@param _PropType int
---@return bool #此函数返回操作成功或失败。如操作成功，获取的物品的GUIData属性值存储在全局变量LuaRet中。
function UI:Lua_GetItemGUIDataPropByType(_ItemGUIDataHandleID, _PropType) end

---  根据GUID获取物品的属性值
--- @param _ItemGUID_Uint64Str string # 物品的GUID
--- @param _PropType int # 物品属性类型
--- @return bool
function UI:Lua_GetItemEntityPropByGUID(_ItemGUID_Uint64Str, _PropType) end

--- 获取目标玩家所有装备的GUID
--- @return bool
function UI:Lua_GetPlayerTargetEquipData() end

---设置MessageBox弹框
---@param _MsgboxId string # 控件的名称
---@param _MsgType int # 弹装类型
---@param _MsgStyle int # 弹窗的按钮显示
---@param _Info string # 弹窗内容
---@return bool # 如果为`true` ，则窗棂子句柄储储存在全局变量`LuaRet`中
function UI:Lua_MessageBox(_MsgboxId, _MsgType, _MsgStyle, _Info) end

---为窗体控件添加自定义属性
---@param _Key string # 属性名称
---@param _Val string # 属性值
function UI:Lua_WndAddProperty(_Key, _Val) end

---创建窗口
---@param _ID int 窗口名
---@param _ParentHandleID int #父窗口句柄ID
---@return bool # 结果储存在全局变量`LuaRet`中
function UI:Lua_CreateWnd(_ID, _ParentHandleID) end

---加载布局文件
---@param _ID string #文件名称
---@return bool
function UI:Lua_WndLoadLayOut(_ID) end

---设置窗体控件是否可见
---@param _Flag bool
function UI:Lua_WndSetVisible(_Flag) end

---设置窗体控件是否可见
---@param _Flag boolean
function UI:Lua_WndSetVisible(_Flag) end

--- 获取玩家角色自身的基本属性
---@param _PropertyType int # 属性的类型
---@return bool
function UI:Lua_GetPlayerSelfPropBase(_PropertyType) end

--- 获取其他玩家角色基本属性
---@param _RoleGUID string
---@param _PropertyType int
---@return bool
function UI:Lua_GetPlayerPropBase(_RoleGUID, _PropertyType) end

--- 获取玩家角色自身的32位属性
---@param _PropertyType int
---@return int
function UI:Lua_GetPlayerSelfProperty32(_PropertyType) end

--- 获取其他玩家角色32位属性
---@param _RoleGUID string
---@param _PropertyType int
---@return int
function UI:Lua_GetPlayerProperty32(_RoleGUID, _PropertyType) end

--- 获取当前英雄的GUID
function UI:Lua_GetCurHeroGUID() end

--- 获取物品自定义整型变量
---@param _ItemEntityHandle int
---@param _ItemCustomKey string
---@return bool
function UI:Lua_GetItemEntityCustomVarInt(_ItemEntityHandle, _ItemCustomKey) end

--- 根据商城中物品索引名获取物品的句柄
---@param _ItemName string
---@return bool # LuaRet (Type: int)
function UI:Lua_GetMallItemHandleByName(_ItemName) end

--- 获取玩家角色自身的64位属性
---@param _PropertyType int
---@return bool
function UI:Lua_GetPlayerSelfProperty64(_PropertyType) end

--- 判断图片是否存在
---@param _ImageID uint #图片资源
---@return bool
function UI:Lua_IsTextureExists(_ImageID) end

--- 获取指定字体的字符串宽度
---@param _FontName string
---@param _TextInfo string
---@return bool
function UI:Lua_GetFontStrWidth(_FontName, _TextInfo) end

--- 获取Buff属性
---@param _BuffID int
---@param _PropType int
---@return bool
function UI:Lua_GetBuffProp(_BuffID, _PropType) end

--- 获取组队成员的属性
---@param _RoleGUID string
---@param _PropertyType int
function UI:Lua_GetTeamPropByPlayerGUID(_RoleGUID, _PropertyType) end

--- 根据地图的索引名获取地图名称
---@param _MapKeyName string
---@return bool
function UI:Lua_GetMapNameByKeyName(_MapKeyName) end

---设置物品框中物品的属性值
---@param _PropType int
---@return bool
function UI:Lua_RDItemCtrlSetGUIDataPropByType(_PropType) end

---设置物品框是否显示品质框
---@param _HandleID long # 目标物品框控件的句柄
---@param _Flag bool
function UI:Lua_RDItemCtrlShowQualityBG(_HandleID, _Flag) end
