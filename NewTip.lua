function DeepCopy(object)
    local lookup_table = {}
    local function _copy(object)
        if type(object) ~= 'table' then -- ?table???????
            return object
        elseif lookup_table[object] then
            return lookup_table[object]
        end
        local new_table = {}
        lookup_table[object] = new_table
        for k, v in pairs(object) do
            new_table[_copy(k)] = _copy(v)
        end

        return setmetatable(new_table, getmetatable(object))
    end
    return _copy(object)
end

function SetStyleColor(str, color)
    str = tostring(str)
    local strend = "#COLOREND#"
    -- local strstart = "#COLORCOLOR_WHITE#"
    -- if color == "ÂÌ" then
    --     strstart = "#COLORCOLOR_GREENG#"
    -- elseif color == "°×" then
    --     strstart = "#COLORCOLOR_WHITE#"
    -- elseif color == "»Æ" then
    --     strstart = "#COLORCOLOR_YELLOW#"
    -- elseif color == "ºì" then
    --     strstart = "#COLORCOLOR_RED#"
    -- elseif color == "½ð" then
    --     strstart = "#COLORCOLOR_GOLD2#"
    -- elseif color == "ÌìÀ¶" then
    --     strstart = "#COLORCOLOR_SKYBLUE#"
    -- elseif color == "×Ï" then
    --     strstart = "#COLORCOLOR_PURPLE#"
    -- elseif color == "À¶" then
    --     strstart = "#COLORCOLOR_BLUE#"
    -- elseif color == "×Ø" then
    --     strstart = "#COLORCOLOR_BROWN#"
    -- end

    local color_code = {
        ["ÂÌ"] = "#COLORCOLOR_GREENG#",
        ["°×"] = "#COLORCOLOR_WHITE#",
        ["»Æ"] = "#COLORCOLOR_YELLOW#",
        ["ºì"] = "#COLORCOLOR_RED#",
        ["½ð"] = "#COLORCOLOR_GOLD2#",
        ["ÌìÀ¶"] = "#COLORCOLOR_SKYBLUE#",
        ["×Ï"] = "#COLORCOLOR_PURPLE#",
        ["À¶"] = "#COLORCOLOR_BLUE#",
        ["×Ø"] = "#COLORCOLOR_BROWN#",
        ["³È"] = "#COLORCOLOR_ORANGE#",
    }

    return (color_code[color] or "#COLORCOLOR_WHITE#") .. str .. strend
end

function GetSelectStr(str)
    if str == nil then
        str = "test"
    end
    return "#SELECT#" .. str .. "#SELECTEND#"
end

NewTip = {}


function NewTip.AddTip(arg)

end

---??Tip
---@param _Handle int
---@param str string
---@param PosX number?
---@param PosY number?
function NewTip.AddTip2Wnd(_Handle, str, PosX, PosY)
    local Size_x, Size_y
    if GUI:WndGetSizeM(_Handle) then
        Size_x = LuaRet[1]
        Size_y = LuaRet[2]
    end
    local Param = {
        info = str,
        PosX = PosX or Size_x,
        PosY = PosY or 1,
    }
    local str = serialize(Param):gsub('\n', "")
    dbg("str  " .. str)
    GUI:WndRegistScriptEx(_Handle, RDWndBaseCL_mouse_in, "NewTip.AddWndTip", str)
    GUI:WndRegistScript(_Handle, RDWndBaseCL_mouse_out, "NewTip.DelWndTip")
end

function NewTip.AddWndTip(_WindowHandle, wParam, x, y, cParam)
    local function split_by_newline(str)
        local lines = {}
        for line in str:gmatch("[^\\n]+") do
            table.insert(lines, line)
        end
        return lines
    end

    -- ÕÒ³ö³¤¶È×î³¤µÄ×Ö·û´®
    local function find_longest_string(str)
        local lines = split_by_newline(str)
        local longest = ""

        for _, line in ipairs(lines) do
            if #line > #longest then
                longest = line
            end
        end
        return CL:GetFontStrWidth("system", longest), #lines
    end


    local DecParam = deserialize(cParam)
    local PosX = 0
    local PosY = 0
    if type(DecParam) == "table" then
        Info_s = DecParam.info
        PosX = DecParam.PosX
        PosY = DecParam.PosY
    else
        Info_s = cParam
        if GUI:WndGetSizeM(_WindowHandle) then
            PosX = LuaRet[1]
            PosY = 1
        end
    end



    local longest, sizeLines = find_longest_string(Info_s:gsub("#.-#", ""))

    CL:Log("longest: " .. longest .. " sizeLines " .. sizeLines)


    ---@type int @´°¿Ú¾ä±ú
    local _Handle = GUI:RichEditCreate(_WindowHandle, "tip", PosX, PosY, longest + 10, sizeLines * 13 + 15)
    if _Handle ~= 0 then
        dbg("1111")
        GUI:RichEditClear(_Handle)
        GUI:RichEditAppendString(_Handle, Info_s)
        GUI:WndMoveToParentTop(_Handle)
        GUI:RichEditSetContentRect(_Handle, 5, 7, longest + 20, sizeLines * 13 + 15)
        GUI:RichEditSetMultiBackImage(
            _Handle,
            1800000030,
            1800000031,
            1800000032,
            1800000033,
            1800000038,
            1800000034,
            1800000035,
            1800000036,
            1800000037)
        -- GUI:EditSetTextM(_Handle,cParam)
    end
end

function NewTip.DelWndTip(_WindowHandle)
    ---@type int @´°¿Ú¾ä±ú
    local _Handle = GUI:WndFindChildM(_WindowHandle, "tip")
    if _Handle ~= 0 then
        GUI:WndClose(_Handle)
    end
end

function NewTip.Print(str)
    dbg(str)
end

-- return NewTip
