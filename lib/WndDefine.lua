--UI控件的类型
local i                 = -1
ENUM_UITYPE_CLASS       = i; i = i + 1 --
ENUM_UITYPE_SELPOINT    = i; i = i + 1 --
ENUM_UITYPE_BACKPIC     = i; i = i + 1 -- 图片控件
ENUM_UITYPE_BUTTON      = i; i = i + 1 -- 按钮控件
ENUM_UITYPE_CHECKBOX    = i; i = i + 1 -- 复选框控件
ENUM_UITYPE_EDIT        = i; i = i + 1 -- 编辑框控件
ENUM_UITYPE_COMBOBOX    = i; i = i + 1 -- 组合框控件
ENUM_UITYPE_LIST        = i; i = i + 1 -- 列表框控件
ENUM_UITYPE_RADIO       = i; i = i + 1 -- 单选按钮控件
ENUM_UITYPE_STATIC      = i; i = i + 1 -- 静态文本框控件
ENUM_UITYPE_HSCROLLBAR  = i; i = i + 1 -- 水平滚动条控件
ENUM_UITYPE_VSCROLLBAR  = i; i = i + 1 -- 垂直滚动条控件
ENUM_UITYPE_TREECONTROL = i; i = i + 1 -- 树形控件（仅支持端游）
ENUM_UITYPE_RICHEIDT    = i; i = i + 1 -- 多功能编辑框控件
ENUM_UITYPE_ITEMCTRL    = i; i = i + 1 -- 物品框控件
ENUM_UITYPE_COUNT       = i; i = i + 1 -- 窗体控件


