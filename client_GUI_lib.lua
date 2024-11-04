---@meta GUI

---@alias GUIDataPropType
---| `ITEMGUIDATA_ITEMGUID`		# GUID
---| `ITEMGUIDATA_IMAGEID`		# ICONN
---| `ITEMGUIDATA_TYPE`			# 类型：`1`表示物品，`2`表示技能
---| `ITEMGUIDATA_ITEMID`		# 模板ID
---| `ITEMGUIDATA_PARAM`		# 自定义参数
---| `ITEMGUIDATA_ITEMCOUNT`	# 数量
---| `ITEMGUIDATA_INVALIDATE`	# 是否有效
---| `ITEMGUIDATA_ISSTACKITEM`	# 是否可堆叠
---| `ITEMGUIDATA_ITEMPOS`		# 绝对位置
---| `ITEMGUIDATA_CDTIME`		# CD时间
---| `ITEMGUIDATA_CDSTARTTICK`	# CD开始时间
---| `ITEMGUIDATA_INCDSTATE`	# 是否CD状态
---| `ITEMGUIDATA_ITEMLOCK`		# 是否锁定
---| `ITEMGUIDATA_ITEMPRICETYPE`# 价格类型：`1`金币，`2`元宝
---| `ITEMGUIDATA_ITEMPRICE`	# 价格
---| `ITEMGUIDATA_ISSHOWBIND`	# 是否绑定
-----------
---封装接口
-----------


---将窗口居中
---@param _Handle int # 指定窗口句柄
---@param _Info string # 指定窗口描述
function CenterWnd(_Handle, _Info)
    WndSetPosAt(_Handle, _Info, 0.5, 0.5)
end

---获取窗口句柄
---@param _Handle int @父窗口句柄
---@param _Info string @窗口名称，若此参数的值设置为parent，则会获取父窗口信息，否则根据设置的字符串获取相应窗口（子控件）的句柄。
---@return int @获取成功则返回窗口（子控件）的句柄 获取失败则返回`0`
function GetWindow(_Handle, _Info)
end

