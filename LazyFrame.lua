--#region ����-ԭ�Ͷ����춨��

---- lua ģ��C#��
--- [����](https://blog.csdn.net/YuAnHandSome/article/details/105809559)
--- �����޸����Getter��Setter����
local mt = {}
mt.__get__ = {}
mt.__set__ = {}

local function SetClassSetter(self, Prop_t)
    self.__set__ = setmetatable(Prop_t, { __index = self.base.__set__ or {} })
end

local function SetClassGetter(self, Prop_t)
    self.__get__ = setmetatable(Prop_t, { __index = self.base.__get__ or {} })
end

---����һ���µ���
---@param clsName string ����
---@param base table? ����
---@return table
function NewClass(clsName, base)
    local cls = {}
    base = base or mt
    cls.__get__ = (base.__get__ and setmetatable({}, { __index = base.__get__ }) or {})
    cls.__set__ = (base.__set__ and setmetatable({}, { __index = base.__set__ }) or {})
    setmetatable(cls, { __index = base })
    cls.clsName = clsName or "default"
    cls.base = base
    cls.__index = cls
    --- ��ʵ����
    cls.new = function(...)
        local cls_instance = {}
        cls_instance.getset_values = {}
        for k, v in pairs(cls) do
            cls_instance[k] = v
        end
        local cls_instance_mt = {
            __index = function(t, k)
                -- print("value: type: " .. type(k))
                if cls[k] then
                    return cls[k]
                end
                --- �����getter ����ִ��getter
                if t.__get__[k] then
                    t.__get__[k](t) -- ִ��
                    return t.getset_values[k]
                end
                if string.sub(k, 1, 2) == "__" then
                    local tmpK = string.sub(k, 3, -1)
                    if t.getset_values[tmpK] then
                        return t.getset_values[tmpK]
                    end
                end
            end,
            __newindex = function(t, k, v)
                -- print(k .. v)
                if t.__set__[k] then
                    t.__set__[k](t, v)                -- ִ�л�ȡ��
                    cls_instance.getset_values[k] = v --����ֵ
                    return
                end
                if string.sub(k, 1, 2) == "__" then
                    local tmpK = string.sub(k, 3, -1)
                    if t.getset_values[tmpK] then
                        t.getset_values[tmpK] = v
                    end
                end
                --û�л�ȡ��
                rawset(t, k, v)
                -- t[k] = v -- ��һֱ����__index ����
            end
        }
        setmetatable(cls_instance, cls_instance_mt)
        if cls_instance.onCreate then
            cls_instance:onCreate(...) -- Ϊʲô����ִ�к������ᴥ��__newindex����
            -- ͬ���ᴥ����ֻ����������__index�����ڵ��趨û���趨getter�����Իᱻrawset��������
        end
        return cls_instance
    end
    --- ������ ��Setter��Getter
    cls.SetSetter = SetClassSetter
    cls.SetGetter = SetClassGetter
    return cls
end

function InitSetter_t(Prop_t)
    Prop_t.__index = Prop_t
    return Prop_t
end

function InitGetterFromSetter(Prop_t)
    local tmp_t = {}
    for key, value in pairs(Prop_t) do
        tmp_t[key] = function(self) end
    end
    tmp_t.__index = tmp_t
    return tmp_t
end

--#endregion

--#region �Զ��庯��

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

---ת����ɫ
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

--#region xml

---����xml��ڵ㣬���� ���Ϊ1
---@param xml Xml
---@return function
function XmlIter(xml)
    local xml = xml
    local root = xml:Root()
    local firstEle = xml:FirstChild(root)
    local ele = firstEle

    ---����xml��ڵ�
    ---@return integer # xml�ڵ�����
    local iter = function()
        local nowele = ele
        ele = xml:NextSibling(ele)
        return nowele
    end

    return iter
end

--#endregion

--#region ���

--#region ��ȡ

---��ȡ���������صĸ����Զ���`int`����
---@param _DataKey string
---@return integer
function GetSelfInt(_DataKey)
    return CL:GetPlayerCustomIntData(CL:GetPlayerSelfGUID(), _DataKey)
end

---��ȡ���������صĸ����Զ���`string`����
---@param _DataKey string
---@return string
function GetSelfStr(_DataKey)
    return CL:GetPlayerCustomStringData(CL:GetPlayerSelfGUID(), _DataKey)
end

--#endregion

--#endregion

--#endregion

--#region Wnd

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
---@field new fun(arg:WndCreateArg) : Wnd
---@field __set__ table
---@field __get__ table
---@field SetSetter fun(self:Wnd,Prop_t:table)
---@field SetGetter fun(self:Wnd,Prop_t:table)
Wnd = NewClass("Wnd")


--#region ��װ�ӿ�

---��ȡ���ھ��
---@return int
function Wnd:GetHandle()
    return self.Handle
end

---@param _Handle int
function Wnd:SetHandle(_Handle)
    self.Handle = _Handle
end

---@class WndSize
---@field SizeX int
---@field SizeY int

---�ı䴰�ڴ�С
---@param arg WndSize
function Wnd:SetSize(arg)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    return GUI:WndSetSizeM(WND_H, arg.SizeX or 0, arg.SizeY or 0)
end

function Wnd:SetWndSize(SizeX, SizeY)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    return GUI:WndSetSizeM(WND_H, SizeX or 0, SizeY or 0)
end

---@class WndPos
---@field PosX int
---@field PosY int

---�ı䴰��λ��
---@param arg WndPos
function Wnd:SetPos(arg)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    return GUI:WndSetPosM(WND_H, arg.PosX or 0, arg.PosY or 0)
end

---���ô��ڲ���
---@param param int
function Wnd:SetParam(param)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    return GUI:WndSetParam(WND_H, param or 0)
end

---��ȡ���ڲ���
---@return integer
function Wnd:GetParam()
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    return GUI:WndGetParam(WND_H)
end

---@class SetWndArg
---@field Visible bool?
---@field Enable bool? # �Ƿ����
---@field CanRevMsg bool? # �Ƿ�ɽ�����Ϣ
---@field Param int? # ���ò���

---�ı䴰�ڹ�������
---@param arg SetWndArg
function Wnd:SetWnd(arg)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    if arg.Visible ~= nil then GUI:WndSetVisible(WND_H, arg.Visible) end
    if arg.Enable ~= nil then GUI:WndSetEnableM(WND_H, arg.Enable) end
    if arg.CanRevMsg ~= nil then GUI:WndSetCanRevMsg(WND_H, arg.CanRevMsg) end
    if arg.Param ~= nil then GUI:WndSetParam(WND_H, arg.Param) end
end

--#region �Զ�������

--#region ���

---Ϊ����ؼ�����Զ�������
---@param _Key string @ ������
---@param _Val string@ ����ֵ
function Wnd:AddProperty(_Key, _Val)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    return GUI:WndAddProperty(WND_H, _Key, _Val)
end

--#endregion

--#region ��ȡ

---��ȡ�����Զ�������
---@param self Wnd | int
---@param _Key string @ ������
---@return string
function Wnd.GetProperty(self, _Key)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    return GUI:WndGetProperty(WND_H, _Key)
end

--#endregion

--#region ɾ��

---ɾ�������Զ�������
---@param self Wnd | int
---@param _Key string @ ������
function Wnd:DelProperty(_Key)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    return GUI:WndDelProperty(WND_H, _Key)
end

--#endregion

--#endregion

function Wnd:SetFlags(_Flag)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    return GUI:WndSetFlagsM(WND_H, _Flag)
end

--#region ����ص�����

--#region ע�ᴰ��ؼ����¼��ص�����

--- ע�ᴰ��ؼ����¼��ص�����
---@param self Wnd | int
---@param _Msg int
---@param _FuncName string
---@return bool
function Wnd:AddRe(_Msg, _FuncName)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    return GUI:WndRegistScript(WND_H, _Msg, _FuncName)
end

---ע�ᴰ��ؼ����¼��ص���������չ��
---@param _Msg int @�ƶ�����ؼ����¼�ID
---@param _FuncName string @�ص�������
---@param _Param string @Ԥ��Ļص����������������ص������ĵ�5������
---@return bool @true:�ؼ�����,fasle:�ؼ�������
function Wnd:AddReEx(_Msg, _FuncName, _Param)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    return GUI:WndRegistScriptEx(WND_H, _Msg, _FuncName, _Param)
end

---�������������
---@param _FuncName string
function Wnd:AddReLBClick(_FuncName)
    return Wnd.AddRe(self, RDWndBaseCL_mouse_lbClick, _FuncName)
end

---����������ؼ��ص�����
---@param _FuncName string
---@return boolean
function Wnd:AddReMouseIn(_FuncName)
    return Wnd.AddRe(self, RDWndBaseCL_mouse_in, _FuncName)
end

---��������뿪�ؼ��ص�����
---@param _FuncName string
---@return boolean
function Wnd:AddReMouseOut(_FuncName)
    return Wnd.AddRe(self, RDWndBaseCL_mouse_out, _FuncName)
end

--- ���Ӵ��ڹر��¼��ص�����
---@param _FuncName string
---@return boolean
function Wnd:AddReClose(_FuncName)
    return Wnd.AddRe(self, RDWndBaseCL_wnd_close, _FuncName)
end

--#endregion

--#region ɾ��

function Wnd:DelRe(_Msg)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    return GUI:WndClearScript(WND_H, _Msg)
end

function Wnd:DelReLBClick()
    return Wnd:DelRe(RDWndBaseCL_mouse_lbClick)
end

--#endregion

--#endregion

--#region ��ʱ��

--#region ���

---�ڴ���ؼ�����Ӷ�ʱ��
---@param _ID int
---@param _Elapse int
---@param _ScriptHandle string
function Wnd:AddTimer(_ID, _Elapse, _ScriptHandle)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    return GUI:WndAddTimer(WND_H, _ID, _Elapse, _ScriptHandle)
end

---�ڴ���ؼ�����Ӷ�ʱ��
---@param _ID int
---@param _Elapse int
---@param _ScriptHandle string
function Wnd:AddTimerEx(_ID, _Elapse, _ScriptHandle, _Param)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    return GUI:WndAddTimerEx(WND_H, _ID, _Elapse, _ScriptHandle, _Param)
end

---�ڴ���ؼ�����ӽ��鶨ʱ��
---@param _Elapse int @ִ�лص�������ʱ����
---@param _ScriptHandle string @�ص�����������
---@return int @OK����ʱ��ID��NO��0
function Wnd:AddTimerBrief(_Elapse, _ScriptHandle)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    return GUI:WndAddTimerBrief(WND_H, _Elapse, _ScriptHandle)
end

---�ڴ���ؼ�����ӽ��鶨ʱ��
---@param _Elapse int @ִ�лص�������ʱ����
---@param _ScriptHandle string @�ص�����������
---@param _Param string @ Ԥ��Ļص�����
---@return int @OK����ʱ��ID��NO��0
function Wnd:AddTimerBriefEx(_Elapse, _ScriptHandle, _Param)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    return GUI:WndAddTimerBriefEx(WND_H, _Elapse, _ScriptHandle, _Param)
end

--#endregion

--#region ɾ��

function Wnd:DelTimer(_ID)
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    return GUI:WndDelTimer(WND_H, _ID)
end

---ɾ�����������еĶ�ʱ��
function Wnd:DelAllTimer()
    local WND_H = (type(self) == "number" and self or self:GetHandle())
    return GUI:WndDelAllTimer(WND_H)
end

--#endregion

--#endregion

--#endregion

--#region Wnd Setter,Getter
local tSet_t = {
    ---�ı䴰��λ��
    ---@param self Wnd
    ---@param arg WndPos
    ["Pos"] = function(self, arg)
        if self.Handle == nil then return end
        self.PosX = arg.PosX
        self.PosY = arg.PosY
    end,
    ---�ı䴰��λ��
    ---@param self Wnd
    ---@param arg int
    ["PosX"] = function(self, arg)
        if self.Handle == nil then return end
        if GUI:WndGetPosM(self.Handle) then
            GUI:WndSetPosM(self.Handle, arg, LuaRet[2])
        end
    end,
    ---�ı䴰��λ��
    ---@param self Wnd
    ---@param arg int
    ["PosY"] = function(self, arg)
        if self.Handle == nil then return end
        if GUI:WndGetPosM(self.Handle) then
            GUI:WndSetPosM(self.Handle, LuaRet[1], arg)
        end
    end,
    ---�ı䴰�� ����
    ---@param self Wnd
    ---@param Name string
    ["Name"] = function(self, Name)
        GUI:WndSetIDM(self.Handle, Name)
    end,
    ---���� ����ؼ��Ƿ� �ɼ�
    ---@param self Wnd
    ---@param Visible bool
    ["Visible"] = function(self, Visible)
        GUI:WndSetVisible(self.Handle, Visible)
    end,
    --- ���ô���ؼ����Զ������
    ---@param self Wnd
    ---@param Param uint
    ["IDParam"] = function(self, Param)
        dbg("���õĲ���Ϊ�� " .. Param)
        GUI:WndSetIDParam(self.Handle, Param)
    end,
    --- ���ô���ؼ����Զ������
    ---@param self Wnd
    ---@param Param uint
    ["Param"] = function(self, Param)
        dbg("���õĲ���Ϊ�� " .. Param)
        GUI:WndSetParam(self.Handle, Param)
    end,
    --- ���ô���Esc�ر�����
    ---@param self Wnd
    ---@param IsESC bool
    ["IsESC"] = function(self, IsESC)
        GUI:WndSetIsESCClose(self.Handle, IsESC)
    end,
    --- ���ô����Ƿ����
    ---@param self Wnd
    ---@param Enable bool
    ["Enable"] = function(self, Enable)
        GUI:WndSetEnableM(self.Handle, Enable)
    end,
    --- ���ô����Ƿ���Ӧ����
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
    end
}

local WndPropSetList_t = InitSetter_t(tSet_t)
local WndPropGetList_t = InitSetter_t(tSet_t)

Wnd:SetSetter(WndPropSetList_t)
Wnd:SetGetter(WndPropGetList_t)

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

---��������ʼ��
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

---��������
---@param arg WndCreateArg
---@return Wnd
function Wnd:New(arg)
    return Wnd.new(arg)
end

---��������
---@param Parent int|Parent
---@param Name string
---@param ImgID int?
---@param PosX int?
---@param PosY int?
---@return Wnd
function Wnd:Create(Parent, Name, ImgID, PosX, PosY)
    return Wnd.new { Parent = Parent, Name = Name, ImgID = ImgID, PosX = PosX or 0, PosY = PosY or 0 }
end

---��������
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

--#endregion

--#region Edit

--#region Edit �ඨ��

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
---@field new fun(arg:EditCreateArg) : Edit
Edit = NewClass("Edit", Wnd) --[[@as Edit]]

---@class EditSetPropArg
---@field Handle int?
---@field Info string? # ָ���༭�������
---@field Visible bool? # �Ƿ�ɼ�
---@field Enable bool? # �Ƿ����
---@field CanRevMsg bool? # �Ƿ�ɽ�����Ϣ
---@field IsCenter bool? # �����Ƿ����Ҿ���
---@field Color (integer|string)? # �ı���ɫ
---@field IsNumber bool? # �༭���Ƿ�Ϊ���ֱ༭��
---@field Text string? # �ı�����
---@field Font string? # ��������
---@field FontSize int? #�����С
---@field GrowColor (int|string)? �����ɫ
---@field IsGrow bool? �Ƿ����

---���ñ༭������
---@param arg EditSetPropArg
---@return bool
function Edit:SetProp(arg)
    local _flag = (type(self) == "number")
    if _flag then
        local Edit_H = self:GetHandle() --[[@as int]]
        if not WndAttach(Edit_H, arg.Info) then return false end
        if arg.Visible ~= nil then GUI:WndSetVisible(Edit_H, arg.Visible) end
        if arg.Enable ~= nil then GUI:WndSetEnableM(Edit_H, arg.Enable) end
        if arg.CanRevMsg ~= nil then GUI:WndSetCanRevMsg(Edit_H, arg.CanRevMsg) end
        if arg.IsCenter == true then GUI:EditSetFontCenter(Edit_H) end
        if arg.Color ~= nil then GUI:EditSetTextColor(Edit_H, TransColor(arg.Color)) end
        if arg.IsNumber ~= nil then GUI:EditSetBNumber(Edit_H, true) end
        if arg.Text ~= nil then GUI:EditSetTextM(Edit_H, arg.Text) end
        if arg.Font ~= nil then GUI:EditSetFontM(Edit_H, arg.Font) end
        if arg.FontSize ~= nil then GUI:WndSetFontSize(Edit_H, arg.FontSize) end
        if arg.GrowColor ~= nil then GUI:EditSetTextGrowColor(Edit_H, TransColor(arg.GrowColor)) end
        if arg.IsGrow ~= nil then GUI:WndSetUseTextGrow(Edit_H, arg.IsGrow) end
    else
        -- Edit_H = self --[[@as Edit]]
        if arg.Visible ~= nil then self.Visible = arg.Visible end
        if arg.Enable ~= nil then self.Enable = arg.Enable end
        if arg.CanRevMsg ~= nil then self.CanRevMsg = arg.CanRevMsg end
        if arg.IsCenter == true then self.IsCenter = arg.IsCenter end
        if arg.Color ~= nil then self.Color = arg.Color end
        if arg.IsNumber ~= nil then end
        if arg.Text ~= nil then self.Text = arg.Text end
        if arg.Font ~= nil then self.Font = arg.Font end
        if arg.FontSize ~= nil then self.FontSize = arg.FontSize end
        if arg.GrowColor ~= nil then self.GrowColor = arg.GrowColor end
        if arg.IsGrow ~= nil then self.IsGrow = arg.IsGrow end
    end

    return true
end

--#region Edit New

---@class EditCreateArg
---@field Parent Parent
---@field Name string
---@field PosX int?
---@field PosY int?
---@field SizeX int?
---@field SizeY int?

---�������� �� ����ʼ��
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

---�����༭��ؼ�
---@param arg EditCreateArg
---@return Edit
function Edit:New(arg)
    return Edit.new(arg)
end

---������̬�༭��ؼ�
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
    end
})