LuaUIEvent                        = {}
--RDWndBaseCL的事件类型
i                                 = 1001
RDWndBaseCL_mouse_lbDown          = i; LuaUIEvent[i] = "OnLButtonDown"; i = i + 1    -- 鼠标左键按下事件（int _HandleID(窗口句柄)）
RDWndBaseCL_mouse_lbUp            = i; LuaUIEvent[i] = "OnLButtonUp"; i = i + 1      -- 鼠标左键弹起事件（int _HandleID(窗口句柄)）
RDWndBaseCL_mouse_lbClick         = i; LuaUIEvent[i] = "OnLButtonClick"; i = i + 1   -- 鼠标左键点击事件（int _HandleID(窗口句柄)）
RDWndBaseCL_mouse_lbDbClick       = i; LuaUIEvent[i] = "OnLButtonDbClick"; i = i + 1 -- 鼠标左键双击事件（int _HandleID(窗口句柄)
RDWndBaseCL_mouse_rbDown          = i; LuaUIEvent[i] = "OnRButtonDown"; i = i + 1    -- 鼠标右键按下事件（int _HandleID(窗口句柄)）
RDWndBaseCL_mouse_rbUp            = i; LuaUIEvent[i] = "OnRButtonUp"; i = i + 1      -- 鼠标右键弹起事件（int _HandleID(窗口句柄)）
RDWndBaseCL_mouse_rbClick         = i; LuaUIEvent[i] = "OnRButtonClick"; i = i + 1   -- 鼠标右键点击事件（int _HandleID(窗口句柄)）
RDWndBaseCL_mouse_rbDbClick       = i; LuaUIEvent[i] = "OnRButtonDbClick"; i = i + 1 -- 鼠标右键双击事件（int _HandleID(窗口句柄)）
RDWndBaseCL_mouse_move            = i; LuaUIEvent[i] = "OnMouseMove"; i = i + 1      -- 鼠标移动事件（int _HandleID(窗口句柄)）
RDWndBaseCL_mouse_wheel           = i; LuaUIEvent[i] = "OnMouseWheel"; i = i + 1     -- 鼠标滚轮滚动事件（int _HandleID(窗口句柄)）
RDWndBaseCL_mouse_in              = i; LuaUIEvent[i] = "OnMouseIn"; i = i + 1        -- 鼠标进入控件事件（int _HandleID(窗口句柄)）
RDWndBaseCL_mouse_out             = i; LuaUIEvent[i] = "OnMouseOut"; i = i + 1       -- 鼠标离开控件事件（int _HandleID(窗口句柄)）
RDWndBaseCL_wnd_visible           = i; LuaUIEvent[i] = "OnVisible"; i = i + 1        -- 可见状态发生变化事件（int _HandleID(窗口句柄)）
RDWndBaseCL_wnd_show              = i; LuaUIEvent[i] = "OnShow"; i = i + 1           -- 显示状态发生变化事件（int _HandleID(窗口句柄)）
RDWndBaseCL_wnd_enable            = i; LuaUIEvent[i] = "OnEnable"; i = i + 1         -- 可用状态发生变化事件（int _HandleID(窗口句柄)）
RDWndBaseCL_wnd_active            = i; LuaUIEvent[i] = "OnActive"; i = i + 1         -- 激活状态发生变化事件（int _HandleID(窗口句柄)）
RDWndBaseCL_wnd_move              = i; LuaUIEvent[i] = "OnMove"; i = i + 1           -- 控件移动事件（int _HandleID(窗口句柄)）
RDWndBaseCL_key_char              = i; LuaUIEvent[i] = "OnChar"; i = i + 1           -- 字符输入事件（int _HandleID(窗口句柄)）
RDWndBaseCL_key_down              = i; LuaUIEvent[i] = "OnKeyDown"; i = i + 1        -- 某键按下事件（int _HandleID(窗口句柄)）
RDWndBaseCL_key_up                = i; LuaUIEvent[i] = "OnKeyUp"; i = i + 1          -- 某键弹起事件（int _HandleID(窗口句柄)）
RDWndBaseCL_wnd_sizeChange        = i; LuaUIEvent[i] = "OnSizeChange"; i = i + 1     -- 窗口大小发生变化事件（int _HandleID(窗口句柄)）
RDWndBaseCL_wnd_close             = i; LuaUIEvent[i] = "OnClose"; i = i + 1          -- 窗口关闭事件（int _HandleID(窗口句柄)）
RDWndBaseCL_wnd_destroy           = i; LuaUIEvent[i] = "OnDestroy"; i = i + 1        -- 窗口销毁事件（int _HandleID(窗口句柄)）
--RDWnd2DBaseCL
i                                 = 1100
RDWnd2DBaseCL_wndtips_initilize   = i; LuaUIEvent[i] = "OnTipsInit"; i = i + 1
--RDWnd2DCheckCL
i                                 = 1200
RDWnd2DCheckCL_check_change       = i; LuaUIEvent[i] = "OnCheckChange"; i = i + 1
--RDWnd2DComboBoxCL
i                                 = 1300
RDWnd2DComboBoxCL_str_change      = i; LuaUIEvent[i] = "OnComboStrChange"; i = i + 1
--RDWnd2DDialogCL
i                                 = 1400
RDWnd2DDialogCL_dlgFunc_close     = i; LuaUIEvent[i] = "OnDialogCLose"; i = i + 1
RDWnd2DDialogCL_dlgFunc_min       = i; LuaUIEvent[i] = "OnDialogMin"; i = i + 1
RDWnd2DDialogCL_dlgFunc_cancel    = i; LuaUIEvent[i] = "OnDialogCancel"; i = i + 1
RDWnd2DDialogCL_dlgFunc_ok        = i; LuaUIEvent[i] = "OnDialogOk"; i = i + 1
--RDWnd2DEditCL
i                                 = 1500
RDWnd2DEditCL_key_enter           = i; LuaUIEvent[i] = "OnEditKeyEnter"; i = i + 1
RDWnd2DEditCL_str_change          = i; LuaUIEvent[i] = "OnEditStrChange"; i = i + 1
RDWnd2DEditCL_EDIT_LBTNDOWN       = i; LuaUIEvent[i] = "OnEditLBtnDown"; i = i + 1
RDWnd2DEditCL_Mouse_In            = i; LuaUIEvent[i] = "OnEditMouseIn"; i = i + 1
RDWnd2DEditCL_Mouse_Out           = i; LuaUIEvent[i] = "OnEditMouseOut"; i = i + 1
RDWnd2DEditCL_key_downkey         = i; LuaUIEvent[i] = "OnEditKeyDown"; i = i + 1
RDWnd2DEditCL_key_upkey           = i; LuaUIEvent[i] = "OnEditKeyUp"; i = i + 1
--RDWnd2DItemCtrl
i                                 = 1600
RDWnd2DItemCtrl_mouse_DbClick     = i; LuaUIEvent[i] = "OnItemCtrlDbClick"; i = i + 1 --RDWnd2DItemCtrl_ItemIn
RDWnd2DItemCtrl_ItemIn            = i; LuaUIEvent[i] = "OnItemMoveIn"; i = i + 1      --RDWnd2DItemCtrl_ItemIn
RDWnd2DItemCtrl_ItemOut           = i; LuaUIEvent[i] = "OnItemMoveOut"; i = i + 1     --RDWnd2DItemCtrl_ItemOut
--RDWnd2DListBoxCL
i                                 = 1700
RDWnd2DListBoxCL_select_change    = i; LuaUIEvent[i] = "OnListSelChange"; i = i + 1
RDWnd2DListBoxCL_pos_change       = i; LuaUIEvent[i] = "OnListPosChange"; i = i + 1
--RDWnd2DPopupMenuCL
i                                 = 1800
RDWnd2DPopupMenuCL_click          = i; LuaUIEvent[i] = "OnMenuClick"; i = i + 1 -- 菜单某条目被选择事件（int _HandleID(窗口句柄)）
--RDWnd2DRadioCL
i                                 = 1900
RDWnd2DRadioCL_select_change      = i; LuaUIEvent[i] = "OnRadioSelChange"; i = i + 1
--RDWnd2DRichEditCL
i                                 = 2000
RDWnd2DRichEditCL_key_enter       = i; LuaUIEvent[i] = "OnRichEditKeyEnter"; i = i + 1
RDWnd2DRichEditCL_str_change      = i; LuaUIEvent[i] = "OnRichEditStrChange"; i = i + 1
RDWnd2DRichEditCL_pos_change      = i; LuaUIEvent[i] = "OnRichEditPosChange"; i = i + 1
--RDWnd2DScrollBarVCL
i                                 = 2100
RDWnd2DScrollBarVCL_scroll_change = i; LuaUIEvent[i] = "OnScrollChange"; i = i + 1
--RDWnd2DTreeCtrlCL
i                                 = 2200
RDWnd2DTreeCtrlCL_click_item      = i; LuaUIEvent[i] = "OnTreeClickItem"; i = i + 1
RDWnd2DTreeCtrlCL_top_change      = i; LuaUIEvent[i] = "OnTreeTopChange"; i = i + 1
i                                 = 4001
messageBox_closeOk                = i; LuaUIEvent[i] = "OnMessageBoxOk"; i = i + 1
messageBox_closeCancel            = i; LuaUIEvent[i] = "OnMessageBoxCancel"; i = i + 1