---创建图片控件
---@param _Handle int @父窗口句柄
---@param _Info string @父窗口名称
---@param _ImageId int @图片资源ID
---@param _PosX int @ 新建图片相对于父控件位置的横坐标
---@param _PosY int @ 新建图片控件位置相对于父控件位置的纵坐标
---@param _SizeX int @新建图片控件的宽度（此参数无效
---@param _SizeY int @新建图片控件的高度（此参数无效
---@param _ID string @ 图片控件的名称
---@param _Align int @ 图片控件的对齐方式（参数保留需为0
---@param _HintInfo string @ 提示文字（手游中无效
---@return int
function CreateImage(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
end

---创建窗口
function CreateCtrl(_Handle, _Info, _Type, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
end

---创建静态文本框控件
---@return int @句柄
function CreateStatic(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
end

---获取窗体控件相对于父窗体的坐标位置
---@param _Handle int
---@param _Info string
---@return bool
function WndGetPosM(_Handle, _Info)
end

---------------------


--#region 类定义

---@class GUI
GUI = {}

---@alias LuaUIEvent
---| `RDWndBaseCL_mouse_lbDown`          -- 鼠标左键按下事件（int _HandleID(窗口句柄)）
---| `RDWndBaseCL_mouse_lbUp`            -- 鼠标左键弹起事件（int _HandleID(窗口句柄)）
---| `RDWndBaseCL_mouse_lbClick`         -- 鼠标左键点击事件（int _HandleID(窗口句柄)）
---| `RDWndBaseCL_mouse_lbDbClick`       -- 鼠标左键双击事件（int _HandleID(窗口句柄)
---| `RDWndBaseCL_mouse_rbDown`          -- 鼠标右键按下事件（int _HandleID(窗口句柄)）
---| `RDWndBaseCL_mouse_rbUp`            -- 鼠标右键弹起事件（int _HandleID(窗口句柄)）
---| `RDWndBaseCL_mouse_rbClick`         -- 鼠标右键点击事件（int _HandleID(窗口句柄)）
---| `RDWndBaseCL_mouse_rbDbClick`       -- 鼠标右键双击事件（int _HandleID(窗口句柄)）
---| `RDWndBaseCL_mouse_move`            -- 鼠标移动事件（int _HandleID(窗口句柄)）
---| `RDWndBaseCL_mouse_wheel`           -- 鼠标滚轮滚动事件（int _HandleID(窗口句柄)）
---| `RDWndBaseCL_mouse_in`              -- 鼠标进入控件事件（int _HandleID(窗口句柄)）
---| `RDWndBaseCL_mouse_out`             -- 鼠标离开控件事件（int _HandleID(窗口句柄)）
---| `RDWndBaseCL_wnd_visible`           -- 可见状态发生变化事件（int _HandleID(窗口句柄)）
---| `RDWndBaseCL_wnd_show`              -- 显示状态发生变化事件（int _HandleID(窗口句柄)）
---| `RDWndBaseCL_wnd_enable`            -- 可用状态发生变化事件（int _HandleID(窗口句柄)）
---| `RDWndBaseCL_wnd_active`            -- 激活状态发生变化事件（int _HandleID(窗口句柄)）
---| `RDWndBaseCL_wnd_move`              -- 控件移动事件（int _HandleID(窗口句柄)）
---| `RDWndBaseCL_key_char`              -- 字符输入事件（int _HandleID(窗口句柄)）
---| `RDWndBaseCL_key_down`              -- 某键按下事件（int _HandleID(窗口句柄)）
---| `RDWndBaseCL_key_up`                -- 某键弹起事件（int _HandleID(窗口句柄)）
---| `RDWndBaseCL_wnd_sizeChange`        -- 窗口大小发生变化事件（int _HandleID(窗口句柄)）
---| `RDWndBaseCL_wnd_close`             -- 窗口关闭事件（int _HandleID(窗口句柄)）
---| `RDWndBaseCL_wnd_destroy`           -- 窗口销毁事件（int _HandleID(窗口句柄)）


--#endregion

---注册窗体控件的事件事件回调函数
---@param _HandleID int @指定窗体控件的句柄
---@param _Msg LuaUIEvent @ 指定窗体控件的事件ID
---@param _FuncName string @回调函数名
---@return bool
function GUI:WndRegistScript(_HandleID, _Msg, _FuncName)
end

---创建图片控件
---@param _ParentHandle int @父窗口句柄
---@param _pWndID char @新建图片控件的名称
---@param _ImageID uint @新建图片控件的图片资源ID
---@param _PosX int @新建图片控件位置的横坐标
---@param _PosY int @新建图片控件位置的纵坐标
---@return int @ OK：句柄，No：0
---@nodiscard
function GUI:ImageCreate(_ParentHandle, _pWndID, _ImageID, _PosX, _PosY)
end

---此函数用于设置与指定窗体控件相关联的自定义参数的数值。
---@param _HandleID int
---@param _Param uint
function GUI:WndSetParam(_HandleID, _Param)
end

---设置窗体控件的自定义参数
---同`WndSetParam`
---@param _HandleID int
---@param _Param uint
function GUI:WndSetIDParam(_HandleID, _Param)
end

---此函数设置指定窗口的大小。
---@param _HandleID int
---@param _W int
---@param _H int
function GUI:WndSetSizeM(_HandleID, _W, _H)
end

---设置图片控件动画循环播放
---@param _HandleID int @图片控件
---@param _Speed uint @动画没帧时间间隔，默认值为100，单位为毫秒（ms）
---@param _AnimCount int @动画循环播放次数 ，默认值：`0`（一直播放）
---@param _AnimCallBackFunc string @动画播放至指定次数后的动作
---1. 当此参数设置为空字符串（默认值）时，动画播放完毕后，自动销毁
---2. 当此参数设置为其他字符串时，动画播放至指定次数后对应函数会作为Lua脚本函数进行回调，由脚本接管处理。
---TODO
function GUI:ImageSetAnimate(_HandleID, _Speed, _AnimCount, _AnimCallBackFunc)
end

---设置图片控件是否播放动画
---@param _Handle int
---@param _Info string
---@param _Enable bool
---@param _Speed uint
function ImageSetAnimateEnable(_Handle, _Info, _Enable, _Speed)
end

---设置图片控件是否自动缩放
---@param _HandleID int
---@param _Flag bool @是否自动缩放
function GUI:ImageSetFitSize(_HandleID, _Flag)
end

---创建按钮控件
---@param _ParentHandle int @父窗口句柄
---@param _pButtonID char @新建按钮控件名称
---@param _ImageId uint @空间按钮的图片资源
---@param _PosX int @新建按钮控件位置的横坐标
---@param _PosY int @新建按钮空间位置的纵坐标
---@return int @OK：句柄，No：0
function GUI:ButtonCreate(_ParentHandle, _pButtonID, _ImageId, _PosX, _PosY)
end

---设置按钮是否显示闪烁的特效
---@param _HandleID int
---@param _Flag bool
function GUI:ButtonSetShine(_HandleID, _Flag)
end

---获取子窗口句柄
---此接口查询深度为1
---@param _HandleID int @ 父窗口句柄
---@param _ID string @窗口名称
---@return int @ 获取成功则返回窗口（子控件）的句柄 获取失败则返回0
function GUI:WndFindChildM(_HandleID, _ID)
end

---设置窗口控件的提示文字
---@param _HandleID int
---@param _HintInof string
function GUI:WndSetHint(_HandleID, _HintInof)
end

---设置窗体控件是否可见
---@param _HandleID int
---@param _Flag bool
function GUI:WndSetVisible(_HandleID, _Flag)
end

---设置窗口是否响应操作
---功能类似于`WndSetMouseEnableIN`接口，区别在于此函数所接收的操作类型除鼠标点击外，还有包括按键等其他方式。
---@param _HandleID int
---@param _Flag bool @
--- - `true`:消息将会传递至此窗口下的子控件,
--- - `false`: 消息将不会传递至此窗口下的子控件
function GUI:WndSetCanRevMsg(_HandleID, _Flag)
end

---设置图片 控件检测点击区域类型
---@param _HandleID int @指定图片控件的句柄
---@param _Flag int @检测点击的类型
--- 手游和端游：
---
--- 0. 不检测
--- 1. （默认值）检测点击位置是否在图片上（忽略透明度）
--- 2. 检测点击位置是否在控件范围内
---
--- H5：
--- 1. （默认值）检测点击位置是否在图片上（忽略透明度）
--- 2. 其他检测点击位置是否在控件范围内
function GUI:ImageSetCheckPoint(_HandleID, _Flag)
end

---创建编辑框控件
---@param _HandleID int
---@param _pEditID string @名称
---@param _PosX int @横坐标
---@param _PosY int @纵坐标
---@param _SizeX int @宽度
---@param _SizeY int @高度
---@return int
---@nodiscard
function GUI:EditCreate(_HandleID, _pEditID, _PosX, _PosY, _SizeX, _SizeY)
end

---设置编辑框文本的字体
---@param _HandleID int
---@param _Text string @字体名称：即`FontSetting.xml`文件中的`FontUseName`字段的值，详情查看 **XML配置文件** -> **字体样式配置**）
function GUI:EditSetFontM(_HandleID, _Text)
end

---设置编辑框文本颜色
---@param _HandleID int
---@param _Color uint
function GUI:EditSetTextColor(_HandleID, _Color)
end

---设置编辑框是否可以编辑
---@param _HandleID int
---@param _CanEdit bool
function GUI:EditSetCanEdit(_HandleID, _CanEdit)
end

---设置编辑框的文本居中显示
---@param _HandleID int
function GUI:EditSetFontCenter(_HandleID)
end

---生成颜色值
---@param R int
---@param G int
---@param B int
---@param A int
---@return int
function GUI:MakeColor(R, G, B, A)
end

---设置窗体控件的文本内容
---@param _HandleID int
---@param _Text string
function GUI:WndSetTextM(_HandleID, _Text)
end

---设置窗体控件的位置
---@param _HandleID int
---@param _XPos int
---@param _YPos int
function GUI:WndSetPosM(_HandleID, _XPos, _YPos)
end

---获取控件图片资源编号
---@param _HandleID int
---@return int
function GUI:WndGetImageID(_HandleID)
end

---设置编辑框的文本内容
---@param _HandleID int @ 编辑框句柄
---@param _Text string @文本内容
function GUI:EditSetTextM(_HandleID, _Text)
end

---在窗体控件中添加建议定时器
---@param _HandleID int @ 指定窗体控件的句柄
---@param _Elapse int @执行回调函数的时间间隔
---@param _ScriptHandle string @回调函数的名称
---@return int @OK：定时器ID：NO：0
function GUI:WndAddTimerBrief(_HandleID, _Elapse, _ScriptHandle)
end

---在窗体控件中添加建议定时器
---@param _HandleID int @ 指定窗体控件的句柄
---@param _Elapse int @执行回调函数的时间间隔
---@param _ScriptHandle string @回调函数的名称
---@param _Param string @ 预设的回调参数
---@return int @OK：定时器ID：NO：0
function GUI:WndAddTimerBriefEx(_HandleID, _Elapse, _ScriptHandle, _Param)
end

---获取窗体控件的可见状态
---@param _HandleID int
---@return bool
function GUI:WndGetVisible(_HandleID)
end

---关闭窗口
---@param _HandleID int
function GUI:WndClose(_HandleID)
end

---创建窗口
---使用此接口创建的窗口的默认标记为`flg_wndBase_autoTop`（将控件置于所在父窗口的最上层）。
---@param _ParentHandle int @父窗口句柄
---@param _ID string @ 新建窗口的名称
---@param _ImageID uint @新建窗口的图片资源ID
---@param _X int @ 新建窗口的横坐标
---@param _Y int @ 新建窗口未知的纵坐标
---@return int
function GUI:WndCreateWnd(_ParentHandle, _ID, _ImageID, _X, _Y)
end

---设置窗口Esc关闭属性
---@param _HandleID int
---@param _Flag bool
function GUI:WndSetIsESCClose(_HandleID, _Flag)
end

---设置窗口左键拖动属性
---@param _HandleID int
function GUI:WndSetMoveWithLBM(_HandleID)
end

---设置九宫格拼接图片
---@param _HandleID int
---@param _LeftUp int
---@param _RightUp int
---@param _LeftDown int
---@param _RightDown int
---@param _Mid int
---@param _Up int
---@param _Down int
---@param _Left int
---@param _Right int
function GUI:ImageSetAroundImage(_HandleID, _LeftUp, _RightUp, _LeftDown, _RightDown, _Mid, _Up, _Down, _Left, _Right)
end

---获取窗口大小
---@param _HandleID int
---@return bool @如果成功，获取窗口的大小储存在`LuaRet`中，
function GUI:WndGetSizeM(_HandleID)
end

---获取窗口子控件数量
---@param _HandleID int
---@return int @返回子窗口的数量
function GUI:WndGetChildCount(_HandleID)
end

---创建物品栏控件
---@param _ParentHandleID long @父窗口句柄
---@param _pItemCtrlID char@新建物品框名字
---@param _ImageID uint @图片资源ID
---@param _PosX int
---@param _PosY int
---@param _SizeX int
---@param _SizeY int
---@return int
function GUI:ItemCtrlCreate(_ParentHandleID, _pItemCtrlID, _ImageID, _PosX, _PosY, _SizeX, _SizeY)
end

---获取父窗口句柄
---@param _HandleID int # 指定窗体控件的句柄
---@return int #  获取成功则返回父窗口句柄，获取失败则返回0
function GUI:WndGetParentM(_HandleID)
end

---获取父窗口控件相对于父窗体的坐标位置
---@param _HandleID int
---@return bool
function GUI:WndGetPosM(_HandleID)
end

---获取窗口句柄
---@param _HandleID int @父窗口句柄
---@param _Info string @要查寻的窗口名称
---@return int
function GUI:WndFindWindow(_HandleID, _Info)
end

---设置控件图片资源编号
---@param _HandleID int @要指定控件的句柄
---@param _ImageId uint @图片资源编号
function GUI:WndSetImageID(_HandleID, _ImageId)
end

---设置窗体控件的用户自定义数据
--- 支持最多创建10组自定义数据
---@param _HandleID int @要指定的窗体控件的句柄
---@param _Data int @自定义数据的数值
---@param _DataIndex int @自定义数据的索引
function GUI:WndSetUserData(_HandleID, _Data, _DataIndex)
end

---设置物品框数据自动管理
---@param _HandleID int
---@param _Flag bool
function GUI:ItemCtrlSetItemDataAutoManager(_HandleID, _Flag)
end

---设置按钮按下时文字是否改变位置
---如设置为开启，按钮按下时文字会向右下方偏移一个像素
---@param _HandleID int
---@param _Flag bool
function GUI:ButtonSetDownTextPosChange(_HandleID, _Flag)
end

---设置图片控件自定义参数的值
---@param _HandleID int
---@param _Param int
---（0:普通绘制
---1:普通绘制
---2:左右平铺绘制
---3.上下平铺绘制
---4.九宫格绘制）
function GUI:ImageSetParam(_HandleID, _Param)
end

---设置窗体控件文本颜色
---@param _HandleID int @ 指定窗体控件的句柄
---@param _Color uint @文本颜色，句具体可见[颜色字符串](https://tool.173uu.com/#/scriptdocument/0?name=g2652&t=1718249086844)界面
---颜色字符串格式：
---1. 以#开头字符串:通过接口`GetColor`
---2. 通过接口`MakeColor`、`MakeARGB`或`Lua-MakeARGB`生成的颜色值，仅适用于数值类型的参数
---3. 在`GlobalDefine.lua`脚本文件中定义的颜色标记
---4. 程序预定义的颜色标记（不区分大小写）
function GUI:WndSetTextColorM(_HandleID, _Color)
end

---生成颜色值，参数数值范围在`0~255`之间
---@param A int
---@param R int
---@param G int
---@param B int
---@return uint
function GUI:MakeARGB(A, R, G, B)
end

---设置窗体控件文字的排列方式
---@param _HandleID int @ 指定窗体控件的句柄
---@param _XOffset int @文字的横坐标的偏移量
---@param _YOffset int @ 文字的纵坐标的偏移量
---@param _FontDistance int @ 文字的间距，单位为像素
---@param _ArrangeType int @ 排列类型：（0：水平排列，1：垂直排列）
function GUI:WndSetTextArrangeType(_HandleID, _XOffset, _YOffset, _FontDistance, _ArrangeType)
end

---设置按钮字体
---@param _HandleID int @指定按钮控件的句柄
---@param _FontName string @字体名称（即`FontSetting.xml`文件中的`FontUseName`字段的值）详情见[字体样式配置](https://tool.173uu.com/#/scriptdocument/0?name=g3518&t=1718249837874)
function GUI:ButtonSetTextFont(_HandleID, _FontName)
end

---设置是否为激活的页签按钮
---@param _HandleID int @ 句柄
---@param _Flag bool @true：激活
function GUI:ButtonSetIsActivePageBtn(_HandleID, _Flag)
end

---设置窗体控件的描绘顺序
---@param _HandleID int @句柄
---@param _Order int @优先级
function GUI:SetLocalZOrder(_HandleID, _Order)
end

---获取窗体控件的名称
---@param _HandleID int
---@return string @OK:name,NO:""
function GUI:WndGetIDM(_HandleID)
end

---设置按钮选择范围
---@param _HandleID int
---@param _SizeX int
---@param _SizeY int
function GUI:ButtonSetSelectRange(_HandleID, _SizeX, _SizeY)
end

---设置物品框是否可使用右键
---@param _HandleID int
---@param _Flag bool @true：右键点击物品框使用物品，false ：右键点击物品框无任何作用
function GUI:ItemCtrlSetRBtnUse(_HandleID, _Flag)
end

---设置物品框中物品的图标尺寸大小
---@param _HandleID int
---@param _IconXSize int
---@param _IconYSize int
function GUI:ItemCtrlSetIconSize(_HandleID, _IconXSize, _IconYSize)
end

---设置窗口是否可用
---@param _HandleID int
---@param _Flag bool
function GUI:WndSetEnableM(_HandleID, _Flag)
end

---创建复选框控件
---@param _ParentHandle int
---@param _pCheckID  string @复选框控件的名称
---@param _ImageID uint @图片资源ID
---@param _Tital string @复选框控件标题
---@param _PosX int @横坐标
---@param _PosY int @纵坐标
---@return int @OK：句柄，No：0
function GUI:CheckBoxCreate(_ParentHandle, _pCheckID, _ImageID, _Tital, _PosX, _PosY)
end

---设置复选框的选中状态
---@param _HandleID int
---@param _Check bool
function GUI:CheckBoxSetCheck(_HandleID, _Check)
end

---设置复选框的选择状态
---@param _Handle int
---@param _Info string
---@param _Check bool
---@return bool @ true:空间存在，false：空间不存在
function CheckSetCheck(_Handle, _Info, _Check)
end

---设置复选框控件的选中状态是否改变
---@param _HandleID int
---@param _AutoChange bool
function GUI:CheckBoxSetAutoChange(_HandleID, _AutoChange)
end

---获取复选框的选中状态
---@param _HandleID int @指定复选框控件的句柄
---@return bool
function GUI:CheckBoxGetCheck(_HandleID)
end

---设置按钮上显示的图片
---@param _HandleID int
---@param _ImageID uint
function GUI:ButtonSetDrawPostTexture(_HandleID, _ImageID)
end

---根据索引名填充物品框数据 !!!:手游
---@param _Handle int @指向物品框控件的句柄
---@param _KeyName string @物品的索引名
---@param _Count int @物品堆叠的数量
---@param _IsBind bool @物品是否绑定
function RDItemCtrlSetGUIDataByKeyName(_Handle, _KeyName, _Count, _IsBind)
end

---设置物品框背景图片
---@param _HandleID int
---@param _ImgId int
function GUI:ItemCtrlSetBackImageID(_HandleID, _ImgId)
end

---根据物品ID填充物品框
---@param _Handle int # 置顶物品框控件的句柄
---@param _Info string? # 置顶物品框控件的描述
---@param __ItemID int # 物品模板ID
---@param _Count int # 物品堆叠数量
---@param _IsBind bool # 物品是否绑定 ：`true` 绑定：`false`非绑定
---@return bool # `true` : 执行成功, `false` ： 执行失败
function RDItemCtrlSetGUIDataPropByItemID(_Handle, _Info, __ItemID, _Count, _IsBind)
end

---根据物品GUID填充物品框
---@param _Handle int
---@param _Info string
---@param _ItemGUID string
function RDItemCtrlSetGUIDataPropByGUID(_Handle, _Info, _ItemGUID)
end

---获取物品框指向物品的索引名
---此接口只能获取使用GUID填充的物品框中对应物品的索引名。
---@param _Handle int @物品框句柄
---@param _Info string @指定物品框控件的描述
function RDItemCtrlGetGUIDataKeyName(_Handle, _Info)
end

---根据索引名填充物品框 !!!: **端游**
---@param _Handle int @物品框句柄
---@param _Info string? @指定物品框控件的描述
---@param _KeyName string @物品索引名
---@param _Count int @物品堆叠的数量
---@param _IsBind bool @物品是否绑定
function RDItemCtrlSetGUIDataPropByKeyName(_Handle, _Info, _KeyName, _Count, _IsBind)
end

---清楚物品框中已有的物品数据
---@param _Handle int @指定物品框控件的句柄
---@param _Info string @指定物品框控件的描述
function RDItemCtrlClearGUIData(_Handle, _Info)
end

---创建带滚动条窗口
---@param _ParentHandle int
---@param _ID string @  新建控件名称
---@param _X int  @ 新建的横坐标
---@param _Y int @新建的纵坐标
---@param _Width int
---@param _Height int
---@return int @ 句柄
function GUI:WndCreateScrollWnd(_ParentHandle, _ID, _X, _Y, _Width, _Height)
end

---创建带滚动条窗口（扩展）
---@param _ParentHandle int
---@param _ID string @  新建控件名称
---@param _X int  @ 新建的横坐标
---@param _Y int @新建的纵坐标
---@param _Width int
---@param _Height int
---@param _Vert bool @是否创建带垂直滚动条的窗口，true：垂直，false：水平
---@return int @ 句柄
function GUI:WndCreateScrollWndEx(_ParentHandle, _ID, _X, _Y, _Width, _Height, _Vert)
end

---创建水平滚动条控件
---@param _ParentHandleID int@ 父窗口句柄
---@param _pItemCtrlID string@新建水平滚动条的名称
---@param _ImageUp int@向左滚动按钮的图片资源ID
---@param _ImageDown int@向右滚动按钮的图片资源ID
---@param _ImageThumb int@滚动条的前景（即滑块）图片资源ID
---@param _ImageBack int@ 滚动条的背景图片资源ID
---@param _PosX int @ 新建水平滚动条位置的横坐标
---@param _PosY int @ 新建水平滚动条位置的纵坐标
---@param _Length int@ 新建水平滚动条的长度
---@return int @句柄
function GUI:ScrollBarHCreate(_ParentHandleID, _pItemCtrlID, _ImageUp, _ImageDown, _ImageThumb, _ImageBack, _PosX, _PosY,
                              _Length)
end

---设置编辑框是否可多行编辑
---@param _HandleID int
---@param _MultiLine bool
function GUI:EditSetMultiLineEdit(_HandleID, _MultiLine)
end

---设置编辑框是否限制字体大小
---@param _HandleID int
---@param _LimitSize bool
function GUI:EditSetLimitStringSize(_HandleID, _LimitSize)
end

---设置图片控件是否以中心点绘制
---@param _HandleID int
---@param _DrawCenter bool
function GUI:ImageSetFixedDrawCenter(_HandleID, _DrawCenter)
end

---设置图片控件的图片
---@param _Handle int
---@param _Info string?
---@param _ImageID uint
---@return bool # `true` 执行成功, `false` 执行失败（未找到对应控件）
function ImageSetImageID(_Handle, _Info, _ImageID)
end

---设置图片控件是否播放动画
---@param _HandleID int
---@param _Enable bool
---@param _Speed uint
function GUI:ImageSetAnimateEnable(_HandleID, _Enable, _Speed)
end

---将窗口移动至最上层
---@param _HandleID int @ 制定窗体控件的句柄
function GUI:WndMoveToParentTop(_HandleID)
end

---设置物品框是否有效
---@param _Handle int
---@param _Info string?
---@param _Enable bool
---@return bool
function RDItemCtrlSetGUIDataEnable(_Handle, _Info, _Enable)
end

---设置物品框是否显示物品数量
---@param _HandleID int
---@param _Flag bool @true：显示，fals：不显示
function GUI:ItemCtrlSetShowItemCount(_HandleID, _Flag)
end

---设置物品框中物品的属性值
---@param _Handle int
---@param _Info string?
---@param _PropType int
---@param _PropValue table @属性值，属性值的具体类型根据指定的GUI属性类型决定
function RDItemCtrlSetGUIDataPropByType(_Handle, _Info, _PropType, _PropValue)
end

---是否显示物品框前景图片
---@param _Handle int
---@param _Info string?
---@param _ImgId int
function RDItemCtrlSetFrontImageID(_Handle, _Info, _ImgId)
end

---设置物品框中物品的属性值
---@param _HandleID int
---@param _PropType GUIDataPropType @属性值，对应属性类型的参数需要通过全局变量`LuaArg`来传递
---@return bool
function GUI:ItemCtrlSetGUIDataPropByType(_HandleID, _PropType)
end

---设置物品框中的物品是否显示为大图标
---@param _HandleID int
---@param _BigIconType int @0：普通图标，其他数值：大图标
function GUI:ItemCtrlSetBigIcon(_HandleID, _BigIconType)
end

---物品框设置为大图标时，是否播放动画
---@param _HandleID long
---@param _Anim bool
---@param _AnimSpeed uint
function GUI:ItemCtrlSetBigIconAnim(_HandleID, _Anim, _AnimSpeed)
end

---设置物品框的图标类型
---@param _HandleID int @ 句柄
---@param _Type int @图标类型
function GUI:ItemCtrlSetIconImageType(_HandleID, _Type)
end

---设置图片是否相应操作
---@param _Handle int
---@param _Info string
---@param _Flag bool
function WndSetCanRevMsg(_Handle, _Info, _Flag)
end

---设置窗口是否可用
--- 此函数设置有响应的控件是否可使用。
---@param _HandleID int
---@param _Flag bool
function GUI:WndSetEnableM(_HandleID, _Flag)
end

---将窗口移动至最上层
---@param _Handle int
---@param _Info string
function WndMoveToParentTop(_Handle, _Info)
end

---标记窗体控件为高优先级UI
---@param _Name string @窗体控件的名字
function GUI:SetHighPriorityUIName(_Name)
end

--- 设置图片控件的缩放和旋转
---@param _HandleID int
---@param _ScaleX int
---@param _ScaleY int
---@param _Roation int
--- > 默认是左上角不变，但可以设置中心绘制
function GUI:ImageSetTransfrom(_HandleID, _ScaleX, _ScaleY, _Roation)
end

---设置编辑框是否限制字体大小
---@param _HandleID int
---@param _LimitSize bool
function GUI:EditSetLimitStringSize(_HandleID, _LimitSize)
end

---自定义窗体控件的文字大小
---在2d客户端中，此接口支持的窗体控件包括： 按钮、编辑框 、多功能编辑框和复选框 控件等
---@param _HandleID int
---@param _Size int
function GUI:WndSetFontSize(_HandleID, _Size)
end

---设置成图片控件绘制区域
---@param _HandleID int
---@param _StartX float
---@param _EndX float
---@param _StartY float
---@param _EndY float
function GUI:ImageSetDrawRect(_HandleID, _StartX, _EndX, _StartY, _EndY)
end

---设置选择文本内容时是否显示背景条
--- - 仅2d端游适用
---@param _HandleID int @ 句柄
---@param _Value bool @是否显示蓝色的高亮条
function GUI:EditSetDrawSelectBgWhenCantEdit(_HandleID, _Value)
end

---设置按钮各个状态图片相对于主图片的ID偏移
---@param _HandleID int @ 按钮句柄
---@param _NormalIndex int @ 正常状态下图片资源ID相对于按钮创建图片资源ID 的偏移
---@param _MouseOnIndex int @鼠标悬浮状态下图片资源ID相对于按钮创建时图片资源ID的偏移
---@param _MouseDownIndex int@鼠标按下状态下图片资源ID相对于按钮创建时图片资源ID的偏移
---@param _DisableIndex int @按钮不可用状态下图片资源ID相对于按钮创建时图片资源ID的偏移
function GUI:ButtonSetImageIndex(_HandleID, _NormalIndex, _MouseOnIndex, _MouseDownIndex, _DisableIndex)
end

---设置物品框默认图片
---@param _HandleID int
---@param _ImgId int @默认图片id
function GUI:ItemCtrlSetDefaultImage(_HandleID, _ImgId)
end

---设置物品框中物品大图标的偏移
---@param _HandleID int
---@param _OffsetX int @设置图片水平偏移量
---@param _OffsetY int @设置图片垂直偏移量
function GUI:ItemCtrlSetBigIconOffset(_HandleID, _OffsetX, _OffsetY)
end

---设置图片是否以中心点绘制
---@param _HandleID int
---@param _DrawCenter bool @true:中心点绘制。false：默认方式绘制
function GUI:ImageSetDrawCenter(_HandleID, _DrawCenter)
end

---为窗体控件添加自定义属性
---@param _HandleID int
---@param _Key string @ 属性名
---@param _Val string@ 属性值
function GUI:WndAddProperty(_HandleID, _Key, _Val)
end

---设置物品框中物品的GUIData句柄
---@param _HandleID int
---@param _ItemDataHandle long @物品的GUIData句柄
function GUI:ItemCtrlSetGUIData(_HandleID, _ItemDataHandle)
end

---清空物品框数据
---@param _HandleID int
function GUI:ItemCtrlClearItemData(_HandleID)
end

---创建多功能编辑框控件
---@param _ParentHandleID int
---@param _pWndItemID string
---@param _PosX int
---@param _PosY int
---@param _SizeX int
---@param _SizeY int
---@return int @句柄
---@nodiscard
function GUI:RichEditCreate(_ParentHandleID, _pWndItemID, _PosX, _PosY, _SizeX, _SizeY)
end

---设置多功能编辑框是否可以编辑
---@param _HandleID int
---@param _Flag bool
function GUI:RichEditSetEditEnable(_HandleID, _Flag)
end

---添加窗体控件的标记
---@param _HandleID int
---@param _Flag uint @标记类型
function GUI:WndAddFlags(_HandleID, _Flag)
end

---设置按钮移动到活动子控件上层
---@param _HandleID int
function GUI:ButtonSetMoveToActionTop(_HandleID)
end

---设置按钮的图片
---@param _Handle int
---@param _Info string
---@param _ImageId int
function ButtonSetImageID(_Handle, _Info, _ImageId)
end

---创建垂直滚动条
---@param _ParentHandleID int @父窗口句柄
---@param _pItemCtrlID string @新建滚动条的名称
---@param _ImageUp int @向上滚动按钮的图片资源id
---@param _ImageDown int @向下滚动的图片资源ID
---@param _ImageThumb int @滚动条的前景（即滑块）图片资源ID
---@param _ImageBack int @ 滚动条的背景图片资源ID
---@param _PosX int @新建垂直滚动条位置的横坐标
---@param _PosY int @新建垂直滚动条位置的纵坐标
---@param _Length int @新建垂直滚动条的高度
---@return int @句柄
function GUI:ScrollBarVCreate(_ParentHandleID, _pItemCtrlID, _ImageUp, _ImageDown, _ImageThumb, _ImageBack, _PosX, _PosY,
                              _Length)
end

---获取窗体控件的自定义参数
---@param _HandleID int @窗体控件的句柄
---@return uint @自定义参数值
function GUI:WndGetParam(_HandleID)
end

---获取按钮是否为灰色状态
---@param _HandleID int
function GUI:ButtonGetShowDisable(_HandleID)
end

---设置按钮是否为灰色状态
---@param _HandleID int
---@param _Flag bool
function GUI:ButtonSetShowDisable(_HandleID, _Flag)
end

---获取编辑框的文本内容
---@param _HandleID int
---@return string @OK：编辑框的文本内容，NO:`""`
function GUI:EditGetTextM(_HandleID)
end

---设置按钮判断鼠标是否在窗口的方式
---@param _HandleID int
---@param _Flag int 判断方式 `0`使用按钮图片判断。鼠标点击在按钮使用的图片上即判断为在窗口内。 其他值 使用控件自身判断。鼠标点击在按钮控件内即判断为在窗口内。
function GUI:ButtonSetCheckPoint(_HandleID, _Flag)
end

---设置窗台控件的激活状态
---@param _HandleID int
---@param _Flag bool @ `true`指定窗体控件为激活状态 `false`指定窗体控件为非激活状态
function GUI:WndSetActiveM(_HandleID, _Flag)
end

---设置物品框高亮图片
---@param _HandleID int @制定物品框的句柄
---@param _ImgId int @物品框高亮时显示的图片ID
function GUI:ItemCtrlSetHighlightImageID(_HandleID, _ImgId)
end

---设置滚动条步长
---@param _HandleID int @ 句柄
---@param _Step int @指定步长数值，默认的范围为`0~100`
function GUI:ScrollBarSetSetp(_HandleID, _Step)
end

---多功能文本框添加文本
---1. 此函数添加文本内容至指定的多功能编辑框控件。 多功能编辑框允许多次调用此函数添加多个文本条目，文本会按顺序依次追加（而不是覆盖先前的文本内容）。 根据所创建多功能编辑框的宽度，所有的文本会被自动拆分为多行显示。
---2. 建议在调用修改字体及字体大小的接口（例如：`GUI:RichEditSetCurFont`）之后，再调用此接口来添加文本。
---@param _HandleID int
---@param _Info string @新增的文本内容
function GUI:RichEditAppendString(_HandleID, _Info)
end

---设置多功能编辑框的字体
---@param _HandleID int
---@param _FontName string
function GUI:RichEditSetCurFont(_HandleID, _FontName)
end

---设置多功能编辑框默认的文本颜色
---@param _HandleID int
---@param _Color uint
function GUI:RichEditSetDefaultTextColor(_HandleID, _Color)
end

--- 设置窗体控件的标记
---@param _HandleID int
---@param _Flag uint
function GUI:WndSetFlagsM(_HandleID, _Flag)
end

---设置图片平铺显示
---@param _HandleID any
function GUI:ImageSetDrawFlat(_HandleID)
end

---设置窗体控件的文字偏移
---@param _HandleID int @指定窗口控件的句柄
---@param _X int @横坐标偏移量
---@param _Y int @纵坐标偏移量
function GUI:WndSetTextOffset(_HandleID, _X, _Y)
end

---创建列表框控件
---@param _ParentHandleID int @创建列表框控件
---@param _pWndID char @新建列表框的名称
---@param _PosX int @新建列表框位置的横坐标。
---@param _PosY int @新建列表框位置的纵坐标。
---@param _SizeX int @新建列表框的宽度。
---@param _SizeY int @新建列表框的高度。
---@return int @若创建成功，则返回新建列表框的句柄
function GUI:ListBoxCreate(_ParentHandleID, _pWndID, _PosX, _PosY, _SizeX, _SizeY)
end

---创建组合框控件
---@param _ParentHandleID int
---@param _pWndItemID char
---@param _ImageID int
---@param _PosX int
---@param _PosY int
---@param _SizeX int
---@param _SizeY int
---@param _Length int
---@return int
function GUI:ComboBoxCreate(_ParentHandleID, _pWndItemID, _ImageID, _PosX, _PosY, _SizeX, _SizeY, _Length)
end

---设置组合框下拉背景图片
---@param _Handle int
---@param _Info string
---@param _ImgId uint
function ComboBoxSetListFillImage(_Handle, _Info, _ImgId)
end

---设置组合框下拉背景图片
---@param _HandleID int
---@param _ImgId uint
function GUI:ComboBoxSetListFillImage(_HandleID, _ImgId)
end

---设置组合框中滚动条的图片
---@param _HandleID int
---@param _Up uint
---@param _Mid uint
---@param _Down uint
---@param _Back uint
function GUI:ComboBoxSetScrollBarImage(_HandleID, _Up, _Mid, _Down, _Back)
end

---设置复选框图片的缩放比例
---@param handle long @复选框句柄
---@param scale_x int @X轴方向缩放
---@param scale_y int @Y轴方向缩放
function GUI:CheckBoxSetImageScale(handle, scale_x, scale_y)
end

---设置窗体控件的MagicUI特效参数
---数值皆为倍率×10000
---@param _HandleID int
---@param _InitScale int
---@param _FinalScale int
---@param _ScaleInterval int
---@param _InitOpacity int
---@param _FinalOpacity int
---@param _OpacityInterval int
function GUI:WndSetMagicUIWithParam(_HandleID, _InitScale, _FinalScale, _ScaleInterval, _InitOpacity, _FinalOpacity,
                                    _OpacityInterval)
end

---设置物品框特效图片
---@param _HandleID int
---@param _ImgId int @物品框特效图片的ID
---@param _Scale float @特效图片的缩放比例 1为1倍，2为两倍
function GUI:ItemCtrlSetEffectImageID(_HandleID, _ImgId, _Scale)
end

---设置物品框的前景图片
---@param _HandleID int
---@param _ImgId int
function GUI:ItemCtrlSetFrontImageID(_HandleID, _ImgId)
end

---设置物品框前景图片的偏移
---@param _HandleID int
---@param _XOff int @图片的水平偏移量
---@param _YOff int @图片的垂直偏移量
function GUI:ItemCtrlSetFrontImageOffset(_HandleID, _XOff, _YOff)
end

---设置物品框中的物品是否显示为大图标
---@param _Handle int
---@param _Info string @指定物品框控件的描述
---@param _IsBigIcon bool @物品是否为大图标：`true`：是，`false`：不是
function RDItemCtrlSetBigIcon(_Handle, _Info, _IsBigIcon)
end

---获取物品框的图标类型
---@param _HandleID int
function GUI:ItemCtrlGetIconImageType(_HandleID)
end

---设置物品框中的物品是否能被拾起
---@param _Handle int
---@param flag bool
function GUI:ItemCtrlSetMouseEnableSelect(_Handle, flag)
end

---设置物品框中道具的颜色
---@param handle int @指定物品框控件的句柄
---@param color uint @要设置的颜色
function GUI:ItemCtrlSetColor(handle, color)
end

---设置物品框是否显示锁定图标
---@param _HandleID int @ 指定物品框控件的句柄
---@param _ShowLockImage bool @是否显示锁定图标 `true`：显示,`false`：不显示
function GUI:ItemCtrlSetShowLockImage(_HandleID, _ShowLockImage)
end

---设置物品框未生效状态的锁图标
---@param _HandleID int
---@param _LockImgID uint @锁图标的图片资源ID，若设置为`0`则不显示图标
---@param _OffsetX int
---@param _OffsetY int
---> 若偏移均设置为0，则图标显示位置默认为左上角
function GUI:ItemCtrlSetInvalidLockData(_HandleID, _LockImgID, _OffsetX, _OffsetY)
end

---设置物品框是否显示品质比较箭头
---@param _HandleID int @指定物品框控件的句柄
---@param _ShowQualityArrow bool @ `true`：显示,`false`：不显示
function GUI:ItemCtrlSetShowQualityArrow(_HandleID, _ShowQualityArrow)
end

---设置物品框中物品数量数字的格式
---@param _HandleID int @指定物品框控件的句柄
---@param _FontName string @字体名称 （即FontSetting.xml文件中的FontUseName字段的值）
---@param _OffsetX int @ 水平偏移量
---@param _OffsetY int @ 垂直偏移量
function GUI:ItemCtrlSetNumberConfig(_HandleID, _FontName, _OffsetX, _OffsetY)
end

---设置物品框显示绑定物品的锁的图标
---@param _ImageID uint @锁的图片资源ID，若为0则不显示
---@param _OffsetX int @锁X轴偏移
---@param _OffsetY int @锁图标Y轴偏移
---@param _ScaleX int @锁图标图片宽度缩放比例
---@param _ScaleY int @锁图标图片高度缩放比例
---缩放比例为： 将要设置的倍数乘以10000即为设置值
function GUI:ItemCtrlSetLockImage(_ImageID, _OffsetX, _OffsetY, _ScaleX, _ScaleY)
end

---设置物品框背景图片是否自适应显示
---@param _HandleID int
---@param _IsAdapt bool
function GUI:ItemCtrlSetBackImageIsAdapt(_HandleID, _IsAdapt)
end

---获取物品框是否可使用右键
---@param _HandleID int @指定物品框控件的句柄
---@return bool @true右键点击物品框使用物品 false右键点击物品框无任何作用
---即使获取为true，手游中右键点击物品框使用物品的功能已不再有效。
function GUI:ItemCtrlGetRBtnUse(_HandleID)
end

---获取物品框是否显示物品数量
---@param _HandleID int
---@return bool@`true`显示物品数量 `false`不显示物品数量
function GUI:ItemCtrlIsShowItemCount(_HandleID)
end

--- 获取物品框背景图片
---@param _HandleID int
---@return int @物品框背景图片ID
function GUI:ItemCtrlGetBackImageID(_HandleID)
end

---获取物品框中物品大图标的偏移
---@param _HandleID int
---@return bool
---此函数返回操作成功或失败。如操作成功，则获取的偏移量存储在`LuaRet`中。
---``` lua
--- LuaRet[1] --图片的水平偏移量；
--- LuaRet[2] --图片的垂直偏移量。
---```
function GUI:ItemCtrlGetBigIconOffset(_HandleID)
end

---获取物品框默认图片
---@param _HandleID int
---@return int @物品框默认图片ID
function GUI:ItemCtrlGetDefaultImage(_HandleID)
end

---获取物品框前景图片
---@param _HandleID int
---@return int @物品框前景图片ID
function GUI:ItemCtrlGetFrontImageID(_HandleID)
end

--- 获取物品框选中图片  （物品框高亮图片）
---@param _HandleID int
---@return int @物品框选中图片ID
function GUI:ItemCtrlGetHighlightImageID(_HandleID)
end

---获取物品框中物品的图标尺寸大小
---@param _GUIHandle int
--- 此函数无返回值
--- 获取的图标尺寸信息存储在全局变量LuaRet中。
---```lua
---LuaRet[1] -- 图标的宽度（单位为像素（px））
---LuaRet[2] -- 图标的高度（单位为像素（px））
---```
--- 若未使用接口`GUI:ItemCtrlSetIconSize`设置物品图标尺寸，则直接返回`-1`（为默认值）；
---若获取的图标宽度和高度均为`0`，则代表获取失败。
function GUI:ItemCtrlGetIconSize(_GUIHandle)
end

---设置列表框的列数
---@param _HandleID int @指定列表框控件的句柄
---@param _ColNum int @指定列数
function GUI:ListBoxSetColumnNum(_HandleID, _ColNum)
end

---设置列表框中某列的位置
---@param _HandleID int @指定列表框控件的句柄
---@param _ColumnIdx_ int @ 指定列号，0表示第一列
---@param _Pos int @指定位置
function GUI:ListBoxSetColumnPos(_HandleID, _ColumnIdx_, _Pos)
end

--- 设置列表框条目的水平偏移量
---@param _HandleID int @指定列表框控件的句柄
---@param _Offset int @条目的水平偏移量-
function GUI:ListBoxSetOffsetX(_HandleID, _Offset)
end

---设置列表框的条目行高
--- 此函数设置指定列表框控件中各个条目之间的垂直间隔，即行间距。
---@param _HandleID int @指定列表框控件的句柄
---@param _Offset int @行间距
--- 实际行高即为字体高度与行间距之和。
function GUI:ListBoxSetOffsetY(_HandleID, _Offset)
end

---设置窗体控件是否具有MagicUI特效
---@param _HandleID int
---@param _Type int @1：有，0：无
function GUI:WndSetMagicUI(_HandleID, _Type)
end

---创建菜单
---创建完成后默认不显示，需要调用`MenuShowPopupMenu`接口显示。
---@param _ParentID int @父窗口句柄
---@param _WndId string @新建菜单控件的ID
---@return int # 创建成功则返回新建菜单控件的句柄,创建失败则返回`0`
function GUI:MenuCreate(_ParentID, _WndId)
end

---添加菜单条目
---@param _ItemId int @添加条目的ID
---@param _TextInfo string @添加的条目文本
---@param _FlagImage uint @添加条目前面的图片
---@param _ParentId int @添加条目的菜单项ID 当此参数设置为`-1`时，表示此菜单没有父菜单项
---@param _ItemImg uint @添加条目的背景图片
---@return bool @`true`:菜单存在，`false`:菜单不存在
function GUI:MenuAddItem(_ItemId, _TextInfo, _FlagImage, _ParentId, _ItemImg)
end

---清空列表框所有内容
---@param _HandleID int @指定列表框控件的句柄
function GUI:ListBoxClear(_HandleID)
end

---向列表框中添加自定义颜色的条目
---@param _HandleID int @指定列表框控件的句柄
---@param _Str string @文本条目的内容
---@param _Color uint @ 文本颜色
function GUI:ListBoxAddString(_HandleID, _Str, _Color)
end

---获取列表框选中条目的行号
---@param _HandleID int
---@return int @选中条目的行号
function GUI:ListBoxGetCurSelLine(_HandleID)
end

---设置菜单隐藏或显示
--- 菜单句柄参数可通过全局变量Temporary来传递。
---@param _UseMousePos bool @`true`:表示在鼠标位置显示菜单,`false`表示不在鼠标位置显示菜单
---@return bool @ `true`菜单存在，`false`菜单不存在
function GUI:MenuShowPopupMenu(_UseMousePos)
end

---获取列表框制定行数和列数的条目内容
---@param _HandleID int
---@param _LineIdx int @条目行数的索引
---@param _ColIdx int @条目列数的索引
---@return string  #选中的条目内容
function GUI:ListBoxGetString(_HandleID, _LineIdx, _ColIdx)
end

---设置编辑框文本内容为指定的数字
---@param _HandleID int
---@param _Data int @要设置的数字
function GUI:EditSetInt(_HandleID, _Data)
end

---设置窗口在拖动物品时能否接受窗口事件
---@param _HandleID int @指定窗口控件的句柄
---@param _Flag bool @ true：能，false：不能
function GUI:WndSetCanDragItem(_HandleID, _Flag)
end

---设置物品框是否支持拖动物品操作
---@param _HandleID int @指定物品框控件的句柄
---@param _Flag bool  @是否支持拖动物品
function GUI:ItemCtrlSetCanDrag(_HandleID, _Flag)
end

---设置是否显示物品框中装备的TIps比较
---@param handle int
---@param enable bool
function GUI:ItemCtrlEnableCompareTips(handle, enable)
end

---设置按钮闪烁频率
---@param handle long
---@param shine_gradient int
function GUI:ButtonSetShineGradient(handle, shine_gradient)
end

---删除窗体控件中指定的定时器
---@param _Handle int @指定窗体控件的句柄
---@param _Info string @制定窗体控件的描述
---@param _ID int @要删除的定时器ID
---@return bool @OK：执行成功，false ；执行失败
function WndDelTimer(_Handle, _Info, _ID)
end

---获取窗体控件的屏幕坐标
---@param _HandleID int @窗口坐标
---@return bool @`true`：获取成功，`fasle` 获取失败
function GUI:WndGetScreenPos(_HandleID)
end

---设置图片控件的淡入或淡出下效果
---@param _HandleID int @指定图片控件的句柄
---@param _PosX int @淡入或淡出结束时图片空间的X坐标
---@param _PosY int @淡入或淡出结束时图片空间的Y坐标
---@param _Count int @效果持续时间，单位为毫秒（ms）
---@param _FadeIn bool @选择淡入还是淡出
---@param _WaitCount int @效果启动前的等待时间，单位为毫秒（ms
---@param _State int @ 效果类型。 输入范围为0-255，数字将被转换为二进制，根据二进制值来进行判断。 从右至左： 第一位为1有淡入或淡出的效果 第二位无实际效果，可忽略 第三位为1X轴方向放大或缩小。淡入时为放大，淡出时为缩小。 第四位为1Y轴方向放大或缩小。淡入时为放大，淡出时为缩小。
function GUI:ImageAddTracePoint(_HandleID, _PosX, _PosY, _Count, _FadeIn, _WaitCount, _State)
end

---设置图片空间的动画播放
---@param _HandleID int @指定图片空间的句柄
---@param _Speed int @ 动画每帧的时间间隔，单位为毫秒
---@param _AnimType int @动画类型
---1循环播放动画
---2动画播放完毕，停留在第一帧
---3动画播放完毕，停留在最后一帧
---4如在函数`ImageSetAnimate`中定义了动画循环次数，则播放指定次数的动画。播放完毕后，按`_AnimCallBackFunc`参数中定义的动作执行。
function GUI:ImageSetImageAnim(_HandleID, _Speed, _AnimType)
end

---设置图片控件的锚点位置
---@param _HandleID int @指定图片控件的句柄
---@param _AnchorEnable int @是否更改图片的锚点坐标 ，0 不更改 1 更改
---@param _AnchorPosX int @int 定义锚点横坐标的位置
---@param _AnchorPosY int @int 定义锚点纵坐标的位置
function GUI:ImageSetCenter(_HandleID, _AnchorEnable, _AnchorPosX, _AnchorPosY)
end

---设置图片缩放和旋转的先后顺序
---@param _GUIHandle int @ 句柄
---@param _flag bool @ `true`，先缩放后旋转；`false`，先旋转后缩放
function GUI:ImageSetTransfromFirstScale(_GUIHandle, _flag)
end

---添加窗口特效
---@param _Handle int @支撑块窗体控件的句柄
---@param _Info string @ 指定窗体控件的描述
---@param _ImageId int @特效的图片资源ID
---@param _X int @特效相对父控件在水平方向上的偏移
---@param _Y int @ 特效相对父控件在垂直方向上的偏移
---@param _Elapse int@特效播放时间间隔 ；单位为毫秒，默认值为`100`
---@param count int @ 指定特效播放次数 0 默认值（一直循环播放特效）
function WndAddEffect(_Handle, _Info, _ImageId, _X, _Y, _Elapse, count)
end

---设置物品框特效图片
---@param _Handle int @指定物品框控件的句柄
---@param _Info string @指定物品框控件的描述
---@param _ImgId int @物品框特效图片的ID
---@param _Scale float @特效图片的缩放比例
function RDItemCtrlSetEffectImageID(_Handle, _Info, _ImgId, _Scale)
end

---设置物品框是否显示品质背景框
---@param handle long @指定物品框控件的句柄
---@param flag bool @是否显示品质背景框
function GUI:RDItemCtrlShowQualityBG(handle, flag)
end

---设置带滚动调的窗口中滚动条的图片
---@param _Handle int @句柄
---@param up uint @滚动条向上滚动的按钮的图片资源ID
---@param mid uint @滚动条滑块图片资源ID
---@param down uint @滚动条向下滚动的按钮的图片资源ID
---@param _BackImageID uint @ 滚动条背景图片资源ID
function GUI:ScrollWndSetScrollBarImage(_Handle, up, mid, down, _BackImageID)
end

---设置图片控件检测点击区域类型
---@param _Handle int @指定图片控件的句柄
---@param _Info string @ 指定图片空间的描述
---@param _Flag int @检测点击的类型
--- 手游和端游：
---
--- 0. 不检测
--- 1. （默认值）检测点击位置是否在图片上（忽略透明度）
--- 2. 检测点击位置是否在控件范围内
---
--- H5：
--- 1. （默认值）检测点击位置是否在图片上（忽略透明度）
--- 2. 其他检测点击位置是否在控件范围内
function ImageSetCheckPoint(_Handle, _Info, _Flag)
end

---设置按钮在特定状态的文字颜色
---@param _HandleID int @ 指定按钮控件的句柄
---@param _State int @ 指定按钮的状态 ：
--- - `0` 普通状态
--- - `1` 鼠标悬停
--- - `2` 鼠标按下
--- - `3` 禁用状态
---@param _Color uint @ [颜色值](https://tool.173uu.com/#/scriptdocument/0?name=g2652&t=1719559062740)
function GUI:ButtonSetStateTextColor(_HandleID, _State, _Color)
end

---获取窗体控件的可见状态获取
---@param _Handle int @指定窗体控件的句柄
---@param _Info string @指定窗体控件的描述
---@return bool @`true` 指定窗体控件为可见状态，`false`指定窗体控件为不可见状态
function WndGetVisibleM(_Handle, _Info)
end

---住校多功能编辑框的控制字符串
---@param _HandleID int@指定多功能编辑框控件的句柄
---@param _ControlString string @控制字符串内容 目前仅支持参数值 `"FACE"`
function GUI:RichEditUnRegisterControlString(_HandleID, _ControlString)
end

---住校多功能编辑框的控制字符串
---@param _HandleID int@指定多功能编辑框控件的句柄
---@param _ControlString string @控制字符串内容 目前仅支持参数值 `"FACE"`
function GUI:RichEditRegisterControlString(_HandleID, _ControlString)
end

---清空多功能编辑框的文本内容
---@param _HandleID int @句柄
function GUI:RichEditClear(_HandleID)
end

---设置指定窗体控件的混色类型
---@param handle int @指定窗体控件的句柄
---@param blendtype int 混色类型值（1-6）
function GUI:WndSetBlendType(handle, blendtype)
end

---设置图片空间的透明度
---@param _HandleID int @句柄
---@param _Alpha uint @ 透明度
function GUI:ImageSetAlpha(_HandleID, _Alpha)
end

---获取按钮是否为激活的页签按钮
---@param _HandleID int @指定按钮控件的句柄
---@return bool @按钮是否为激活状态
function GUI:ButtonGetIsActivePageBtn(_HandleID)
end

---设置列表框中滚动条的图片
---@param _HandleID int @指定列表框的句柄
---@param _Up uint @滚动条向上按钮图片资源ID
---@param _Mid uint @滚动滑块图片资源ID
---@param _Down uint @滚动条向下按钮图片资源ID
---@param _BackImageID uint  @滚动条背景图片资源ID
function GUI:ListBoxSetScrollBarImage(_HandleID, _Up, _Mid, _Down, _BackImageID)
end

---获取窗口大小
---@param _Handle int @制定窗体控件的句柄
---@param _Info string @ 指定窗体控件的描述
---@return bool @ `true` 获取成功， `fasle`获取失败 此函数返回操作成功或失败。如操作成功，则获取窗口大小的数值存储在LuaRet中。
--- - `LuaRet[1]`窗口的宽度，单位为像素（px）；
--- - `LuaRet[2]`窗口的高度，单位为像素（px）。
function WndGetSizeM(_Handle, _Info)
end

---获取列表框中的条目个数
---@param _HandleID int @指定列表框控件的句柄
---@return int @条目的个数
function GUI:ListBoxGetLineCount(_HandleID)
end

---设置列表框的选中条目式
---@param _HandleID int @指定列表框控件的句柄
---@param _LineIdx int @条目行数的索引 ，索引从`0`开始
---@param _ColIdx int @条目列数的索引，索引从`0`开始
function GUI:ListBoxSetCurSel(_HandleID, _LineIdx, _ColIdx)
end

---获取列表框雪中条目的列号
---@param _HandleID int
---@return int @选中条目的列号
function GUI:ListBoxGetCurSelCol(_HandleID)
end

---获取列表框中指定行数第一列的条目内容
---@param _HandleID int
---@param _LineIdx int
---@return string
function GUI:ListBoxGetLineString(_HandleID, _LineIdx)
end

-- ---获取指定类型的排行榜数据
-- ---@param type uint8 @排行榜类型
-- ---@return table @排行榜信息
-- function lualib:GetTopList(type)
-- end

--
function GUI:ImageSetClipRect(_HandleID, _StartX, _EndX, _StartY, _EndY)
end

---设置按钮的显示角度
---@param _Handle long 指定按钮控件的句柄
---@param _IsRotate boolean
---@param _Roation int
function GUI:ButtonSetRotate(_Handle, _IsRotate, _Roation)
end

---在窗体控件中添加定时器
---@param _HandleID int
---@param _ID int
---@param _Elapse int
---@param _ScriptHandle string
---@return bool
function GUI:WndAddTimer(_HandleID, _ID, _Elapse, _ScriptHandle)
end

--- 在窗体控件中添加定时器（扩展）
---@param _HandleID int
---@param _ID int
---@param _Elapse int
---@param _ScriptHandle string
---@param _Param string
---@return bool
function GUI:WndAddTimerEx(_HandleID, _ID, _Elapse, _ScriptHandle, _Param) end

---根据GUID填充物品框数据
---@param _Handle number
---@param _Info string
---@param _ItemGUID string
function GUI:ItemCtrlSetGUIDataByGUID(_Handle, _Info, _ItemGUID)
end

---设置按钮上显示的图片缩放
---@param handle int @指定按钮控件的句柄
---@param scale_x float @ X 轴方向上的比例：默认原图是1.0
---@param scale_y float @ Y轴方向上的比例：默认原图是1.0
function GUI:ButtonSetDrawPostTextureScale(handle, scale_x, scale_y)
end

---设置按钮的缩放比例
---@param _HandleID int @指定按钮控件的句柄
---@param _XScale int @ X方向上的缩放，
---@param _YScale int @ Y方向上的缩放
function GUI:ButtonSetScale(_HandleID, _XScale, _YScale)
end

---设置是否为激活的页签按钮
---@param _Handle int @指定按钮控件的句柄
---@param _Info string
---@param _Flag bool
function ButtonSetIsActivePageBtn(_Handle, _Info, _Flag)
end

---设置图片控件的旋转和缩放
---@param _HandleID int @指定图片控件的句柄
---@param _ScaleX int @宽度缩放比例
---@param _ScaleY int @高度缩放比例
---@param _Roation int @旋转的角度
function GUI:ImageSetTransfromplus(_HandleID, _ScaleX, _ScaleY, _Roation)
end

--- 设置按钮是否以中心点为锚点进行绘制
---@param _Handle int
---@param _DrawCenter bool
function GUI:ButtonSetDrawCenter(_Handle, _DrawCenter)
end

---想列表框中添加条目
---@param _HandleID int @列表框的控件的句柄
---@param _Str string @ 文本条目的内容
function GUI:ListBoxAddStr(_HandleID, _Str)
end

---设置窗体控件的Tip内容
---@param _HandleID int @ 指定窗体控件的句柄
---@param _TipInfo string @Tip内容
function GUI:WndSetTipInfo(_HandleID, _TipInfo)
end

---根据物品的GUIData句柄填充物品框
---@param _Handle int @指定物品框控件的句柄
---@param _Info string @只拆开物品框控件的描述
---@param _GUIDataHandle int @物品的GUIData句柄
---@return bool @true:ok,fasle:no
function RDItemCtrlFillGUIData(_Handle, _Info, _GUIDataHandle)
end

---注册窗体控件的事件回调函数（扩展）
---@param _HandleID int @指定窗体控件的句柄
---@param _Msg int @制定窗体控件的事件ID
---@param _FuncName string @回调函数名
---@param _Param string @预设的回调参数，将传递至回调函数的第5个参数
---@return bool @true:控件存在,fasle:控件不存在
function GUI:WndRegistScriptEx(_HandleID, _Msg, _FuncName, _Param)
end

---设置多功能编辑框是否可以编辑
---@param _Handle int @指定多功能编辑框控件的句柄
---@param _Info string @指定多功能编辑框的描述
---@param _Flag bool @ 是否可以编辑：`true`可以，`fasle`不可以
function RichEditSetEnable(_Handle, _Info, _Flag)
end

---过功能编辑框添加文本
---@param _Handle int @指定多功能编辑框控件的句柄
---@param _Info string @指定多功能编辑框控件的描述
---@param _Text string @文本内容
function RichEditAppendString(_Handle, _Info, _Text)
end

---提高窗口控件的显示层级
---@param _HandleID int @句柄
function GUI:WndAscOrder(_HandleID)
end

---设置窗体控件是否响应点击操作
---@param _HandleID int @指定窗体控件的句柄
---@param _Flag bool @是否响应点击操作
function GUI:WndSetMouseEnableIN(_HandleID, _Flag)
end

---将活动窗口移动至最上层
---@param _HandleID int @制定活动窗口的句柄
function GUI:WndBringTopM(_HandleID)
end

---设置图片是否以灰度显示
---@param _HandleID int @图片控件的句柄
---@param _Flag bool @是否灰度显示
function GUI:ImageSetGray(_HandleID, _Flag)
end

---创建窗口
---此函数创建的窗口一般只作为父窗口用，不显示贴图资源，也不具备一些带上下滚动条等高级属性
---@param _ParentHandleID int @父窗口句柄
---@param _ID string @新建窗口的名称处
---@param _ImageID uint @新建窗口的图片资源ID，此参数不起作用，一般设置为0
---@param _X int @新建窗口位置的横坐标
---@param _Y int @新建窗口位置的纵坐标
---@param _Order int @窗口描绘的层级：数值越大，窗口显示越靠前（此参数只支持手游，端游忽视此参数）
---@return int @新建窗口的句柄
function GUI:WndCreateGUIItem(_ParentHandleID, _ID, _ImageID, _X, _Y, _Order)
end

---添加控件的动作
---@param handle int @指定窗体控件的句柄
---@param action string @Json格式的动作配置
---@return boolean
---错误信息会保存在LuaRet中
function GUI:WndAddAction(handle, action)
end

---自动调整窗体控件的位置和大小
---端游中，程序根据当前用户设置的分辨率，与1024×768的比值计算一个缩放因子，再根据此缩放因子调整窗体控件的位置和大小。
---@param _HandleID int @指定窗体控件的句柄
---@param _ChangePos bool@是否调整窗体控件位置
---@param _ChangeSize bool@是否调整窗体控件大小
function GUI:WndSetPosByDeviceSize(_HandleID, _ChangePos, _ChangeSize)
end

---获取物品框数据是否自动管理
---@param _HandleID int @指定物品框控件的句柄
---@return bool @`true`自动管理，`false`脚本管理
function GUI:ItemCtrlGetItemDataAutoManager(_HandleID)
end

---获取物品框中物品的GUIData句柄
---@param _HandleID int
---@return int # 执行成功则返回物品的GUIData句柄 执行失败则返回 `0`
function GUI:ItemCtrlGetGUIData(_HandleID)
end

---获取所有子控件的类型和句柄
---@param _HandleID int @指定父控件的句柄
---@return bool @获取是否成功
function GUI:WndGetChildWnd(_HandleID)
end

---获取按钮是否为机场偶的页签按钮
---@param _Handle int @指定按钮控件的句柄
---@param _Info string @指定按钮控件的描述
---@return bool @按钮是否为激活的页签按钮
function ButtonGetIsActivePageBtn(_Handle, _Info)
end

---创建树形控件
---@param _Handle int
---@param _Info string
---@param _ImageId int
---@param _PosX int
---@param _PosY int
---@param _SizeX int
---@param _SizeY int
---@param _ID string
---@param _Align int
---@param _HintInfo string
---@return int
function CreateTreeCtrl(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
end

---删除窗体控件中所有的定时器
---@param _HandleID int @窗口句柄
function GUI:WndDelAllTimer(_HandleID)
end

---降低窗口控件的渲染层级
---@param _HandleID int @指定窗体控件的句柄
function GUI:WndDescOrder(_HandleID)
end

---重新计算窗口大小
---@param _HandleID int
function GUI:WndCalSize(_HandleID)
end

---设置九宫格拼接图片
---@param _HandleID int32
---@param _LeftUp int32
---@param _RightUp int32
---@param _LeftDown int32
---@param _RightDown int32
---@param _Mid int32
---@param _Up int32
---@param _Down int32
---@param _Left int32
---@param _Right int32
---@param _Scale boolean @在拼接时，九宫格的4个角尺寸不变（若九宫格整体尺寸小于4个角的尺寸，则会进行裁剪），其余部分会根据此参数设置的拼接方式进行拼接，具体说明如下。
--- - true伸缩模式（为手游默认值）:4条边以及中心区域会拉伸（或者缩放）自适应，适合缩放变形后不会影响效果的图片资源；
--- - false平铺模式（为端游默认值）：4条边以及中心区域会平铺（或者裁剪）自适应，适合裁剪拼接任意区域后不会突兀的图片资源。
function GUI:ImageSetAroundImageEx(_HandleID, _LeftUp, _RightUp, _LeftDown, _RightDown, _Mid, _Up, _Down, _Left, _Right,
                                   _Scale)
end

---设置窗体是否可见
---@param _Handle int32
---@param _Info string
---@param _Flag bool
function WndSetVisibleM(_Handle, _Info, _Flag)
end

---设置拖动窗口是否显示透明度
---@param _HandleID int #指定窗口控件的句柄
---@param _Flag bool @拖动窗口是否显示透明度
function GUI:WndSetCascadeOpacity(_HandleID, _Flag)
end

---获取物品框中物品的属性值
---@param _Handle int @指定物品框控件的句柄
---@param _Info string @指定物品框控件的描述
---@param _PropType int @GUIData属性类型
---@return any @ 获取成功则返回物品对应属性的属性值，失败则返回0
function RDItemCtrlGetGUIDataPropByType(_Handle, _Info, _PropType)
end

---设置窗口为弹出菜单
---@param _HandleID int @指定窗体控件的句柄
function GUI:WndSetMobilePopupMenu(_HandleID)
end

---移除所有子控件
---@param _HandleID int @ 父窗口句柄
function GUI:WndDlgClear(_HandleID)
end

---设置多功能编辑框中文本的行高
--- > 如果要设置多功能编辑框中文本的行间距，要先使用此api设置行高，然后才能添加文本
---@param _HandleID int @指定多功能编辑框控件的句柄
---@param _Offset int @行高
function GUI:RichEditSetOffSet(_HandleID, _Offset)
end

---播放多功能编辑框的气泡动画
---@param _HandleID int @指定多功能编辑框控件的句柄
---@param flg bool @是否开始播放气泡动画
---@param filename string @气泡动画的名称
function GUI:RichEditPlayBubbleAnim(_HandleID, flg, filename)
end

---设置复选框的文本内容
---@param _HandleID int
---@param _ControlString string
function GUI:CheckBoxSetText(_HandleID, _ControlString)
end

---获取窗体控件的自定义属性
---@param _HandleID int #指定窗体控件的句柄
---@param _Key string #属性名称
---@return string # 指定自定义属性的属性值
function GUI:WndGetProperty(_HandleID, _Key)
end

---将窗口移动至最下层
---@param _HandleID int @指定窗口的句柄
function GUI:WndMoveToParentBottom(_HandleID)
end

--- 获取多功能编辑框中被点击的文本
---@param _HandleID int @ 句柄
---@return string @ 执行成功则返回所点击的文本内容 执行失败则返回`""`
function GUI:RichEditGetSelectClickString(_HandleID)
end

---组合框添加条目
---@param _Handle int  @句柄
---@param _Info string @ 描述
---@param _Text string @文本内容
---@param _Id int  @添加条目的ID
function ComboBoxAddString(_Handle, _Info, _Text, _Id)
end

---获取组合框中雪中条目的ID
---@param _HandleID int @指定组合框控件的句柄
---@return int @组合框中选中条目的ID
function GUI:ComboBoxGetCurSelectID(_HandleID)
end

---移除带滚动条下所有子控件
---@param WndID int @指定滚动窗口的句柄
function GUI:WndScrollWndClear(WndID)
end

---设置组合框中选中的条目
---@param _HandleID int @句柄
---@param _Index int @条目： 从0开始
function GUI:ComboBoxSetCurSelect(_HandleID, _Index)
end

---清空组合框控件内容
---@param _Handle int @句柄
---@param _Info string @描述
function ComboBoxClear(_Handle, _Info)
end

---获取窗体控件的自定义参数
---@param _HandleID int @句柄
---@return uint @函数执行成功则返回自定义参数的数值。否则执行失败返回0。
function GUI:WndGetIDParam(_HandleID)
end

--- 设置控件文字是否使用描边
---@param _Handle int @按键句柄
---@param _used bool@ 是否使用描边
function GUI:WndSetUseTextGrow(_Handle, _used)
end

---设置多功能编辑框的背景图片
---@param _HandleID int @句柄
---@param _LeftUp uint
---@param _RightUp uint
---@param _LeftDown uint
---@param _RightDown uint
---@param _Mid uint
---@param _Up uint
---@param _Down uint
---@param _Left uint
---@param _Right uint
function GUI:RichEditSetMultiBackImage(_HandleID, _LeftUp, _RightUp, _LeftDown, _RightDown, _Mid, _Up, _Down, _Left,
                                       _Right)
end

---获取鼠标相对指定窗口的位置
---@param _HandleID int @指定窗体控件的句柄
--- 获取的坐标位置存储在LuaRet中。
--- `LuaRet[1]`横坐标（X）；
--- `LuaRet[2]`纵坐标（Y）。
function GUI:GetWndMousePos(_HandleID)
end

--- 设置多功能编辑框文本区域大小
---@param _HandleID int
---@param _PosX int
---@param _PosY int
---@param _W int
---@param _H int
function GUI:RichEditSetContentRect(_HandleID, _PosX, _PosY, _W, _H)
end

---设置编辑框允许的最大字符个数
---@param _HandleID int @编辑框控件的句柄
---@param _MaxCount int @允许输入的最大字符个数 ，若 此参数为0，则代表对编辑框控件最大可显示字节数不做限制
--- - 若没有使用接口设置编辑框允许输入的最大字符个数，则端游和手游均默认编辑框控件允许输入的最大字符个数为256。
--- - 若使用此接口（或者接口Lua_EditSetMaxCharNum）设置编辑框允许输入的最大字符个数，则编辑框控件允许输入的最大字符个数为该接口设置的值。
--- - 当编辑框控件的文本内容对应的字符个数超出允许输入的最大字符个数时，会显示未超出部分的文本内容。
--- - 一个汉字相当于两个字符。
function GUI:EditSetMaxCharNum(_HandleID, _MaxCount)
end

---获取窗体空间的可见状态
---@param _Handle int @指定窗体空间的句柄
---@param _Info string @指定窗体空间的描述
---@return bool @ `true` 指定窗体控件为可见状态 ,`false` 指定窗体控件为不可见状态
function WndGetVisibleM(_Handle, _Info)
end

---获取窗体控件的文字
---@param _HandleID int @指定窗体控件的句柄
---@return string @文字内容
function GUI:WndGetText(_HandleID)
end

---设置窗口可见性
--- > 未在文档内，因代码调用而添加
---@param _Handle int32 @指定窗体控件的句柄
---@param _Info string @必定窗体控件的描述
---@param _Flag bool @`true` 设置为可见状态 ,`false`设置为不可见状态
function WndSetVisible(_Handle, _Info, _Flag)
end

---获取窗体空间的用户自定义数据
---@param _HandleID int @窗体控件的句柄
---@param _DataIndex int @自定义数据的索引 从`0`开始，依次类推
function GUI:WndGetUserData(_HandleID, _DataIndex)
end

---获取多功能编辑框的所有文本内容
---@param _HandleID int @ 指定多功能编辑框控件的句柄。
---@return string @ 多功能编辑框所有的文本内容。
function GUI:RichEditGetAllString(_HandleID)
end

--- 获取多功能编辑框中文本控件的个数
---@param _HandleID int @指定多功能 编辑框控件的句柄
---@return int  @ 执行成功则返回文本控件的个数 执行失败则返回0
function GUI:RichEditGetTextItemCount(_HandleID)
end

---设置 按钮文字是否 允许左上方溢出
--- 此函数设置按钮文字是否允许往左上方向溢出。 默认情况下，当按钮文字长度超过按钮长度时，文字无法向左溢出。
---@param _HandleID int @指定按钮空间的句柄
---@param _CanOverflow bool@是否 允许溢出 `true`允许 ，`false`不允许
function GUI:ButtonSetTextCanOverflow(_HandleID, _CanOverflow)
end

---设置滑动条当前的百分比
--- > 2D 端游不可用
---@param _HandleID int @指定滑动条空间的句柄
---@param _percent int @指定百分比的数值
function GUI:SlideSetPercent(_HandleID, _percent)
end

---获取滑动条当前的百分比
---@param _HandleID int @指定滚动条控件的句柄
---@return int @滑动条当前所处位置的百分比数值
function GUI:SlideGetPercent(_HandleID)
end

---创建滑动条控件
---@param _ParentHandleID int @父窗口句柄
---@param _pWndID string @控件名称
---@param _backImage uint @背景图片资源ID
---@param _slideImage uint @前景图片资源ID
---@param _thumbImage uint @滑块的图片资源ID
---@param _PosX int @新建滑动条位置的横坐标
---@param _PosY int @新建滑动条位置的纵坐标
---@param _SizeX int @新建滑动条的宽度
---@param _SizeY int @新建滑动条的高度
---@return int @创建成功则返回新建滑动条控件的句柄，创建失败返回0
function GUI:SlideCreate(_ParentHandleID, _pWndID, _backImage, _slideImage, _thumbImage, _PosX, _PosY, _SizeX, _SizeY)
end

---激活指定类型的窗口
---@param _Handle int @父窗口句柄
---@param _Info string @父窗口的 描述
---@param _WindowType int @窗口类型的索引值
---@return bool @`true`执行成功，`false`执行失败
function WndActiveItemWindow(_Handle, _Info, _WindowType)
end

---打开指定类型的物品窗口
---@param _Handle int @指定窗口空间的句柄
---@param _Info string  @ 指定窗体控件的描述
---@param _WindowType int @窗口类型
---@param _LuaFunc_GetGUIDList string @获取物品窗口中要现实的物品的函数接口名
---@return bool @`true`执行成功，`false`执行失败
--- > 如操作成功，获取的当前队列最前的物品窗口的ID（类型：`int`）存储在全局变量`LuaRet`中。
function WndOpenItemWindow(_Handle, _Info, _WindowType, _LuaFunc_GetGUIDList)
end

--- 清除物品框中已有的物品数据
---@param _Handle int @指定物品框空间的句柄
---@param _Info string @指定物品框的描述
---@return bool @
function RDItemCtrlClearGUIData(_Handle, _Info)
end

---设置编辑框的文本内容
---@param _Handle int  # 置顶编辑框控件的句柄
---@param _Info string # 置顶编辑框控件的描述
---@param _Text string # 文本内容
function EditSetTextM(_Handle, _Info, _Text) end

---设置编辑框文本颜色
---@param _Handle int @指定编辑框控件的句柄
---@param _Info string # 置顶编辑框控件的描述
---@param _Color uint # 文本颜色，具体请参见**颜色字符串**界面
function EditSetTextColor(_Handle, _Info, _Color) end

---设置图片是否镜像翻转
---@param _HandleID int # 指定图片控件的句柄
---@param _FlipX bool # 水平翻转
---@param _FlipY bool # 垂直翻转
function GUI:ImageSetFlip(_HandleID, _FlipX, _FlipY) end

---获取图片空间的图片资源ID
---@param _HandleID int @指定图片控件的句柄
---@return int @ 获取成功则返回指定图片控件的图片资源ID , 获取失败则返回`0`
function GUI:ImageGetImageID(_HandleID)
end

---获取图片控件检测点击区域这类型
---手游不适用
---@param _HandleID int @指定图片控件的句柄
---@return int @返回检测点击的类型
function GUI:ImageGetCheckPoint(_HandleID) end

---设置复选框文本是否垂直居中
---@param handle int @ 句柄
---@param is_center_text boolean @是否垂直之中，
--- - `true` :垂直居中
--- - `false` : 不居中
function GUI:CheckBoxSetCenterTextVertically(handle, is_center_text) end

---删除列表框中指定的标目
---@param _HandleID int @句柄
---@param _LineIdx int @要删除的条目索引，索引从`0`开始
function GUI:ListBoxDelString(_HandleID, _LineIdx)
end

---设置全部菜单条目是否可见
---菜单句柄参数可通过全局变量`Temporary`来传递。
---@param _Flag boolean
---@return boolean
function GUI:MenuSetAllItemVisiable(_Flag) end

---获取菜单
---@param _HandleID any
function GUI:MenuGetMenu(_HandleID) end

---设置控件文字是否使用描边
---改接口已过期，请使用：`GUI:WndSetUseTextGrow(_Handle,_used)`
---@param _Handle int # 句柄
---@param _used boolean # 是否描边 `true` 使用描边 ， `false` 不适用描边
function GUI:EditSetUseTextGrow(_Handle, _used) end

---清除窗体控件的事件回调函数
---@param _HandleID int #  指定窗体控件的句柄
---@param _Msg int # 指定窗体控件的事件ID
---@return bool # `true` 控件存在， `false`控件不存在
function GUI:WndClearScript(_HandleID, _Msg)
end

---设置编辑框是否为 数字编辑框
---@param _HandleID int
---@param _Flag bool
function GUI:EditSetBNumber(_HandleID, _Flag)
end

---获取物品框中物品的属性值
---@param _HandleID int # 指定物品框控件的句柄
---@param _PropType GUIDataPropType # GUIData属性类型
---@return boolean
--- >  此函数返回操作成功或失败。如操作成功，则获取的物品的GUIData属性值存储在全局变量LuaRet中。
function GUI:ItemCtrlGetGUIDataPropByType(_HandleID, _PropType)
end

--- 设置编辑框控件中文本描边颜色
---@param _HandleID int #指定编辑框控件的句柄
---@param _Color uint # 文本的描边颜色
function GUI:EditSetTextGrowColor(_HandleID, _Color) end

--- 设置窗体控件的名称
---@param _HandleID int #句柄
---@param _NewId string # 要设置的窗体控件名称
function GUI:WndSetIDM(_HandleID, _NewId) end

--- 设置多功能编辑框是否启用重新渲染文本
---@param _HandleID int # 句柄
---@param _Enable bool # 是否启用重新渲染文本
function GUI:RichEditEnableInvalidateData(_HandleID, _Enable) end

--- 设置编辑框中可输入的最大数值
---@param _HandleID int
---@param _Type
---| 0 # 普通编辑框
---| 1 # 不受最大字符数限制的数字编辑框
---| 2 # 不受最大字符数限制的货币数字编辑框
---| -1 # 受最大字符数限制的数字编辑框
---| -2 # 受最大字符数限制的货币数字编辑框
---@param _Number string # 最大数值
--- > 当参数_Type设置为`0`时，此参数不生效。
---
--- > 在参数_Type设置为-1或-2的前提下，若参数_Number设置的数值对应的字符数大于此编辑框控件允许输入的字符数，则实际可输入的最大数值为当前字符数所对应的最大值，具体可参考右侧示例。
function GUI:EditSetMaxNumber(_HandleID, _Type, _Number) end

--- 设置编辑框的光标位置
---@param _HandleID int
---@param _CurSorPos int # 光标位置 若此参数设置为`n`，则光标会显示在第`n`个字符后面。
function GUI:EditSetCurSorPos(_HandleID, _CurSorPos) end

--- 设置编辑框中要选择的内容的起始位置
---@param _HandleID int
---@param select_pos int 要选择的内容的起始位置 ,若此参数设置为`n`，则从第`n+1`个字符开始选择。
function GUI:EditSetSelectPos(_HandleID, select_pos) end

---CheckBoxGetAutoChange
---@param _HandleID int
---@return bool # `true`  可改变， false不可改变
function GUI:CheckBoxGetAutoChange(_HandleID) end

--- 设置多功能编辑框控件中文本的描边颜色
---@param _HandleID int
---@param _Color uint
function GUI:RichEditSetTextGrowColor(_HandleID, _Color) end

--- 设置指定多功能编辑框超链接文字的颜色
---@param _HandleID int
---@param _Flag
---| `1` # 选中链接的颜色（即高亮的颜色）
---| `2` # 可选择字符串链接的颜色（即SELECT标签中的文字）
---| `3` # 标题链接的颜色（即TITLE标签中的文字）
---| `4` # 名字链接的颜色（即NAMELINK标签中的文字）
---| `5` # 普通链接的颜色（即LINK标签中的文字）
---| `6` # NPC链接的颜色（即NPCLINK标签中的文字）
---| `7` # 物品链接的颜色（即ITEMLINK标签中的文字）
---| `8` # UI链接的颜色（即UILINK标签中的文字）
---| `9` # 关闭链接的颜色（即CLOSE标签中的文字）
---@param _ColorStr string
function GUI:RichEditSetLinkColor(_HandleID, _Flag, _ColorStr) end

--- 删除窗体控件中指定的定时器
---@param _HandleID int
---@param _ID int
---@return bool #执行结果
function GUI:WndDelTimer(_HandleID, _ID) end

--- 删除窗体控件的自定义属性
---@param _HandleID int
---@param _Key string #属性名称
function GUI:WndDelProperty(_HandleID, _Key) end

--- 设置按钮是否为激活状态
---@param _HandleID int
---@param _Flag boolean
function GUI:ButtonSetIsActiveBtn(_HandleID, _Flag) end

--- 根据JSON字符串填充物品框物品
---@param _HandleID int
---@param _JsonString string #Json字符串
function GUI:ItemCtrlSetJson(_HandleID, _JsonString) end

--- 设置编辑框中文本的行间距
---@param _HandleID int # 指定编辑框控件的句柄
---@param _Offset int # 行间距，单位为（`px`）
function GUI:EditSetOffSet(_HandleID, _Offset) end

--- 设置窗口为弹出菜单
---@param _HandleID int #指定窗体控件的句柄
function GUI:WndSetPopupMenu(_HandleID) end

--- 设置图片控件颜色
---@param _HandleID int # 指定图片控件的句柄
---@param _ImageColor uint # 指定图片控件的颜色
function GUI:ImageSetColor(_HandleID, _ImageColor) end

--- 设置组合框中编辑框的大小
---@param _HandleID int
---@param _Width int
---@param _Height int
function GUI:ComboBoxSetEditSize(_HandleID, _Width, _Height) end

--- 设置组合框控件固定的下拉背景高度
---@param _HandleID int
---@param _Length int # 单位为像素
function GUI:ComboBoxSetFixListLength(_HandleID, _Length) end

--- 清空组合框控件内容
---@param _HandleID int
function GUI:ComboBoxClear(_HandleID) end

--- 设置按钮上的图片的偏移量
---@param handle int
---@param px int # X轴方向上中心偏移
---@param py int # Y轴方向上中心偏移
function GUI:ButtonSetDrawPostTextureOffset(handle, px, py) end

--- 设置图片控件的裁剪动画
---@param _HandleID int
---@param _StartX int # `0-1`
---@param _StartY int # `0-1`
---@param _EndX int # `0-1`
---@param _EndY int # `0-1`
---@param _Speed int # `0-1`
function GUI:ImageSetClipAnim(_HandleID, _StartX, _StartY, _EndX, _EndY, _Speed) end

--- 获取图片控件是否中心绘制
---@param _HandleID int
---@return bool # `true` 中心绘制 </br> `false` 默认方式绘制
function GUI:ImageGetDrawCenter(_HandleID) end

--- 组合框添加条目并设置条目文本的颜色
---@param _HandleID int
---@param _Info string
---@param _Id int
---@param _Color uint
function GUI:ComboBoxAddString(_HandleID, _Info, _Id, _Color) end