local EditPropGetList_t = InitGetterFromSetter(EditPropSetList_t)

-- SetClassGetter(Edit, EditPropGetList_t)
-- SetClassSetter(Edit, EditPropSetList_t)

-- Edit.__get__ = EditPropGetList_t
-- Edit.__set__ = EditPropSetList_t

Edit:SetSetter(EditPropSetList_t)
Edit:SetGetter(EditPropGetList_t)

--#endregion


--#region Edit method


--- ���ñ༭���п�����������ֵ
---@param _Type
---| 0 # ��ͨ�༭��
---| 1 # ��������ַ������Ƶ����ֱ༭��
---| 2 # ��������ַ������ƵĻ������ֱ༭��
---| -1 # ������ַ������Ƶ����ֱ༭��
---| -2 # ������ַ������ƵĻ������ֱ༭��
---@param _Number string # �����ֵ
--- > ������_Type����Ϊ`0`ʱ���˲�������Ч��
---
--- > �ڲ���_Type����Ϊ-1��-2��ǰ���£�������_Number���õ���ֵ��Ӧ���ַ������ڴ˱༭��ؼ�����������ַ�������ʵ�ʿ�����������ֵΪ��ǰ�ַ�������Ӧ�����ֵ������ɲο��Ҳ�ʾ����
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
-- Image = setmetatable({}, Wnd)

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
---@field IsCenter bool?
---@field IsGray bool?
---@field ImgID int?
---@field FitSize bool?
---@field new fun(arg:ImageNewArg) :Image
Image = NewClass("Image", Wnd)