--Wnd控件的标记
flg_dlgSysBtn_func           = 0x00000001
flg_dlgSysBtn_min            = 0x00000002
flg_dlgSysBtn_close          = 0x00000004
flg_dlgProperty_changeSize   = 0x00000008
flg_dlgProperty_noBar        = 0x00000010
flg_wndBase_useSelfFont      = 0x00000020
flg_wndBase_useBkBuffer      = 0x00000040 -- 使用背景缓存
flg_wndBase_fullInParent     = 0x00000080 --
flg_wndBase_autoTop          = 0x00000100 -- 将控件置于所在父窗口的最上层
--Edit控件的标记
flg_dlgEdit_textInMid        = 0x00100000
flg_dlgEdit_noBackground     = 0x00200000
flg_dlgEdit_textInCenter     = 0x00400000
--Combo控件的标记
flg_comboBox_isCanChangeText = 0x00100000
--RichEdit控件的标记
richEdit_flg_noBack          = 0x00100000
richEdit_flg_textInCenter    = 0x00200000


--物品窗口(类型ID)定义
i                           = 0
ITEMWINDOW_NULL             = i; i = i + 1 --
ITEMWINDOW_WAREHOUSE        = i; i = i + 1 --仓库
ITEMWINDOW_ADVWAREHOUSE     = i; i = i + 1 --高级仓库
ITEMWINDOW_FIXSELL          = i; i = i + 1 --出售框
ITEMWINDOW_SELFSTALL        = i; i = i + 1 --自身摆摊
ITEMWINDOW_TRADE            = i; i = i + 1 --交易
ITEMWINDOW_PACK             = i; i = i + 1 --背包
ITEMWINDOW_EHANCE           = i; i = i + 1 --精炼
ITEMWINDOW_IDENTIFY         = i; i = i + 1 --封印
ITEMWINDOW_ENHANCETRANSFER  = i; i = i + 1 --精炼转移
ITEMWINDOW_HORSEIDENTIFY    = i; i = i + 1 --马鉴定
ITEMWINDOW_HORSERESTORE     = i; i = i + 1 --马归元
ITEMWINDOW_ENHANCECHANGE    = i; i = i + 1 --精炼改变
ITEMWINDOW_DELEGATESELL     = i; i = i + 1 --寄售

