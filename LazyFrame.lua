--#region 基类-原型对象构造定义

---- lua 模拟C#类
--- [链接](https://blog.csdn.net/YuAnHandSome/article/details/105809559)
--- 已做修改添加Getter和Setter机制
local mt = {
    clsName = "mt",
    __get__ = {},
    __set__ = {},
}

---建构一个新的类
---@param clsName string 类名
---@param base table? 基类
---@return table
local function NewClass(clsName, base)
    base = base or mt
    local cls = {}
    cls.__get__ = (base.__get__ and setmetatable({}, { __index = base.__get__ }) or {})
    cls.__set__ = (base.__set__ and setmetatable({}, { __index = base.__set__ }) or {})
    setmetatable(cls, { __index = base })
    cls.clsName = clsName or "default"
    cls.base = base
    cls.__index = cls
    --- 类实例化
    cls.new = function(...)
        --- 原型对象实例
        local cls_instance = {}
        cls_instance.getset_values = {}

        local BaseCls = cls
        local cls_instance_mt = {
            --- Getter 实现
            __index = function(t, k)
                if BaseCls[k] then
                    return BaseCls[k]
                end
                --- 如果有getter ，则执行getter
                if t.__get__[k] then
                    t.__get__[k](t) -- 执行
                    return t.getset_values[k]
                end
            end,
            --- Setter 实现
            __newindex = function(t, k, v)
                if t.__set__[k] then
                    t.__set__[k](t, v)                -- 执行获取器
                    cls_instance.getset_values[k] = v --储存值
                    return
                end
                --没有获取器
                rawset(t, k, v)
                -- t[k] = v -- 会一直触发__index 函数
            end
        }
        setmetatable(cls_instance, cls_instance_mt)

        if cls_instance.onCreate then
            cls_instance:onCreate(...) -- 为什么这里执行函数不会触发__newindex函数
            -- 同样会触发，只不过，由于__index函数内的设定没有设定getter的属性会被rawset函数设置
        end

        return cls_instance
    end
    --- 设置类 的Setter和Getter
    cls.SetSetter = function(self, Prop_t)
        self.__set__ = setmetatable(Prop_t, { __index = self.base.__set__ or {} })
    end
    cls.SetGetter = function(self, Prop_t)
        self.__get__ = setmetatable(Prop_t, { __index = self.base.__get__ or {} })
    end

    return cls
end

local function InitSetter_t(Prop_t)
    Prop_t.__index = Prop_t
    return Prop_t
end

local function InitGetterFromSetter(Prop_t)
    local tmp_t = {}
    for key, value in pairs(Prop_t) do
        tmp_t[key] = function(self) end
    end
    tmp_t.__index = tmp_t
    return tmp_t
end

--#endregion

--#region 自定义函数

do
    local JobName_t = setmetatable({
                                       [1] = "战士",
                                       [2] = "法师",
                                       [3] = "术士",
                                   }, {
                                       __index = function(t, k)
                                           dbg("查找职业名字出错： " .. k)
                                           return ""
                                       end
                                   })

    function GetJobName(job)
        return JobName_t[job]
    end
end

function dbginfo(message)
    -- 获取调用者的信息
    local level = 2
    local info
    while true do
        info = debug.getinfo(level, "Slfn")
        if not info then break end
        if info.what ~= "C" and info.what ~= "tail" then
            -- 找到了有效的调用者信息
            local source = info.short_src -- 一个“可打印”版本的 source ，用于错误信息中
            local line = info.currentline -- 给定函数执行到的行数
            local funcName = info.name or "unknown"
            dbg(string.format("DBG: %s:%d in function <%s>: %s", source, line, funcName, message))
            return
        end
        level = level + 1
    end
    -- 如果没有找到有效的调用者信息，打印默认信息
    dbg(string.format("DBG: unknown location: %s", message))
end

function Tacit(obj)
    return function(fn, ...)
        if fn == nil then
            return obj
        end
        return Tacit(fn(obj, ...))
    end
end

---@type { [string] : true }
local Color_t = {
    ["WHITE"] = true,
    ["ORANGE"] = true,
    ["YELLOW"] = true,
    ["BLUE"] = true,
    ["SKYBLUE"] = true,
    ["DBLUE"] = true,
    ["GREENG"] = true,
    ["DGREENG"] = true,
    ["BGREENG"] = true,
    ["RED"] = true,
    ["MAGENTA"] = true,
    ["BROWN"] = true,
    ["GOLD"] = true,
    ["DARKGOLD"] = true,
    ["PURPLE"] = true,
    ["GRAY"] = true,
    ["PINK"] = true,
    ["BLACK"] = true,
    ["LIGHTBROWN"] = true,
    ["BROWN2"] = true,
    ["GOLD2"] = true,
    ["DARKGREY"] = true,
    ["DARK"] = true,
}

---转换颜色
---@param Color (string | integer)?
function TransColor(Color)
    local type_S = type(Color)
    if type_S == "string" then
        if Color:find("#%x%x%x%x%x%x") == 1 or Color:find("#%x%x%x%x%x%x%x%x") == 1 then
            return CL:GetColor(Color)
        elseif Color_t[Color] == true then
            return CL:GetColor(Color)
        end
    elseif type_S == "number" and tostring(Color):find("%d%d%d%d%d%d%d%d%d%d") == 1 then
        return Color
    end
end

local WndType_t = {
    [1] = { "image" },
    [2] = { "button" },
    [3] = { "check" },
    [4] = { "edit" },
    [5] = { "combobox" },
    [6] = { "" },
    [7] = { "" },
    [8] = { "static" },
    [9] = { "" },
    [10] = { "" },
    [11] = { "" },
    [12] = { "richedit" },
    [13] = { "itemctrl" },
    [14] = { "wnd" },
}

function Print_f(...)
    local s = ""
    local arg = { ... }
    s = table.concat(arg, "\t")
    CL:Log(s)
end

---打印窗体控件相对于窗口的坐标
---@param _Handle int
function PrintWndPos4Parent(_Handle)
    if not GUI:WndIsLive(_Handle) then
        local info = debug.getinfo(2, "SLl")
        CL:Log(string.format("Error: Called form : %s:%d", info.short_src, info.currentline))
    end
    if GUI:WndGetPosM(_Handle) then
        Print_f("Wnd Name: <" .. GUI:WndGetIDM(_Handle) .. " : (Parent" ..
            serialize(GUI:WndGetIDM(GUI:WndGetParentM(_Handle))) ..
            ")> for Parent [ PosX : (" .. LuaRet[1] .. ") PosY : (" .. LuaRet[2] .. ") ]")
    end
end

---打印窗体控件相对于窗口的坐标
---@param _Handle int
function PrintWndPos4Screen(_Handle)
    if not GUI:WndIsLive(_Handle) then
        local info = debug.getinfo(2, "SLl")
        CL:Log(string.format("Called from: %s:%d", info.short_src, info.currentline or 0))
    end
    if GUI:WndGetScreenPos(_Handle) then
        Print_f("Wnd Name: <" .. GUI:WndGetIDM(_Handle) .. " : (Parent:" ..
            serialize(GUI:WndGetIDM(GUI:WndGetParentM(_Handle))) ..
            ")> for Screen [ PosX : (" .. LuaRet[1] .. ") PosY : (" .. LuaRet[2] .. ") ]")
    end
end

function PrintSize(_Handle)
    if GUI:WndGetSizeM(_Handle) then
        Print_f("Wnd Name: <" .. GUI:WndGetIDM(_Handle) .. " : " ..
            serialize(GUI:WndGetIDM(GUI:WndGetParentM(_Handle)))
            .. "> SizeX : (" .. LuaRet[1] .. ") SizeY : (" .. LuaRet[2] .. ")")
    end
end

--#region xml

---迭代xml表节点，迭代 深度为1
---@param xml Xml
---@return function
function XmlIter(xml)
    local xml = xml
    local root = xml:Root()
    local firstEle = xml:FirstChild(root)
    local ele = firstEle

    ---迭代xml表节点
    ---@return integer # xml节点描述
    local iter = function()
        local nowele = ele
        ele = xml:NextSibling(ele)
        return nowele
    end

    return iter
end

--#endregion

--#region 系统

--#region 特效

---画圆函数
---@param xc int
---@param yc int
---@param x int
---@param y int
---@param eid int
---@param elist_t int[]
function DrawCircle(xc, yc, x, y, eid, elist_t)
    local elist_t = elist_t
    local lgw, lgh = CL:GetLogicGridWidth(), CL:GetLogicGridHeight()
    ---@type [int,int][]
    local positions = {
        { xc + x, yc + y },
        { xc - x, yc + y },
        { xc + x, yc - y },
        { xc - x, yc - y },
        { xc + y, yc + x },
        { xc - y, yc + x },
        { xc + y, yc - x },
        { xc - y, yc - x },
    }
    local eeid = 0
    local insert = table.insert
    for _, pos in ipairs(positions) do
        local x_pos = pos[1] * lgw + lgw / 2
        local y_pos = pos[2] * lgh + lgh / 2
        eeid = CL:AddMagicToPoint(eid, x_pos, y_pos, 0, 0)
        insert(elist_t, eeid)
    end
end

---
---@param xc int
---@param yc int
---@param r int
---@param eid int
---@param elist_t int[]
function CircleBres(xc, yc, r, eid, elist_t)
    local x, y, d = 0, r, (1 - r)
    DrawCircle(xc, yc, x, y, eid, elist_t)
    while y >= x do
        DrawCircle(xc, yc, x, y, eid, elist_t)
        if d < 0 then
            d = d + 2 * x + 3
        else
            d = d + 2 * (x - y) + 5
            y = y - 1
        end
        x = x + 1
    end
end

---画正方形
---@param xs int
---@param ys int
---@param size int
---@param eid int
---@return int[]
function SquareBres(xs, ys, size, eid)
    local elist_t = {}
    local insert = table.insert
    local lgw, lgh = CL:GetLogicGridWidth(), CL:GetLogicGridHeight()
    local x_pos, y_pos = 0, 0
    local eeid = 0

    y_pos = ys * lgh + lgh / 2
    for i = xs, xs + size - 1 do
        x_pos = i * lgw + lgw / 2
        eeid = CL:AddMagicToPoint(eid, x_pos, y_pos, 0, 0)
        insert(elist_t, eeid)
    end

    y_pos = (ys + size - 1) * lgh + lgh / 2
    for i = xs, xs + size - 1 do
        x_pos = i * lgw + lgw / 2
        eeid = CL:AddMagicToPoint(eid, x_pos, y_pos, 0, 0)
        insert(elist_t, eeid)
    end

    x_pos = xs * lgw + lgw / 2
    for i = ys + 1, ys + size - 2 do
        y_pos = i * lgh + lgh / 2
        eeid = CL:AddMagicToPoint(eid, x_pos, y_pos, 0, 0)
        insert(elist_t, eeid)
    end

    x_pos = (xs + size - 1) * lgw + lgw / 2
    for i = ys + 1, ys + size - 2 do
        y_pos = i * lgh + lgh / 2
        eeid = CL:AddMagicToPoint(eid, x_pos, y_pos, 0, 0)
        insert(elist_t, eeid)
    end

    return elist_t
end

---按照中心点绘制正方向
---@param xs int
---@param ys int
---@param rs int
---@param eid int
---@return integer[]
function SquareBresWithCenter(xs, ys, rs, eid)
    local posx = xs - rs
    local posy = ys - rs
    -- dbg("posx: " .. posx .. " posu: " .. posy)
    return SquareBres(posx, posy, rs * 2 + 1, eid)
end

--#endregion

--#region 坐标

--#region 检测

---检测一个点是否在一个正方形内
---@param xs int
---@param ys int
---@param size int
---@param px int
---@param py int
---@return bool
function CheckPosIsInSquare(xs, ys, size, px, py)
    xs = tonumber(xs)
    ys = tonumber(ys)
    px = tonumber(px)
    py = tonumber(py)

    return px > xs and py > ys and px < xs + size - 1 and py < ys + size - 1
end

---检测一个点是否在一个正方形内
---@param xs int
---@param ys int
---@param rs int
---@param px int
---@param py int
---@return bool
function CheckPosIsInSquareWithCenter(xs, ys, rs, px, py)
    return px > (xs - rs) and py > (ys - rs) and px < (xs + rs) and py < (ys + rs)
end

--#endregion

--#region 转换

---转换场景坐标到逻辑格坐标
---@param posx int
---@param posy int
---@return int
---@return int
function ConvertSencePos2LogicPos(posx, posy)
    local w = CL:GetLogicGridWidth()  --获取当前地图逻辑格宽度
    local h = CL:GetLogicGridHeight() --获取当前地图逻辑格高度
    return ((posx - w / 2) / w), ((posy - h / 2) / h)
end

---转逻辑格坐标到场景坐标
---@param posx int
---@param posy int
---@return int
---@return int
function ConvertLogicPos2SencePos(posx, posy)
    local w = CL:GetLogicGridWidth()  --获取当前地图逻辑格宽度
    local h = CL:GetLogicGridHeight() --获取当前地图逻辑格高度
    return (posx * w + w / 2), (posy * h + h / 2)
end

--#endregion

--#endregion

--#endregion

--#region 玩家

--#region 获取

--#region 自定义变量

---获取服务器传回的个人自定义`int`变量
---@param _DataKey string
---@return integer
function GetSelfInt(_DataKey)
    return CL:GetPlayerCustomIntData(CL:GetPlayerSelfGUID(), _DataKey)
end

---获取服务器传回的个人自定义`string`变量
---@param _DataKey string
---@return string
function GetSelfStr(_DataKey)
    return CL:GetPlayerCustomStringData(CL:GetPlayerSelfGUID(), _DataKey)
end

--#endregion

--#region 位置

---获取玩家自身的位置
---@return integer
---@return integer
function GetPlayerSelfPos()
    local posx = CL:GetPlayerSelfPropBase(ROLE_PROP_POSX) and LuaRet or 0 --[[@as int]]
    local posy = CL:GetPlayerSelfPropBase(ROLE_PROP_POSY) and LuaRet or 0 --[[@as int]]
    return posx, posy
end

--#endregion

--#region 职业


--#endregion

--#region 战斗力

local MainPropList_t = {
    { ROLE_PROP32_MAX_PHY_DEF, 1, },
    { ROLE_PROP32_MIN_PHY_DEF, 1, },
    { ROLE_PROP32_MAX_MAG_DEF, 1, },
    { ROLE_PROP32_MIN_MAG_DEF, 1, },
    { ROLE_PROP32_MAX_PHY_ATK, 1, },
    { ROLE_PROP32_MIN_PHY_ATK, 1, },
    { ROLE_PROP32_MAX_MAG_ATK, 1, },
    { ROLE_PROP32_MIN_MAG_ATK, 1, },
    { ROLE_PROP32_MAX_TAO_ATK, 1, },
    { ROLE_PROP32_MIN_TAO_ATK, 1, },
}

---获取战斗力
---@param GUID string
---@return integer
GetCombatPower = function(GUID)
    dbg("name: " .. (CL:GetPlayerPropBase(GUID, ROLE_PROP_ROLENAME) and LuaRet or ""))
    local sum = 0
    for index, value in ipairs(MainPropList_t) do
        if CL:GetPlayerProperty32(GUID, value[1]) then
            dbg("num : " .. LuaRet)
            sum = sum + (LuaRet --[[@as int]] * (value[2] or 1))
            dbg("sum: " .. sum)
        end
    end
    return sum
end

--#endregion
--#endregion
--#endregion

--#region 字符串

function StrSplit(inputstr, sep)
    if sep == nil then
        sep = "%s" -- 默认为任意空白字符
    end
    local t = {}
    for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
        table.insert(t, str)
    end
    return t
end

--#endregion

--#region 打印
--#endregion

--#endregion

--#region Wnd

--#region Class Define

---@alias Parent Wnd|Image|Button|Edit|ItemCtrl|int

---@class Wnd
---@field clsName "Wnd"
---@field Base table
---@field PosX int
---@field PosY int
---@field Name string
---@field Type 14
---@field Visible bool?
---@field Enable bool?
---@field Param uint?
---@field IDParam uint?
---@field IsESC  bool?
---@field CanRevMsg bool?
---@field MoveWithLBM  bool?
---@field SizeX int?
---@field SizeY int?
---@field Hint string?
---@field MagicUI int?  #  `1` 有`MagicUI`特效 </br>  `0` 无`MagicUI`特效
---@field new fun(arg:WndCreateArg) : Wnd
---@field __set__ table
---@field __get__ table
---@field SetSetter fun(self:Wnd,Prop_t:table)
---@field SetGetter fun(self:Wnd,Prop_t:table)
Wnd = NewClass("Wnd")

--#endregion

--#region Wnd New

---@class WndCreateArg
---@field Parent Parent
---@field Name string
---@field ImgID int?
---@field PosX int?
---@field PosY int?
---@field SizeX int?
---@field SizeY int?

---创建并初始化
---@param self Wnd
---@param arg WndCreateArg
Wnd.onCreate = function(self, arg)
    local Parent = 0
    if type(arg.Parent) == "table" then
        Parent = arg.Parent:GetHandle() --[[@as int]]
    elseif type(arg.Parent) == "number" then
        Parent = arg.Parent --[[@as int]]
    end

    local Name = arg.Name or "default"
    local ImgID = arg.ImgID or 0
    self.Handle = GUI:WndCreateWnd(Parent or 0, Name, ImgID, 0, 0)
    self.PosX = arg.PosX or 0
    self.PosY = arg.PosY or 0
    self.Name = Name
    self.SizeX = arg.SizeX or 0
    self.SizeY = arg.SizeY or 0
    self.Type = 14
end

---创建窗口
---@param arg WndCreateArg
---@return Wnd
function Wnd:New(arg)
    return Wnd.new(arg)
end

---创建窗口
---@param Parent int|Parent
---@param Name string
---@param ImgID int?
---@param PosX int?
---@param PosY int?
---@return Wnd
function Wnd:Create(Parent, Name, ImgID, PosX, PosY)
    return Wnd.new { Parent = Parent, Name = Name, ImgID = ImgID, PosX = PosX or 0, PosY = PosY or 0 }
end

---创建窗口
---@param Parent int|Parent
---@param Name string
---@param ImgID int?
---@param PosX int?
---@param PosY int?
---@return Wnd
function Wnd:CreateMainWnd(Parent, Name, ImgID, PosX, PosY)
    local wnd = Wnd.new { Parent = Parent, Name = Name, ImgID = ImgID, PosX = PosX or 0, PosY = PosY or 0 }
    wnd.IsESC = true
    wnd.MoveWithLBM = true
    if ImgID ~= nil then
        wnd:SetWndSize(CL:GetTextureWidth(ImgID), CL:GetTextureHeight(ImgID))
    end
    return wnd
end

--#endregion

--#region Wnd Setter,Getter

---@class WndSetter
---@field Pos {PosX:int, PosY:int}?
---@field PosX int?
---@field PosY int?
---@field Enable boolean?
---@field Hint string?
---@field IDParam int?
---@field IsESC bool?
---@field MagicUI int?
---@field MoveWithLBM bool?
---@field Name string?
---@field Param int?
---@field SizeX int?
---@field SizeY int?
---@field Visible boolean?
---@field CanRevMsg boolean?

local tSet_t = {
    ---改变窗口位置
    ---@param self Wnd
    ---@param arg WndPos
    ["Pos"] = function(self, arg)
        if self.Handle == nil then return end
        self.PosX = arg.PosX
        self.PosY = arg.PosY
    end,
    ---改变窗口位置
    ---@param self Wnd
    ---@param arg int
    ["PosX"] = function(self, arg)
        if self.Handle == nil then return end
        if GUI:WndGetPosM(self.Handle) then
            GUI:WndSetPosM(self.Handle, arg, LuaRet[2])
        end
    end,
    ---改变窗口位置
    ---@param self Wnd
    ---@param arg int
    ["PosY"] = function(self, arg)
        if self.Handle == nil then return end
        if GUI:WndGetPosM(self.Handle) then
            GUI:WndSetPosM(self.Handle, LuaRet[1], arg)
        end
    end,
    ---改变窗口 名称
    ---@param self Wnd
    ---@param Name string
    ["Name"] = function(self, Name)
        GUI:WndSetIDM(self.Handle, Name)
    end,
    ---设置 窗体控件是否 可见
    ---@param self Wnd
    ---@param Visible bool
    ["Visible"] = function(self, Visible)
        GUI:WndSetVisible(self.Handle, Visible)
    end,
    --- 设置窗体控件的自定义参数
    ---@param self Wnd
    ---@param Param uint
    ["IDParam"] = function(self, Param)
        GUI:WndSetIDParam(self.Handle, Param)
    end,
    --- 设置窗体控件的自定义参数
    ---@param self Wnd
    ---@param Param uint
    ["Param"] = function(self, Param)
        GUI:WndSetParam(self.Handle, Param)
    end,
    --- 设置窗口Esc关闭属性
    ---@param self Wnd
    ---@param IsESC bool
    ["IsESC"] = function(self, IsESC)
        GUI:WndSetIsESCClose(self.Handle, IsESC)
    end,
    --- 设置窗口是否可用
    ---@param self Wnd
    ---@param Enable bool
    ["Enable"] = function(self, Enable)
        GUI:WndSetEnableM(self.Handle, Enable)
    end,
    --- 设置窗口是否响应操作
    ---@param self Wnd
    ---@param CanRevMsg bool
    ["CanRevMsg"] = function(self, CanRevMsg)
        GUI:WndSetCanRevMsg(self.Handle, CanRevMsg)
    end,
    ["MoveWithLBM"] = function(self, MoveWithLBM)
        if MoveWithLBM == true then
            return GUI:WndSetMoveWithLBM(self.Handle)
        end
    end,
    ["SizeX"] = function(self, SizeX)
        if self.Handle == nil then return end
        if GUI:WndGetSizeM(self.Handle) then
            GUI:WndSetSizeM(self.Handle, SizeX or 0, LuaRet[2])
        end
    end,
    ["SizeY"] = function(self, SizeY)
        if self.Handle == nil then return end
        if GUI:WndGetSizeM(self.Handle) then
            GUI:WndSetSizeM(self.Handle, LuaRet[1], SizeY or 0)
        end
    end,
    ["Hint"] = function(self, _HintInof)
        return GUI:WndSetHint(self.Handle, _HintInof)
    end,
    ["MagicUI"] = function(self, _Type)
        if type(_Type) ~= "number" then return end
        return GUI:WndSetMagicUI(self.Handle, _Type == 0 and 0 or 1)
    end
}

local WndPropSetList_t = InitSetter_t(tSet_t)
local WndPropGetList_t = InitSetter_t(tSet_t)

Wnd:SetSetter(WndPropSetList_t)
Wnd:SetGetter(WndPropGetList_t)

--#endregion

--#region Wnd method

--#region 类属性

---设置类属性
---@param arg WndSetter
function Wnd:SetProp(arg)
    if type(self) ~= "table" then return end
    if self:GetHandle() == 0 then return end

    local __set__ = self.__set__
    local t
    for key, value in pairs(arg) do
        t = __set__[key]
        if t ~= nil then
            t(self, value)
        end
    end
end

--#endregion

---移出窗口所有子控件
function Wnd:Clear()
    if type(self) ~= "table" then
        CL:Log("类型不合")
        return
    end
    if self.clsName ~= "Wnd" then
        Print_f("Class: " .. self.clsName .. " be call")
        return
    end

    GUI:WndDlgClear(self:GetHandle())
end

--#region 窗口句柄

---获取窗口句柄
---@return int
function Wnd:GetHandle()
    return self.Handle
end

--- 设置对象句柄
---@param _Handle int
function Wnd:SetHandle(_Handle)
    self.Handle = _Handle
end

--#endregion

---@class WndSize
---@field SizeX int
---@field SizeY int

---改变窗口大小
---@param arg WndSize
function Wnd:SetSize(arg)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    if WND_H ~= 0 then
        return GUI:WndSetSizeM(WND_H, arg.SizeX or 0, arg.SizeY or 0)
    end
    return false
end

---改变窗口大小
---@param SizeX int
---@param SizeY int
---@return nil
function Wnd:SetWndSize(SizeX, SizeY)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    if WND_H ~= 0 then
        return GUI:WndSetSizeM(WND_H, SizeX or 0, SizeY or 0)
    end
    return false
end

---@class WndPos
---@field PosX int
---@field PosY int

---改变窗口位置
---@param arg WndPos
function Wnd:SetPos(arg)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    if WND_H ~= 0 then
        return GUI:WndSetPosM(WND_H, arg.PosX or 0, arg.PosY or 0)
    end
    return false
end

---设置窗口参数
---@param param int
function Wnd:SetParam(param)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    if WND_H ~= 0 then
        return GUI:WndSetParam(WND_H, param or 0)
    end
    return false
end

---获取窗口参数
---@return integer
function Wnd:GetParam()
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    if WND_H ~= 0 then
        return GUI:WndGetParam(WND_H)
    end
    return 0
end

---@class SetWndArg
---@field Visible bool?
---@field Enable bool? # 是否可用
---@field CanRevMsg bool? # 是否可接受消息
---@field Param int? # 设置参数

---改变窗口共有属性
---@param arg SetWndArg
function Wnd:SetWnd(arg)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    if arg.Visible ~= nil then GUI:WndSetVisible(WND_H, arg.Visible) end
    if arg.Enable ~= nil then GUI:WndSetEnableM(WND_H, arg.Enable) end
    if arg.CanRevMsg ~= nil then GUI:WndSetCanRevMsg(WND_H, arg.CanRevMsg) end
    dbg("设置窗口来源于Lazyframe")
    if arg.Param ~= nil then GUI:WndSetParam(WND_H, arg.Param) end
end

--#region 自定义属性

--#region 添加

---为窗体控件添加自定义属性
---@param _Key string @ 属性名
---@param _Val string@ 属性值
function Wnd:AddProperty(_Key, _Val)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    if WND_H ~= 0 then
        return GUI:WndAddProperty(WND_H, _Key, _Val)
    end
    return false
end

--#endregion

--#region 获取

---获取窗口自定义属性
---@param self Wnd | int
---@param _Key string @ 属性名
---@return string
function Wnd.GetProperty(self, _Key)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    if WND_H ~= 0 then
        return GUI:WndGetProperty(WND_H, _Key)
    end
    return ""
end

--#endregion

--#region 删除

---删除窗口自定义属性
---@param self Wnd | int
---@param _Key string @ 属性名
function Wnd:DelProperty(_Key)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    if WND_H ~= 0 then
        return GUI:WndDelProperty(WND_H, _Key)
    end
    return false
end

--#endregion

--#endregion

--#region 标记

function Wnd:SetFlags(_Flag)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    if WND_H ~= 0 then
        return GUI:WndSetFlagsM(WND_H, _Flag)
    end
    return false
end

--#endregion

--#region 窗体回调函数

--#region 注册窗体控件的事件回调函数

--- 注册窗体控件的事件回调函数
---@param self Wnd | int
---@param _Msg int
---@param _FuncName string
---@return bool
function Wnd:AddRe(_Msg, _FuncName)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    if WND_H ~= 0 then
        return GUI:WndRegistScript(WND_H, _Msg, _FuncName)
    end
    return false
end

---注册窗体控件的事件回调函数（扩展）
---@param _Msg int @制定窗体控件的事件ID
---@param _FuncName string @回调函数名
---@param _Param string @预设的回调参数，将传递至回调函数的第5个参数
---@return bool @true:控件存在,fasle:控件不存在
function Wnd:AddReEx(_Msg, _FuncName, _Param)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    if WND_H ~= 0 then
        return GUI:WndRegistScriptEx(WND_H, _Msg, _FuncName, _Param)
    end
    return false
end

---添加左键点击函数
---@param _FuncName string
function Wnd:AddReLBClick(_FuncName)
    return Wnd.AddRe(self, RDWndBaseCL_mouse_lbClick, _FuncName)
end

---添加左键点击函数Ex
---@param _FuncName string
function Wnd:AddReLBClickEx(_FuncName, cParam)
    return Wnd.AddReEx(self, RDWndBaseCL_mouse_lbClick, _FuncName, cParam)
end

---添加右键点击函数
---@param _FuncName string
function Wnd:AddReRBClick(_FuncName)
    return Wnd.AddRe(self, RDWndBaseCL_mouse_rbClick, _FuncName)
end

---添加右键点击函数
---@param _FuncName string
---@param cParam string
function Wnd:AddReRBClickEx(_FuncName, cParam)
    return Wnd.AddReEx(self, RDWndBaseCL_mouse_rbClick, _FuncName, cParam)
end

---增加鼠标进入控件回调函数
---@param _FuncName string
---@return boolean
function Wnd:AddReMouseIn(_FuncName)
    return Wnd.AddRe(self, RDWndBaseCL_mouse_in, _FuncName)
end

---增加鼠标离开控件回调函数
---@param _FuncName string
---@return boolean
function Wnd:AddReMouseOut(_FuncName)
    return Wnd.AddRe(self, RDWndBaseCL_mouse_out, _FuncName)
end

---RDWndBaseCL_mouse_move
---@param _FuncName string
---@return boolean
function Wnd:AddRemouseMove(_FuncName)
    return Wnd.AddRe(self, RDWndBaseCL_mouse_move, _FuncName)
end

--- 增加窗口关闭事件回调函数
---@param _FuncName string
---@return boolean
function Wnd:AddReClose(_FuncName)
    return Wnd.AddRe(self, RDWndBaseCL_wnd_close, _FuncName)
end

---增加窗口可见性变化函数
---@param _FuncName string
---@return boolean
function Wnd:AddReWndVisible(_FuncName)
    return Wnd.AddRe(self, RDWndBaseCL_wnd_visible, _FuncName)
end

--#endregion

--#region 删除

---删除窗口对应的事件回调函数
---@param _Msg int
---@return boolean
function Wnd:DelRe(_Msg)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    if WND_H ~= 0 then
        return GUI:WndClearScript(WND_H, _Msg)
    end
    return false
end

---删除左键点击事件
---@return boolean
function Wnd:DelReLBClick()
    return Wnd:DelRe(RDWndBaseCL_mouse_lbClick)
end

--#endregion

--#endregion

--#region 定时器

--#region 添加

---在窗体控件中添加定时器
---@param _ID int
---@param _Elapse int
---@param _ScriptHandle string
function Wnd:AddTimer(_ID, _Elapse, _ScriptHandle)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    if WND_H ~= 0 then
        return GUI:WndAddTimer(WND_H, _ID, _Elapse, _ScriptHandle)
    end
    return false
end

---在窗体控件中添加定时器
---@param _ID int
---@param _Elapse int
---@param _ScriptHandle string
function Wnd:AddTimerEx(_ID, _Elapse, _ScriptHandle, _Param)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    if WND_H ~= 0 then
        return GUI:WndAddTimerEx(WND_H, _ID, _Elapse, _ScriptHandle, _Param)
    end
    return false
end

---在窗体控件中添加建议定时器
---@param _Elapse int @执行回调函数的时间间隔
---@param _ScriptHandle string @回调函数的名称
---@return int @OK：定时器ID：NO：0
function Wnd:AddTimerBrief(_Elapse, _ScriptHandle)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    if WND_H ~= 0 then
        return GUI:WndAddTimerBrief(WND_H, _Elapse, _ScriptHandle)
    end
    return 0
end

---在窗体控件中添加建议定时器
---@param _Elapse int @执行回调函数的时间间隔
---@param _ScriptHandle string @回调函数的名称
---@param _Param string @ 预设的回调参数
---@return int @OK：定时器ID：NO：0
function Wnd:AddTimerBriefEx(_Elapse, _ScriptHandle, _Param)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    if WND_H ~= 0 then
        return GUI:WndAddTimerBriefEx(WND_H, _Elapse, _ScriptHandle, _Param)
    end
    return 0
end

--#endregion

--#region 删除

function Wnd:DelTimer(_ID)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    if WND_H ~= 0 then
        return GUI:WndDelTimer(WND_H, _ID)
    end
    return false
end

---删除窗体中所有的定时器
function Wnd:DelAllTimer()
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    if WND_H ~= 0 then
        return GUI:WndDelAllTimer(WND_H)
    end
    return false
end

--#endregion

--#endregion

--#region Tip

--#region 设置

function Wnd:SetTip(_TipInfo)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    if WND_H ~= 0 then
        return GUI:WndSetTipInfo(WND_H, _TipInfo)
    end
    return false
end

--#endregion

--#endregion

--#region 动作


---添加控件的动作
---@param action string
---@return boolean, string?
function Wnd:AddActioin(action)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    if WND_H ~= 0 then
        if GUI:WndAddAction(WND_H, action) then
            return true
        else
            return false, LuaRet --[[@as string?]]
        end
    end
    return false
end

--#endregion

--#endregion



--#endregion

--#region Edit

--#region Edit 类定义

---@class Edit : Wnd
---@field clsName "Edit"
---@field Type 4
---@field Text string?
---@field Font string?
---@field Color (string|int)?
---@field GrowColor (string|int)?
---@field IsCenter bool?
---@field IsCanEdit bool?
---@field IsGrow bool?
---@field FontSize int?
---@field IsDrawSelectBg bool?
---@field MultiLine bool?
---@field OffSet int? # 编辑框行高
---@field new fun(arg:EditCreateArg) : Edit
---@field SetProp fun(self:Edit, arg: EditSetter)
Edit = NewClass("Edit", Wnd) --[[@as Edit]]

---@class EditSetter: WndSetter
---@field Handle int?
---@field Info string? # 指定编辑框的描述
---@field Visible bool? # 是否可见
---@field Enable bool? # 是否可用
---@field CanRevMsg bool? # 是否可接受消息
---@field IsCenter bool? # 文字是否左右居中
---@field Color (integer|string)? # 文本颜色
---@field IsNumber bool? # 编辑框是否为数字编辑框
---@field Text string? # 文本内容
---@field Font string? # 字体名称
---@field FontSize int? #字体大小
---@field GrowColor (int|string)? 描边颜色
---@field IsGrow bool? 是否描边
---@field IsCurrency bool? # 设置编辑框为货币类型
---@field MultiLine bool? # 设置编辑框是否可多行
---@field OffSet int? # OffSet


--#region Edit New

---@class EditCreateArg
---@field Parent Parent
---@field Name string
---@field PosX int?
---@field PosY int?
---@field SizeX int?
---@field SizeY int?

---创建窗口 ， 并初始化
---@param self Edit
---@param arg EditCreateArg
Edit.onCreate = function(self, arg)
    local Name = arg.Name or "default"
    -- local ImgID = arg.ImgID or 0
    local Parent = 0
    if type(arg.Parent) == "table" then
        Parent = arg.Parent:GetHandle()
    elseif type(arg.Parent) == "number" then
        Parent = arg.Parent --[[@as int]]
    end
    self.Handle = GUI:EditCreate(Parent or 0, Name, 0, 0, 0, 0)
    self.SizeX = arg.SizeX or 150
    self.SizeY = arg.SizeY or 20
    self.PosX = arg.PosX or 0
    self.PosY = arg.PosY or 0
    self.Name = Name
    self.Type = 4
end

---创建编辑框控件
---@param arg EditCreateArg
---@return Edit
function Edit:New(arg)
    return Edit.new(arg)
end

---创建静态编辑框控件
---@param arg EditCreateArg
---@return Edit
function Edit:NewStatic(arg)
    local edit_tmp = Edit.new(arg)
    edit_tmp.CanRevMsg = false
    edit_tmp.IsCanEdit = false
    edit_tmp.IsDrawSelectBg = false
    edit_tmp.GrowColor = "#000000"
    return edit_tmp
end

function Edit:CreateStatic(Parent, Name, PosX, PosY, SizeX, SizeY)
    return Edit:NewStatic { Parent = Parent, Name = Name, PosX = PosX, PosY = PosY, SizeX = SizeX, SizeY = SizeY }
end

--#endregion
--#endregion

--#region Edit  Setter , Getter

local EditPropSetList_t = InitSetter_t({
    ["Text"] = function(self, Text)
        return GUI:EditSetTextM(self.Handle, Text or "")
    end,
    ["Font"] = function(self, Font)
        return GUI:EditSetFontM(self.Handle, Font or "system")
    end,
    ["Color"] = function(self, Color)
        return GUI:EditSetTextColor(self.Handle, TransColor(Color))
    end,
    ["FontSize"] = function(self, FontSize)
        return GUI:WndSetFontSize(self.Handle, FontSize or 13)
    end,
    ["IsCenter"] = function(self, IsCenter)
        if IsCenter == true then
            GUI:EditSetFontCenter(self.Handle)
        end
    end,
    ["IsCanEdit"] = function(self, IsCanEdit)
        return GUI:EditSetCanEdit(self.Handle, (IsCanEdit ~= nil and true or false))
    end,
    ["GrowColor"] = function(self, GrowColor)
        return GUI:EditSetTextGrowColor(self.Handle, TransColor(GrowColor))
    end,
    ["IsGrow"] = function(self, IsGrow)
        return GUI:EditSetUseTextGrow(self.Handle, (IsGrow ~= nil and true or false))
    end,
    ["MultiLine"] = function(self, _MultiLine)
        return GUI:EditSetMultiLineEdit(self.Handle, _MultiLine)
    end,
    ["OffSet"] = function(self, _Offset)
        return GUI:EditSetOffSet(self.Handle, _Offset)
    end,
    ["IsCurrency"] = function(self, _IsCurrency)
        return GUI:EditSetIsCurrency(self.Handle, _IsCurrency)
    end,
})

local EditPropGetList_t = InitGetterFromSetter(EditPropSetList_t)

---Edit Text属性Getter
---@param self Edit
---@return string
EditPropGetList_t["Text"] = function(self)
    rawset(self.getset_values, "Text", GUI:EditGetTextM(self:GetHandle()))
end

Edit:SetSetter(EditPropSetList_t)
Edit:SetGetter(EditPropGetList_t)

--#endregion


--#region Edit method

--- 设置编辑框中可输入的最大数值
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
function Edit:SetMaxNumber(_Type, _Number)
    return GUI:EditSetMaxNumber(self.Handle, _Type, _Number)
end

function Edit:SetInt(_Data)
    return GUI:EditSetInt(self.Handle, _Data)
end

function Edit:SelectText(_CurSorPos, select_pos)
    if _CurSorPos >= select_pos then
        return false
    end
    GUI:EditSetSelectPos(self.Handle, select_pos)
    GUI:EditSetCurSorPos(self.Handle, _CurSorPos)
end

--#endregion

--#endregion

--#region Image

--#region Class Define

---@class ImageNewArg
---@field Parent Parent
---@field Name string
---@field ImgID int?
---@field PosX int?
---@field PosY int?
---@field SizeX int?
---@field SizeY int?



---@class Image : Wnd
---@field clsName "Image"
---@field Type 1
---@field IsCenter bool? # 图片是否以坐标点居中显示
---@field IsGray bool?
---@field ImgID int?
---@field FitSize bool?
---@field CheckPoint int?
---@field new fun(arg:ImageNewArg) :Image
---@field private ArouImgList int[]
---@field SetProp fun(self:Image, arg: ImageSetter)
Image = NewClass("Image", Wnd)

--#region Image Setter, Getter

---@class ImageSetter: WndSetter
---@field IsCenter bool?
---@field IsGray bool?
---@field ImgID int?
---@field FitSize bool?
---@field CheckPoint bool?

--#endregion

local ImagePropSetList_t = InitSetter_t({
    ---设置图片控件是否以中心点绘制（修正）
    ---@param self Image
    ---@param IsCenter bool
    ["IsCenter"] = function(self, IsCenter)
        return GUI:ImageSetFixedDrawCenter(self.Handle, IsCenter)
    end,
    --- 设置图片控件是否灰度显示
    ---@param self Image
    ---@param IsGray bool 是否灰度显示
    ---@return nil
    ["IsGray"] = function(self, IsGray)
        return GUI:ImageSetGray(self.Handle, IsGray or false)
    end,
    ---改变图片控件的图片ID
    ---@param self Image
    ---@param ImgID int
    ---@return nil
    ["ImgID"] = function(self, ImgID)
        return GUI:WndSetImageID(self.Handle, ImgID)
    end,
    ["FitSize"] = function(self, _Flag)
        return GUI:ImageSetFitSize(self.Handle, _Flag)
    end,
    --- 设置图片控件检测点击区域类型
    ---@param self Image
    ---@param _Flag 0|1|2
    ---@return nil
    ["CheckPoint"] = function(self, _Flag)
        return GUI:ImageSetCheckPoint(self.Handle, _Flag)
    end
})

local ImagePropGetList_t = InitGetterFromSetter(ImagePropSetList_t)

Image:SetSetter(ImagePropSetList_t)
Image:SetGetter(ImagePropGetList_t)

--#endregion

--#region Image 新建

---创建窗口 ， 并初始化
---@param self Image
---@param arg ImageNewArg
Image.onCreate = function(self, arg)
    local Name = arg.Name or "default"
    local ImgID = arg.ImgID or 0
    local Parent = 0
    if type(arg.Parent) == "table" then
        Parent = arg.Parent.Handle --[[@as int]]
    elseif type(arg.Parent) == "number" then
        Parent = arg.Parent --[[@as int]]
    end
    self.Handle = GUI:ImageCreate(Parent, Name, ImgID, 0, 0)
    self.PosX = arg.PosX or 0
    self.PosY = arg.PosY or 0
    self.Name = Name
    self.ImgID = ImgID or 0
    if arg.SizeX ~= nil then self.SizeX = arg.SizeX end
    if arg.SizeY ~= nil then self.SizeY = arg.SizeY end
    self.Type = 1
    self.ArouImgList = { 0, 2, 6, 8, 4, 1, 7, 3, 5 }
end

---创建图片控件
---@param arg ImageNewArg
---@return Image
function Image:New(arg)
    return Image.new(arg)
end

function Image:Create(Parent, Name, ImgID, PosX, PosY)
    return Image.new { Parent = Parent, Name = Name, ImgID = ImgID, PosX = PosX or 0, PosY = PosY or 0 }
end

--#endregion

--#region Image Method

--#region 九宫格

---改变九宫图片的次序
---@param arg int[]
function Image:ChangeArouImgList(arg)
    if #arg ~= 9 then return end

    for index, value in ipairs(arg) do
        if type(value) ~= "number" then
            return
        end
    end
    self.ArouImgList = arg
end

---设置九宫格图片
---@param self int | Image
---@param ImgID int
function Image.SetAroundImageEx(self, ImgID)
    local type_s = type(self)
    local IMAGE_H = (type_s == "number" and self or self:GetHandle())
    local t = (type_s == "number" and { 0, 2, 6, 8, 4, 1, 7, 3, 5 } or self.ArouImgList)
    local ImageID = ImgID
    return GUI:ImageSetAroundImageEx(IMAGE_H,
                                     ImageID + t[1],
                                     ImageID + t[2],
                                     ImageID + t[3],
                                     ImageID + t[4],
                                     ImageID + t[5],
                                     ImageID + t[6],
                                     ImageID + t[7],
                                     ImageID + t[8],
                                     ImageID + t[9],
                                     false)
end

--#endregion

--- 设置图片控件的缩放和旋转
---@param _ScaleX int
---@param _ScaleY int
---@param _Roation int?
--- > 默认是左上角不变，但可以设置中心绘制
function Image:SetTransfrom(_ScaleX, _ScaleY, _Roation)
    return GUI:ImageSetTransfrom(self.Handle, _ScaleX, _ScaleY, _Roation or 0)
end

---设置图片控件是否播放动画
---@param _Enable bool
---@param _Speed uint
function Image:SetAnimateEnable(_Enable, _Speed)
    local IMAGE_H = type(self) == "table" and self:GetHandle() or self
    if type(IMAGE_H) ~= "number" or IMAGE_H == 0 then
        Print_f("" .. serialize(debug.getinfo(1, "n")))
        return false
    end
    --- 如果图片是居中设置，则设置设置序列帧图片居中描绘。
    if GUI:ImageGetDrawCenter(IMAGE_H) then
        GUI:WndAddProperty(IMAGE_H, "image_anim_fix_center", "1")
    end
    return GUI:ImageSetAnimateEnable(IMAGE_H, _Enable, _Speed)
end

---设置图片控件动画循环播放
---@param _Speed uint @动画没帧时间间隔，默认值为100，单位为毫秒（ms）
---@param _AnimCount int @动画循环播放次数 ，默认值：`0`（一直播放）
---@param _AnimCallBackFunc string @动画播放至指定次数后的动作
---1. 当此参数设置为空字符串（默认值）时，动画播放完毕后，自动销毁
---2. 当此参数设置为其他字符串时，动画播放至指定次数后对应函数会作为Lua脚本函数进行回调，由脚本接管处理。
---TODO
function Image:SetAnimate(_Speed, _AnimCount, _AnimCallBackFunc)
    local IMAGE_H = type(self) == "table" and self:GetHandle() or self
    if type(IMAGE_H) ~= "number" or IMAGE_H == 0 then
        Print_f("" .. serialize(debug.getinfo(1, "n")))
        return false
    end
    if GUI:ImageGetDrawCenter(IMAGE_H) then
        GUI:WndAddProperty(IMAGE_H, "image_anim_fix_center", "1")
    end
    return GUI:ImageSetAnimate(IMAGE_H, _Speed, _AnimCount, _AnimCallBackFunc)
end

---设置图片是否镜像翻转
---@param _FlipX bool? # 水平翻转
---@param _FlipY bool? # 垂直翻转
function Image:SetFlip(_FlipX, _FlipY)
    return GUI:ImageSetFlip(self.Handle, _FlipX or false, _FlipY or false)
end

---设置图片大小 （自动缩放
---@param SizeX int
---@param SizeY int
---@return nil
function Image:SetImgSize(SizeX, SizeY)
    self.FitSize = true
    return GUI:WndSetSizeM(self.Handle, SizeX, SizeY)
end

--- 设置图片控件的锚点位置
---@param _AnchorPosX int # 定义锚点横坐标的位置
--- >  定义值除以10000所得即为X轴方向上的比例。
---@param _AnchorPosY int # 定义锚点纵坐标的位置
--- >  定义值除以10000所得即为Y轴方向上的比例。
---@return nil
function Image:SetCenter(_AnchorPosX, _AnchorPosY)
    return GUI:ImageSetCenter(self.Handle, 1, _AnchorPosX, _AnchorPosY)
end

---设置成图片控件绘制区域
---@param _StartX float
---@param _EndX float
---@param _StartY float
---@param _EndY float
function Image:SetDrawRect(_StartX, _EndX, _StartY, _EndY)
    return GUI:ImageSetDrawRect(self.Handle, _StartX, _EndX, _StartY, _EndY)
end

--#endregion

--#endregion

--#region Button

---@class ButtonNewArg
---@field Parent Parent
---@field Name string
---@field ImgID int?
---@field PosX int?
---@field PosY int?

---@class Button : Wnd
---@field clsName "Button"
---@field Type 2
---@field Text string?
---@field Font string?
---@field FontSize int?
---@field TextColor (string|int)?
---@field IsCenter bool?
---@field IsGray bool?
---@field Rotate int?
---@field IsActiveBtn bool?
---@field IsActivePageBtn bool?
---@field DrawCenter bool?
---@field ImgID int?
---@field PostTexture int?
---@field ShowDisable boolean?
---@field CheckPoint (0|1)?
---@field new fun(arg:ButtonNewArg) :Button
---@field SetProp fun(self: Button, arg: ButtonSetter)
Button = NewClass("Button", Wnd)

--#region Button Setter, Getter

---@class ButtonSetter: WndSetter
---@field DrawCenter bool?
---@field Text string?
---@field Font string?
---@field FontSize int?
---@field TextColor (string|int)?
---@field IsCenter bool?
---@field Rotate int?
---@field IsActiveBtn bool?
---@field IsActivePageBtn bool?
---@field ImgID int?
---@field ShowDisable bool?
---@field PostTexture int?
---@field CheckPoint (0|1)?

local ButtonPropSetList_t = InitSetter_t({
    ---设置按钮是否以中心点为锚点进行绘制
    ---@param self Button
    ---@param _DrawCenter boolean
    ---@return nil
    ["DrawCenter"] = function(self, _DrawCenter)
        return GUI:ButtonSetDrawCenter(self.Handle, _DrawCenter)
    end,
    ["Text"] = function(self, _Text)
        return GUI:WndSetTextM(self.Handle, _Text)
    end,
    ["Font"] = function(self, _FontName)
        return GUI:ButtonSetTextFont(self.Handle, _FontName)
    end,
    ["FontSize"] = function(self, _Size)
        return GUI:WndSetFontSize(self.Handle, _Size)
    end,
    ["TextColor"] = function(self, _Color)
        return GUI:WndSetTextColorM(self.Handle, TransColor(_Color))
    end,
    ["IsCenter"] = function(self, _DrawCenter)
        return GUI:ButtonSetDrawCenter(self.Handle, _DrawCenter)
    end,
    ["Rotate"] = function(self, _Roation)
        GUI:ButtonSetDrawCenter(self.Handle, true)
        return GUI:ButtonSetRotate(self.Handle, true, _Roation)
    end,
    ["IsActiveBtn"] = function(self, _Flag)
        return GUI:ButtonSetIsActiveBtn(self.Handle, _Flag)
    end,
    ["IsActivePageBtn"] = function(self, _Flag)
        return GUI:ButtonSetIsActivePageBtn(self.Handle, _Flag)
    end,
    ["ImgID"] = function(self, _ImageID)
        return GUI:WndSetImageID(self.Handle, _ImageID)
    end,
    ["ShowDisable"] = function(self, _Flag)
        return GUI:ButtonSetShowDisable(self.Handle, _Flag)
    end,
    ["PostTexture"] = function(self, _ImageID)
        return GUI:ButtonSetDrawPostTexture(self.Handle, _ImageID)
    end,
    ["CheckPoint"] = function(self, _Flag)
        return GUI:ButtonSetCheckPoint(self.Handle, _Flag)
    end
})

local ButtonPropGetList_t = InitGetterFromSetter(ButtonPropSetList_t)

-- SetClassSetter(Button, ButtonPropSetList_t)
-- SetClassSetter(Button, ButtonPropGetList_t)

Button:SetSetter(ButtonPropSetList_t)
Button:SetGetter(ButtonPropGetList_t)

--#endregion

--#region New Button
---按钮控件初始化
---@param self Button
---@param arg ButtonNewArg
Button.onCreate = function(self, arg)
    local Name = arg.Name or "default"
    local ImgID = arg.ImgID or 0
    local Parent = 0
    if type(arg.Parent) == "table" then
        Parent = arg.Parent.Handle --[[@as int]]
    elseif type(arg.Parent) == "number" then
        Parent = arg.Parent --[[@as int]]
    end
    self.Handle = GUI:ButtonCreate(Parent or 0, Name, ImgID, 0, 0)
    self.PosX = arg.PosX or 0
    self.PosY = arg.PosY or 0
    self.Name = Name
end

---创建按钮控件
---@param arg ButtonNewArg
---@return Button
function Button:New(arg)
    return Button.new(arg)
end

function Button:Create(Parent, Name, ImgID, PosX, PosY)
    return Button:New { Parent = Parent, Name = Name, ImgID = ImgID, PosX = PosX, PosY = PosY }
end

--#endregion

--#region Button method

---设置按钮缩放比例
---@param ... { XS:int, YS:int } | number[]
---@return nil
function Button:SetScale(...)
    local _XS = 10000
    local _YS = 10000
    local v = select(1, ...)
    if type(v) == "table" then
        _XS = v.XS or 10000
        _YS = v.YS or 10000
    elseif type(v) == "number" then
        _XS = select(1, ...) or 10000
        _YS = select(2, ...) or 10000
    end
    return GUI:ButtonSetScale(self.Handle, _XS, _YS)
end

--- 设置按钮各个状态图片相对于主图片的ID偏移
---@param _NormalIndex int32
---@param _MouseOnIndex int32
---@param _MouseDownIndex int32
---@param _DisableIndex int32
---@return nil
function Button:SetImageIndex(_NormalIndex, _MouseOnIndex, _MouseDownIndex, _DisableIndex)
    return GUI:ButtonSetImageIndex(self.Handle, _NormalIndex, _MouseOnIndex, _MouseDownIndex, _DisableIndex)
end

--#endregion

--#endregion

--#region ItemCtrl

--#region ItemCtrlDefine

---@class ItemCtrlNewArg
---@field Parent Parent
---@field Name string
---@field ImgID int?
---@field PosX int?
---@field PosY int?
---@field SizeX int?
---@field SizeY int?


---@class ItemCtrl : Wnd
---@field clsName "ItemCtrl"
---@field Type 13
---@field GUIDataEnable bool?
---@field ItemCount bool?
---@field BackImgID int?
---@field ItemImgID  int?
---@field EffectImgID int?
---@field HighlightImgID int?
---@field ShowItemCount bool?
---@field ImgID int?
---@field new fun(arg:ItemCtrlNewArg) :ItemCtrl
---@field SetProp fun(self:ItemCtrl, arg: ItemCtrlSetter)
ItemCtrl = NewClass("ItemCtrl", Wnd)

--#endregion

--#region 物品移入触发函数

function NpcTalkItemInFunc(this, GUIData, DragIn, GUID, ItemId, KeyName, ItemPos, IsBound, Count)
    dbg("ceui ")
    return true
end

--#endregion

--#region ItemCtrl New

---初始化物品框
---@param self ItemCtrl
---@param arg ItemCtrlNewArg
ItemCtrl.onCreate = function(self, arg)
    local Name = arg.Name or "default"
    local ImgID = arg.ImgID or 0
    local Parent = 0
    if type(arg.Parent) == "table" then
        Parent = arg.Parent.Handle --[[@as int]]
    elseif type(arg.Parent) == "number" then
        Parent = arg.Parent --[[@as int]]
    end
    self.Handle = GUI:ItemCtrlCreate(Parent or 0, Name, ImgID, 0, 0, arg.SizeX or 42, arg.SizeY or 42)
    self.PosX = arg.PosX or 0
    self.PosY = arg.PosY or 0
    self.Name = Name
    self.GUIDataEnable = true
    self.Type = 13
end


---创建物品框控件
---@param arg ItemCtrlNewArg
function ItemCtrl:New(arg)
    return ItemCtrl.new(arg)
end

---创建物品框
---@param Parent Parent
---@param Name string
---@param ImgID int?
---@param _PosX int?
---@param _PosY int?
---@param _SizeX int?
---@param _SizeY int?
---@return ItemCtrl
function ItemCtrl:Create(Parent, Name, ImgID, _PosX, _PosY, _SizeX, _SizeY)
    return ItemCtrl.new { Parent = Parent, Name = Name, ImgID = ImgID, PosX = _PosX, PosY = _PosY, SizeX = _SizeX, SizeY = _SizeY }
end

--#endregion


--#region ItemCtrl Setter, Getter

---@class ItemCtrlSetter: WndSetter
---@field GUIDataEnable bool?
---@field BackImgID bool?
---@field ItemImgID int?
---@field EffectImgID int?
---@field HighlightImgID int?
---@field ImgID int?
---@field FrontImgID int?
---@field ItemCount int?
---@field ShowItemCount bool?

local ItemCtrlPropSetList_t = InitSetter_t({
    ---设置物品框是否有效
    ---@param self ItemCtrl
    ---@param GUIDataEnable bool
    ---@return boolean|unknown|nil
    ["GUIDataEnable"] = function(self, GUIDataEnable)
        return RDItemCtrlSetGUIDataPropByType(self.Handle, nil, ITEMGUIDATA_INVALIDATE, GUIDataEnable)
    end,

    ["BackImgID"] = function(self, _ImgId)
        return GUI:ItemCtrlSetBackImageID(self.Handle, _ImgId)
    end,
    ["ItemImgID"] = function(self, _ImgId)
        LuaArg = _ImgId --[[@as int]]
        return GUI:ItemCtrlSetGUIDataPropByType(self.Handle, ITEMGUIDATA_IMAGEID)
    end,
    ["EffectImgID"] = function(self, _ImgId)
        return GUI:ItemCtrlSetEffectImageID(self.Handle, _ImgId, 1)
    end,
    ["HighlightImgID"] = function(self, _ImgId)
        return GUI:ItemCtrlSetHighlightImageID(self.Handle, _ImgId)
    end,
    ["ImgID"] = function(self, ImgID)
        return GUI:WndSetImageID(self.Handle, ImgID)
    end,
    ["FrontImgID"] = function(self, _ImgId)
        return GUI:ItemCtrlSetFrontImageID(self.Handle, _ImgId)
    end,
    ["ItemCount"] = function(self, _Flag)
        return GUI:ItemCtrlSetShowItemCount(self.Handle, _Flag)
    end,
    ["ShowItemCount"] = function(self, _Flag)
        return GUI:ItemCtrlSetShowItemCount(self.Handle, _Flag)
    end,
    ["ShowQualityBG"] = function(self, _Flag)
        if CL:GetClientType() == 2 then
            return UI:Lua_RDItemCtrlShowQualityBG(self.Handle, _Flag)
        end
    end
})

local ItemCtrlPropGetList_t = InitGetterFromSetter(ItemCtrlPropSetList_t)

---获取高亮图片
---@param self ItemCtrl
---@return integer
ItemCtrlPropGetList_t.HighlightImgID = function(self)
    local ImgId = GUI:ItemCtrlGetHighlightImageID(self:GetHandle())
    self.getset_values.HighlightImgID = ImgId
    return ImgId
end


ItemCtrl:SetSetter(ItemCtrlPropSetList_t)
ItemCtrl:SetGetter(ItemCtrlPropGetList_t)

--#endregion

--#region ItemCtrl Method

--#region 清空物品框

function ItemCtrl:Clear()
    return GUI:ItemCtrlClearItemData(self:GetHandle())
end

--#endregion

--#region 填充物品框

---根据物品索引名填充物品框
---@param _KeyName string
---@param _Count number?
---@param _IsBind boolean?
---@return boolean|nil
function ItemCtrl:SetGUIDataByItemKeyName(_KeyName, _Count, _IsBind)
    if _Count == nil then
        self.ItemCount = false
    end
    if _IsBind == nil then
        _IsBind = false
    end
    local _flag = true
    if _KeyName == "" then
        return false
    end
    dbginfo(" 设置物品框信息")
    -- if CL:GetClientType() == 0 then
    --     _flag = RDItemCtrlSetGUIDataPropByKeyName(self.Handle, nil, _KeyName, _Count or 1, _IsBind)
    -- end
    local ehandle = CL:GetItemTemplateHandleByKeyName(_KeyName)
    if ehandle ~= 0 then
        if CL:GetItemTemplatePropByHandle(ehandle, ITEM_PROP_ID) then
            self:SetGUIDataByItemID(LuaRet --[[@as int]])
        end
    end
    return _flag
end

---@param _ItemId int # 模板ID
---@param _Count number?
---@param _IsBind boolean?
---@return boolean|nil
function ItemCtrl:SetGUIDataByItemID(_ItemId, _Count, _IsBind)
    if _Count == nil then
        self.ItemCount = false
        _Count = 1
    end

    if _IsBind == nil then
        _IsBind = false
    end

    local GUIDataHanlde = GUI:ItemCtrlGetGUIData(self.Handle)
    if GUIDataHanlde == 0 then return false; end

    --- 设置G U I D
    LuaArg = "0" --[[@as string]]
    CL:SetItemGUIDataPropByType(GUIDataHanlde, ITEMGUIDATA_ITEMGUID)

    LuaArg = _ItemId --[[@as int]]
    CL:SetItemGUIDataPropByType(GUIDataHanlde, ITEMGUIDATA_ITEMID)

    if not CL:GetItemTemplatePropByID(_ItemId, ITEM_PROP_TIPSICON) then return false end
    LuaArg = LuaRet --[[@as int]]
    CL:SetItemGUIDataPropByType(GUIDataHanlde, ITEMGUIDATA_IMAGEID)
    LuaArg = _Count
    CL:SetItemGUIDataPropByType(GUIDataHanlde, ITEMGUIDATA_ITEMCOUNT)
    LuaArg = _IsBind
    CL:SetItemGUIDataPropByType(GUIDataHanlde, ITEMGUIDATA_ISSHOWBIND)

    GUI:ItemCtrlSetGUIData(self.Handle, GUIDataHanlde)

    return true
end

--- 根据JSON字符串填充物品框物品
---@param _JsonString string
---@return nil
function ItemCtrl:SetJson(_JsonString)
    return GUI:ItemCtrlSetJson(self.Handle, _JsonString)
end

--- 根据物品GUID填充物品框
---@param _ItemGUID string
---@return boolean
function ItemCtrl:SetGUIDataByGUID(_ItemGUID)
    local ITEM_H = (type(self) == "table" and self.Handle or self) --[[@as int]]
    if ITEM_H ~= 0 then
        RDItemCtrlSetGUIDataPropByGUID(ITEM_H, "", _ItemGUID)
        return true
    end
    return false
end

--#endregion

--#region 获取物品框内物品信息

---获取物品框内物品自定义整型变量
---@param self ItemCtrl | int
---@param PropName string
---@return int
function ItemCtrl.GetItemIntFromItemCtr(self, PropName)
    local ITEM_H = (type(self) == "table" and self.Handle or self) --[[@as int]]
    if ITEM_H ~= 0 then
        if RDItemCtrlGetGUIDataKeyName(ITEM_H, nil) ~= "" then
            if GUI:ItemCtrlGetGUIDataPropByType(ITEM_H, ITEMGUIDATA_ITEMGUID) then
                local item_entity_handle = CL:GetItemEntityHandleByGUID(LuaRet --[[@as string]])
                local var = CL:GetItemEntityCustomVarInt(item_entity_handle, PropName)
                return var
            end
        end
    end
    return 0
end

---获取物品框内物品自定义字符串变量
---@param self ItemCtrl|int
---@param PropName string
---@return string
function ItemCtrl.GetItemStrFromItemCtr(self, PropName)
    local ITEM_H = (type(self) == "table" and self.Handle or self) --[[@as int]]
    if ITEM_H ~= 0 then
        if RDItemCtrlGetGUIDataKeyName(ITEM_H, nil) ~= "" then
            if GUI:ItemCtrlGetGUIDataPropByType(ITEM_H, ITEMGUIDATA_ITEMGUID) then
                local item_entity_handle = CL:GetItemEntityHandleByGUID(LuaRet --[[@as string]])
                local var = CL:GetItemEntityCustomVarStr(item_entity_handle, PropName)
                return var
            end
        end
    end
    return ""
end

--#region GUIData 及其属性

--- 设置物品框中物品的属性值
---@param _PropType int
---@return bool
function ItemCtrl:SetGUIDataProp(_PropType, Arg)
    local ITEM_H = (type(self) == "table" and self.Handle or self) --[[@as int]]
    if ITEM_H ~= 0 then
        LuaArg = Arg
        return GUI:ItemCtrlSetGUIDataPropByType(ITEM_H, _PropType)
    end
    return false
end

---获取物品框中对应物品的索引名
---@return string
function ItemCtrl:GetItemKeyName()
    return RDItemCtrlGetGUIDataKeyName(self:GetHandle(), nil)
end

--- 获取物品框中物品的属性值
---@param _PropType GUIDataPropType
---@return any
function ItemCtrl:GetGUIDataProp(_PropType)
    local ITEM_H = (type(self) == "table" and self.Handle or self) --[[@as int]]
    if ITEM_H ~= 0 then
        GUI:ItemCtrlGetGUIDataPropByType(ITEM_H, _PropType)
        return LuaRet
    end
end

--#endregion

--#region 添加物品移入判断函数

---添加物品移入判断函数
---@param _FuncName string
---@return bool?
function ItemCtrl:PushBackItemWindow(_FuncName)
    if type(_FuncName) ~= "string" then return end
    local WND_H = 0
    if type(self) == "number" then
        WND_H = self --[[@as int]]
    elseif type(self) == "table" then
        WND_H = self:GetHandle()
    end

    if WND_H ~= 0 and type(_FuncName) == "string" and _FuncName ~= "" then
        return Sys_PushBackItemWindow(WND_H, _FuncName)
    end
    return false
end

--#endregion

--#endregion


--#region 添加物品框移入事件函数

---添加物品框物品移入事件
---@param _FuncName string
function ItemCtrl:AddReItemIn(_FuncName)
    self:AddRe(RDWnd2DItemCtrl_ItemIn, _FuncName)
end

---添加物品框物品移出事件
---@param _FuncName string
function ItemCtrl:AddReItemOut(_FuncName)
    self:AddRe(RDWnd2DItemCtrl_ItemOut, _FuncName)
end

--#endregion

--#endregion


--#endregion

--#region RichEdit

---@class RichEditCreateArg
---@field Parent Parent
---@field Name string
---@field PosX int?
---@field PosY int?
---@field SizeX int?
---@field SizeY int?

---@class RichEdit : Wnd
---@field ClsName "RichEdit"
---@field FontSize int?
---@field CurFont string?
---@field IsCanEdit bool? #  设置多功能编辑框是否可以编辑
---@field OffSet int?
---@field DefaultTextColor (uint | string)?
---@field IsCenter bool?
---@field UseTextGrow bool?
---@field new fun(arg:RichEditCreateArg) : RichEdit
---@field SetProp fun(self: RichEdit, arg: RichEditSetter)
RichEdit = NewClass("RichEdit", Wnd)

--#region RichEdit Setter Getter

---@class RichEditSetter
---@field FontSize int?
---@field CurFont string?
---@field IsCanEdit bool?
---@field IsCenter bool?
---@field DefaultTextColor (string|int)?
---@field UseTextGrow bool?
---@field GrowColor (string| int)?
---@field OffSet int ?

local RichEditPropSetList_t = InitSetter_t({
    ["FontSize"] = function(self, FontSize)
        return GUI:RichEditSetCurFont(self.Handle, "system" .. FontSize)
    end,
    ["CurFont"] = function(self, _FontName)
        return GUI:RichEditSetCurFont(self.Handle, _FontName)
    end,
    ["IsCanEdit"] = function(self, _Flag)
        return GUI:RichEditSetEditEnable(self.Handle, _Flag)
    end,
    ["IsCenter"] = function(self, _Flag)
        if _Flag == true then
            return GUI:WndSetFlagsM(self.Handle, 0x00400000)
        end
    end,
    ["DefaultTextColor"] = function(self, _Color)
        return GUI:RichEditSetDefaultTextColor(self.Handle, TransColor(_Color))
    end,
    ["UseTextGrow"] = function(self, _used)
        return GUI:WndSetUseTextGrow(self.Handle, _used)
    end,
    ["GrowColor"] = function(self, _Color)
        return GUI:RichEditSetTextGrowColor(self.Handle, TransColor(_Color))
    end,
    ["OffSet"] = function(self, _Offset)
        GUI:RichEditSetOffSet(self.Handle, _Offset)
    end
})

local RichEditPropGetList_t = InitGetterFromSetter(RichEditPropSetList_t)

RichEdit:SetSetter(RichEditPropSetList_t)
RichEdit:SetGetter(RichEditPropGetList_t)

--#endregion

--#region RichEdit New

---初始化函数
---@param self RichEdit
---@param arg RichEditCreateArg
RichEdit.onCreate = function(self, arg)
    local Name = arg.Name or "default"
    local Parent = 0
    if type(arg.Parent) == "table" then
        Parent = arg.Parent:GetHandle() --[[@as int]]
    elseif type(arg.Parent) == "number" then
        Parent = arg.Parent --[[@as int]]
    end
    self.Handle = GUI:RichEditCreate(Parent or 0, Name, 0, 0, 0, 0)
    GUI:RichEditEnableInvalidateData(self.Handle, true)
    self.SizeX = arg.SizeX or 150
    self.SizeY = arg.SizeY or 20
    self.PosX = arg.PosX or 0
    self.PosY = arg.PosY or 0
    self.Name = Name
end

---创建多功能编辑框
---@param arg RichEditCreateArg
---@return RichEdit
function RichEdit:New(arg)
    local richedit = RichEdit.new(arg)
    richedit.IsCanEdit = false
    return richedit
end

---创建不可编辑多功能编辑框
---@param arg RichEditCreateArg
---@return RichEdit
function RichEdit:NewStatic(arg)
    local richedit_t = RichEdit.new(arg)
    richedit_t.IsCanEdit = false
    richedit_t.CanRevMsg = false
    -- richedit_t.Enable =false
    return richedit_t
end

function RichEdit:Create(Parent, Name, PosX, PosY, SizeX, SizeY)
    return RichEdit:New { Parent = Parent, Name = Name, PosX = PosX, PosY = PosY, SizeX = SizeX, SizeY = SizeY }
end

function RichEdit:CreateStatic(Parent, Name, PosX, PosY, SizeX, SizeY)
    return RichEdit:NewStatic { Parent = Parent, Name = Name, PosX = PosX, PosY = PosY, SizeX = SizeX, SizeY = SizeY }
end

--#endregion


--#region RichEdit Method

--- 清空多功能编辑框的文本内容
---@return nil
function RichEdit:Clear()
    return GUI:RichEditClear(self.Handle)
end

--- 多功能编辑框添加文本
---@param _Info string # 消息文本
---@return nil
function RichEdit:AppStr(_Info)
    return GUI:RichEditAppendString(self.Handle, _Info)
end

--- 获取多功能编辑框中被点击的文本
---@return string
function RichEdit:GetClickStr()
    return GUI:RichEditGetSelectClickString(self.Handle)
end

--- 设置指定多功能编辑框超链接文字的颜色
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
---@param _ColorStr string # 颜色字符串，
function RichEdit:SetLinkColor(_Flag, _ColorStr)
    return GUI:RichEditSetLinkColor(self.Handle, _Flag, _ColorStr)
end

--#endregion

--#endregion


--#region ComboBox

--#region ComboBoxDefine

---@class ComboBoxCreateArg
---@field Parent Parent
---@field Name string
---@field ImgId int
---@field PosX int?
---@field PosY int?
---@field SizeX int?
---@field SizeY int?
---@field Length int? #新建组合框控件的下拉背景的高度


---@class ComboBox : Wnd
---@field ClsName "RichEdit"
---@field new fun(arg:ComboBoxCreateArg) : ComboBox
ComboBox = NewClass("ComboBox", Wnd)

--#endregion

--#region ComboBox New

---组合框初始化函数
---@param self ComboBox
---@param arg ComboBoxCreateArg
ComboBox.onCreate = function(self, arg)
    local Name = arg.Name or "default"
    local Parent = 0
    if type(arg.Parent) == "table" then
        Parent = arg.Parent:GetHandle() --[[@as int]]
    elseif type(arg.Parent) == "number" then
        Parent = arg.Parent --[[@as int]]
    end
    self.Handle = GUI:ComboBoxCreate(Parent, Name, arg.ImgId,
                                     arg.PosX or 0, arg.PosY or 0, arg.SizeX or 100, arg.SizeY or 25, arg.Length or 100)
end

---创建新组合框
---@param self ComboBox
---@param arg ComboBoxCreateArg
---@return ComboBox
ComboBox.New = function(self, arg)
    return ComboBox.new(arg)
end

ComboBox.Create = function(self, Parent, Name, ImgID, PosX, PosY, SizeX, SizeY, Length)
    return ComboBox:New { Parent = Parent, Name = Name, ImgId = ImgID, PosX = PosX, PosY = PosY, SizeX = SizeX, SizeY = SizeY, Length = Length }
end
--#endregion

--#region ComboBox Method

function ComboBox:SetCurSelect(_Index)
    return GUI:ComboBoxSetCurSelect(self:GetHandle(), _Index)
end

function ComboBox:SetEditSize(_Width, _Height)
    return GUI:ComboBoxSetEditSize(self:GetHandle(), _Width, _Height)
end

function ComboBox:SetFixListLength(_Length)
    return GUI:ComboBoxSetFixListLength(self:GetHandle(), _Length)
end

function ComboBox:SetListFillImage(_ImgId)
    return GUI:ComboBoxSetListFillImage(self:GetHandle(), _ImgId)
end

function ComboBox:SetScrollBarImage(_Up, _Mid, _Down, _Back)
    return GUI:ComboBoxSetScrollBarImage(self:GetHandle(), _Up, _Mid, _Down, _Back)
end

--#endregion

--#endregion

--#region CheckBox

--#region CheckBoxDefine

---@class CheckBoxNewArg
---@field Parent Parent
---@field Name string
---@field ImgId int
---@field Title string
---@field PosX int
---@field PosY int

---@class CheckBox : Wnd
---@field AutoChange boolean?
---@field Check boolean? # 选择状态
---@field Text boolean?
---@field ClsName "CheckBox"
---@field new fun(arg:CheckBoxNewArg) : CheckBox
---@field SetProp fun(self:CheckBox, arg:CheckBoxSetter)
CheckBox = NewClass("CheckBox", Wnd)

--#endregion

--#region CheckBox New

---初始化复选框
---@param self CheckBox
---@param arg CheckBoxNewArg
CheckBox.onCreate = function(self, arg)
    local Name = arg.Name or "default"
    local Parent = 0
    if type(arg.Parent) == "table" then
        Parent = arg.Parent:GetHandle() --[[@as int]]
    elseif type(arg.Parent) == "number" then
        Parent = arg.Parent --[[@as int]]
    end
    self.Handle = GUI:CheckBoxCreate(Parent, Name,
                                     arg.ImgId, arg.Title, arg.PosX, arg.PosY)
end

---comment
---@param self CheckBox
---@param arg CheckBoxNewArg
---@return CheckBox
CheckBox.New = function(self, arg)
    return CheckBox.new(arg)
end

---创建
---@param _ParentHandle Parent
---@param _pCheckID string
---@param _ImageID int
---@param _Tital string
---@param _PosX integer
---@param _PosY integer
CheckBox.Create = function(_ParentHandle, _pCheckID, _ImageID, _Tital, _PosX, _PosY)
    return CheckBox.new { Parent = _ParentHandle, Name = _pCheckID, ImgId = _ImageID, Title = _Tital, PosX = _PosX, PosY = _PosY }
end

--#endregion

--#region CheckBox getset

---@class CheckBoxSetter
---@field AutoChange bool?
---@field Check bool?
---@field Text string?

local CheckBoxPropSetList_t = InitSetter_t({
    ["AutoChange"] = function(self, _AutoChange)
        return GUI:CheckBoxSetAutoChange(self:GetHandle(), _AutoChange)
    end,
    ["Check"] = function(self, _Check)
        return GUI:CheckBoxSetCheck(self:GetHandle(), _Check)
    end,
    ["Text"] = function(self, _ControlString)
        return GUI:CheckBoxSetText(self:GetHandle(), _ControlString)
    end
})
local CheckBoxPropGetList_t = InitGetterFromSetter(CheckBoxPropSetList_t)

CheckBox:SetSetter(CheckBoxPropSetList_t)
CheckBox:SetGetter(CheckBoxPropGetList_t)

--#region  CheckBox Method

---添加复选框状态发生变化事件
---@param _FuncName string
function CheckBox:AddReCheckChange(_FuncName)
    if type(_FuncName) ~= "string" then
        dbginfo("注册复选框状态发生变化事件出错")
        return
    end
    self:AddRe(RDWnd2DCheckCL_check_change, _FuncName)
end

--#endregion
--#endregion