--#region Image Setter, Getter

local ImagePropSetList_t = InitSetter_t({
    ---����ͼƬ�ؼ��Ƿ������ĵ���ƣ�������
    ---@param self Image
    ---@param IsCenter bool
    ["IsCenter"] = function(self, IsCenter)
        return GUI:ImageSetFixedDrawCenter(self.Handle, IsCenter)
    end,
    --- ����ͼƬ�ؼ��Ƿ�Ҷ���ʾ
    ---@param self Image
    ---@param IsGray bool �Ƿ�Ҷ���ʾ
    ---@return nil
    ["IsGray"] = function(self, IsGray)
        return GUI:ImageSetGray(self.Handle, IsGray or false)
    end,
    ---�ı�ͼƬ�ؼ���ͼƬID
    ---@param self Image
    ---@param ImgID int
    ---@return nil
    ["ImgID"] = function(self, ImgID)
        return GUI:WndSetImageID(self.Handle, ImgID)
    end,
    ["FitSize"] = function(self, _Flag)
        return GUI:ImageSetFitSize(self.Handle, _Flag)
    end
})

local ImagePropGetList_t = InitGetterFromSetter(ImagePropSetList_t)

-- SetClassSetter(Image, ImagePropSetList_t)
-- SetClassGetter(Image, ImagePropGetList_t)