-- ITEMWINDOW_LUA_MIN 之后的含物品格窗口类型由脚本定义
ITEMWINDOW_MAX              = 100
ITEMWINDOW_LUA_MIN          = 100
i                           = 101
ITEMWINDOW_FUMOXISHOU       = i; i = i + 1 --附魔石吸收
ITEMWINDOW_ZHUANGBEIFUMO    = i; i = i + 1 --装备附魔
ITEMWINDOW_ZHUANGBEIHECHENG = i; i = i + 1 --装备合成
ITEMWINDOW_DAOJUHECHENG     = i; i = i + 1 --道具合成
ITEMWINDOW_JIAOYIPINGTAI    = i; i = i + 1 --交易平台
ITEMWINDOW_RONGYAODUIHUAN   = i; i = i + 1 --荣耀兑换





-- Hot Key 定义-------
KEY_TRIGER_KEYUP          = 1
KEY_TRIGER_KEYDOWN        = 2
KEY_TRIGER_REPEAT         = 4
KEY_TRIGER_KEYDOWN_REPEAT = 6
KEY_TRIGER_KEYBOTH_UPDOWN = 3


-- MessageBoxCL 定义-------
MESSAGE_STYLE_OK       = 0
MESSAGE_STYLE_OKCANCEL = 1
MESSAGE_STYLE_NULL     = 2


--用浏览器打开URL链接的类型
OPENURL_TYPE_NONE       = 0
OPENURL_TYPE_REGISTER   = 1
OPENURL_TYPE_CHGEPSWD   = 2
OPENURL_TYPE_ADDYUANBAO = 3


--声音类型定义-------
i                      = 0
SOUNDEFFECTTYPE_NONE   = i; i = i + 1 --非法的类型
SOUNDEFFECTTYPE_2D_BGM = i; i = i + 1 --2D背景音乐,例:地图或者区域背景音乐
SOUNDEFFECTTYPE_3D_ESE = i; i = i + 1 --3D环境音效,例:地图中湖泊点音源
SOUNDEFFECTTYPE_3D_SSE = i; i = i + 1 --3D技能音效,例:技能音效,击打、被击打
SOUNDEFFECTTYPE_3D_TSE = i; i = i + 1 --3D地质音效,例:不同地质上走路音效
SOUNDEFFECTTYPE_2D_WND = i; i = i + 1 --2D界面音效,例:点击按钮,打开关闭窗口
SOUNDEFFECTTYPE_2D_EVT = i; i = i + 1 --2D事件音效,例:取得任务、升级、获得奖励
SOUNDEFFECTTYPE_2D_NPC = i; i = i + 1 --2D语音音效,例:NPC人声



UIMessageTable =
{
    RDWndBaseCL_mouse_lbDown,
    RDWndBaseCL_mouse_lbUp,
    RDWndBaseCL_mouse_lbClick,
    RDWndBaseCL_mouse_lbDbClick,
    RDWndBaseCL_mouse_rbDown,
    RDWndBaseCL_mouse_rbUp,
    RDWndBaseCL_mouse_rbClick,
    RDWndBaseCL_mouse_rbDbClick,
    RDWndBaseCL_mouse_move,
    RDWndBaseCL_mouse_wheel,
    RDWndBaseCL_mouse_in,
    RDWndBaseCL_mouse_out,
    RDWndBaseCL_key_char,
    RDWndBaseCL_key_down,
    RDWndBaseCL_key_up,
    RDWndBaseCL_wnd_close,
    RDWnd2DCheckCL_check_change,
    RDWnd2DComboBoxCL_str_change,
    RDWnd2DEditCL_key_enter,
    RDWnd2DEditCL_str_change,
    RDWnd2DEditCL_EDIT_LBTNDOWN,
    RDWnd2DEditCL_Mouse_In,
    RDWnd2DEditCL_Mouse_Out,
    RDWnd2DEditCL_key_downkey,
    RDWnd2DEditCL_key_upkey,
    RDWnd2DItemCtrl_mouse_DbClick,
    RDWnd2DItemCtrl_ItemIn,
    RDWnd2DItemCtrl_ItemOut,
    RDWnd2DListBoxCL_select_change,
    RDWnd2DListBoxCL_pos_change,
    RDWnd2DPopupMenuCL_click,
    RDWnd2DRichEditCL_key_enter,
    RDWnd2DRichEditCL_str_change,
    RDWnd2DRichEditCL_pos_change,
    RDWnd2DScrollBarVCL_scroll_change
}