-- Image.__get__ = ImagePropGetList_t
-- Image.__set__ = ImagePropSetList_t

Image:SetSetter(ImagePropSetList_t)
Image:SetGetter(ImagePropGetList_t)

--#endregion

--#region Image �½�

---�������� �� ����ʼ��
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
end

---����ͼƬ�ؼ�
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

---���þŹ���ͼƬ
---@param num int
function Image:SetAroundImageEx(num)
    local IMAGE_H = (type(self) == "number" and self or self:GetHandle())
    local ImageID = num
    GUI:ImageSetAroundImageEx(IMAGE_H, ImageID, ImageID + 2, ImageID + 6, ImageID + 8, ImageID + 4, ImageID + 1,
        ImageID + 7, ImageID + 3, ImageID + 5, false)
end

--- ����ͼƬ�ؼ������ź���ת
---@param _ScaleX int
---@param _ScaleY int
---@param _Roation int?
--- > Ĭ�������Ͻǲ��䣬�������������Ļ���
function Image:SetTransfrom(_ScaleX, _ScaleY, _Roation)
    return GUI:ImageSetTransfrom(self.Handle, _ScaleX, _ScaleY, _Roation or 0)
end

---����ͼƬ�ؼ��Ƿ񲥷Ŷ���
---@param _Enable bool
---@param _Speed uint
function Image:SetAnimateEnable(_Enable, _Speed)
    return GUI:ImageSetAnimateEnable(self.Handle, _Enable, _Speed)
end

---����ͼƬ�Ƿ���ת
---@param _FlipX bool? # ˮƽ��ת
---@param _FlipY bool? # ��ֱ��ת
function Image:SetFlip(_FlipX, _FlipY)
    return GUI:ImageSetFlip(self.Handle, _FlipX or false, _FlipY or false)
end

---����ͼƬ��С ���Զ�����
---@param SizeX int
---@param SizeY int
---@return nil
function Image:SetImgSize(SizeX, SizeY)
    self.FitSize = true
    return GUI:WndSetSizeM(self.Handle, SizeX, SizeY)
end

--- ����ͼƬ�ؼ���ê��λ��
---@param _AnchorPosX int # ����ê��������λ��
--- >  ����ֵ����10000���ü�ΪX�᷽���ϵı�����
---@param _AnchorPosY int # ����ê���������λ��
--- >  ����ֵ����10000���ü�ΪY�᷽���ϵı�����
---@return nil
function Image:SetCenter(_AnchorPosX, _AnchorPosY)
    return GUI:ImageSetCenter(self.Handle, 1, _AnchorPosX, _AnchorPosY)
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
---@field FontSize int?
---@field TextColor (string|int)?
---@field IsCenter bool?
---@field IsGray bool?
---@field DrawCenter bool?
---@field new fun(arg:ButtonNewArg) :Button
Button = NewClass("Button", Wnd)

--#region Button Setter, Getter

local ButtonPropSetList_t = InitSetter_t({
    ---���ð�ť�Ƿ������ĵ�Ϊê����л���
    ---@param self Button
    ---@param _DrawCenter boolean
    ---@return nil
    ["DrawCenter"] = function(self, _DrawCenter)
        return GUI:ButtonSetDrawCenter(self.Handle, _DrawCenter)
    end,
    ["Text"] = function(self, _Text)
        return GUI:WndSetTextM(self.Handle, _Text)
    end,
    ["FontSize"] = function(self, _Size)
        return GUI:WndSetFontSize(self.Handle, _Size)
    end,
    ["TextColor"] = function(self, _Color)
        return GUI:WndSetTextColorM(self.Handle, TransColor(_Color))
    end
})

local ButtonPropGetList_t = InitGetterFromSetter(ButtonPropSetList_t)

-- SetClassSetter(Button, ButtonPropSetList_t)
-- SetClassSetter(Button, ButtonPropGetList_t)

Button:SetSetter(ButtonPropSetList_t)
Button:SetGetter(ButtonPropGetList_t)

--#endregion

--#region New Button
---��ť�ؼ���ʼ��
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

---������ť�ؼ�
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

---���ð�ť���ű���
---@param ... table | number[]
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

--#endregion

--#endregion

--#region ItemCtrl


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
---@field ImgID int?
---@field new fun(arg:ItemCtrlNewArg) :ItemCtrl
ItemCtrl = NewClass("ItemCtrl", Wnd)

--#region ItemCtrl New

---��ʼ����Ʒ��
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


---������Ʒ��ؼ�
---@param arg ItemCtrlNewArg
function ItemCtrl:New(arg)
    return ItemCtrl.new(arg)
end

---������Ʒ��
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

local ItemCtrlPropSetList_t = InitSetter_t({
    ---������Ʒ���Ƿ���Ч
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
    end
})

local ItemCtrlPropGetList_t = InitGetterFromSetter(ItemCtrlPropSetList_t)

-- SetClassSetter(ItemCtrl, ItemCtrlPropSetList_t)
-- SetClassGetter(ItemCtrl, ItemCtrlPropGetList_t)

ItemCtrl:SetSetter(ItemCtrlPropSetList_t)
ItemCtrl:SetGetter(ItemCtrlPropGetList_t)

--#endregion

--#region ItemCtrl Method

---������Ʒ�����������Ʒ��
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
    -- if CL:GetClientType() == 0 then
    --     _flag = RDItemCtrlSetGUIDataPropByKeyName(self.Handle, nil, _KeyName, _Count or 1, _IsBind)
    -- end
    local ehandle = CL:GetItemTemplateHandleByKeyName(_KeyName)
    if ehandle ~= 0 then
        LuaArg = "0" --[[@as string]]
        GUI:ItemCtrlSetGUIDataPropByType(self.Handle, ITEMGUIDATA_ITEMGUID)
        if CL:GetItemTemplatePropByHandle(ehandle, ITEM_PROP_TIPSICON) then
            LuaArg = LuaRet --[[@as int]]
            GUI:ItemCtrlSetGUIDataPropByType(self.Handle, ITEMGUIDATA_IMAGEID)
        end
        if CL:GetItemTemplatePropByHandle(ehandle, ITEM_PROP_ID) then
            LuaArg = LuaRet
            GUI:ItemCtrlSetGUIDataPropByType(self.Handle, ITEMGUIDATA_ITEMID)
        end
        LuaArg = _Count
        GUI:ItemCtrlSetGUIDataPropByType(self.Handle, ITEMGUIDATA_ITEMCOUNT)
        LuaArg = _IsBind
        GUI:ItemCtrlSetGUIDataPropByType(self.Handle, ITEMGUIDATA_ISSHOWBIND)
    end
    return _flag
end

---������Ʒģ��ID�����Ʒ��
---@param _ItemId int # ģ��ID
---@param _Count number?
---@param _IsBind boolean?
---@return boolean|nil
function ItemCtrl:SetGUIDataByItemID(_ItemId, _Count, _IsBind)
    if _Count == nil then
        self.ItemCount = false
    end
    if _IsBind == nil then
        _IsBind = false
    end
    LuaArg = "0" --[[@as string]]
    GUI:ItemCtrlSetGUIDataPropByType(self.Handle, ITEMGUIDATA_ITEMGUID)

    LuaArg = _ItemId --[[@as int]]
    GUI:ItemCtrlSetGUIDataPropByType(self.Handle, ITEMGUIDATA_ITEMID)

    if not CL:GetItemTemplatePropByID(_ItemId, ITEM_PROP_TIPSICON) then return false end
    LuaArg = LuaRet --[[@as int]]
    GUI:ItemCtrlSetGUIDataPropByType(self.Handle, ITEMGUIDATA_IMAGEID)
    LuaArg = _Count
    GUI:ItemCtrlSetGUIDataPropByType(self.Handle, ITEMGUIDATA_ITEMCOUNT)
    LuaArg = _IsBind
    GUI:ItemCtrlSetGUIDataPropByType(self.Handle, ITEMGUIDATA_ISSHOWBIND)
    return true
end

---��ȡ��Ʒ������Ʒ�Զ������ͱ���
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

---��ȡ��Ʒ������Ʒ�Զ����ַ�������
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
---@field IsCanEdit bool? #  ���ö๦�ܱ༭���Ƿ���Ա༭
---@field DefaultTextColor (uint | string)?
---@field IsCenter bool?
---@field UseTextGrow bool?
---@field new fun(arg:RichEditCreateArg) : RichEdit
RichEdit = NewClass("RichEdit", Wnd)

--#region RichEdit Setter Getter
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
})

local RichEditPropGetList_t = InitGetterFromSetter(RichEditPropSetList_t)

-- SetClassSetter(RichEdit, RichEditPropSetList_t)
-- SetClassGetter(RichEdit, RichEditPropGetList_t)

RichEdit:SetSetter(RichEditPropSetList_t)
RichEdit:SetGetter(RichEditPropGetList_t)

--#endregion

--#region RichEdit New

---��ʼ������
---@param self RichEdit
---@param arg RichEditCreateArg
RichEdit.onCreate = function(self, arg)
    local Name = arg.Name or "default"
    -- local ImgID = arg.ImgID or 0
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

---�����๦�ܱ༭��
---@param arg RichEditCreateArg
---@return RichEdit
function RichEdit:New(arg)
    local richedit = RichEdit.new(arg)
    richedit.IsCanEdit = false
    return richedit
end

---�������ɱ༭�๦�ܱ༭��
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

--- ��ն๦�ܱ༭����ı�����
---@return nil
function RichEdit:Clear()
    return GUI:RichEditClear(self.Handle)
end

--- �๦�ܱ༭������ı�
---@param _Info string # ��Ϣ�ı�
---@return nil
function RichEdit:AppStr(_Info)
    return GUI:RichEditAppendString(self.Handle, _Info)
end

--- ��ȡ�๦�ܱ༭���б�������ı�
---@return string
function RichEdit:GetClickStr()
    return GUI:RichEditGetSelectClickString(self.Handle)
end

--- ����ָ���๦�ܱ༭���������ֵ���ɫ
---@param _Flag
---| `1` # ѡ�����ӵ���ɫ������������ɫ��
---| `2` # ��ѡ���ַ������ӵ���ɫ����SELECT��ǩ�е����֣�
---| `3` # �������ӵ���ɫ����TITLE��ǩ�е����֣�
---| `4` # �������ӵ���ɫ����NAMELINK��ǩ�е����֣�
---| `5` # ��ͨ���ӵ���ɫ����LINK��ǩ�е����֣�
---| `6` # NPC���ӵ���ɫ����NPCLINK��ǩ�е����֣�
---| `7` # ��Ʒ���ӵ���ɫ����ITEMLINK��ǩ�е����֣�
---| `8` # UI���ӵ���ɫ����UILINK��ǩ�е����֣�
---| `9` # �ر����ӵ���ɫ����CLOSE��ǩ�е����֣�
---@param _ColorStr string # ��ɫ�ַ�����
function RichEdit:SetLinkColor(_Flag, _ColorStr)
    return GUI:RichEditSetLinkColor(self.Handle, _Flag, _ColorStr)
end

--#endregion

--#endregion
