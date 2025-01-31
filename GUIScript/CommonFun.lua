--打印输出到聊天框字符串
function msg(str)
	UI:Lua_ShowTypeMsg(1, str)
end

--打印输出到Debug View
function dbg(str)
	UI:Lua_Log(str)
end

--将内容写入文件，并输出到Debug
function log(str)
	UI:Lua_LogFile(str)
end

--查询DBE/XML文件里的内容
--说明：根据已知字段名字KeyName和字段的值KeyValue查询DBEName内FindName字段的值
--	返回一个字符串表,失败返回空表
--示例：FindDBE("item","KeyName","SubType","9")
function FindDBE(DBEName, FindName, KeyName, KeyValue)
	local _Ret = {}
	if UI:Lua_FindDBE(DBEName, FindName, KeyName, KeyValue) then
		_Ret = LuaRet
	end
	return _Ret
end

--获取颜色 (A,R,G,B) -> (int)
function MakeARGB(A, R, G, B)
	UI:Lua_MakeARGB(A, R, G, B)
	return LuaRet
end

--处理客户端命令,调试用
---此功能需要开启：</br>
---是否开启客户端命令功能：`LuaGlobal["UseClientCommand"] = false`
function ClientCommandHandler(_ClientCommand)
	if ClientCommand ~= nil and ClientCommand(_ClientCommand) then
		return true
	end
	return false
end

--获取当前字体下的字符串所占宽度
function GetStrWidth(str)
	if UI:Lua_GetFontStrWidth("system", str) then
		return LuaRet
	end
	return 0
end

--获取装备的位置
function GetItemPosTypeByHandle(_ItemHandle)
	if not UI:Lua_GetItemEntityPropByHandle(_ItemHandle, ITEM_PROP_ENTITY_SITE) then
		return INVALID_POS
	else
		return GetItemPosType(LuaRet)
	end
end

--获取道具Tip指向的道具格子的位置
function GetItemGUIDataItemPos()
	if not GetTipItemGUIDataPropByType(ITEMGUIDATA_ITEMPOS) then
		return INVALID_POS
	else
		return GetItemPosType(LuaRet)
	end
end

function IsTextureExists(_TextureImgID)
	if not UI:Lua_IsTextureExists(_TextureImgID) or LuaRet == false then
		return false
	else
		return true
	end
end

function GetTextureWidthHeight(_TextureImgID)
	if not UI:Lua_GetTextureWidthHeight(_TextureImgID) then
		return 0, 0
	else
		return LuaRet[1], LuaRet[2]
	end
end

--根据总时间(秒数)获取 天,时,分,秒
function GetDetailTime(_TotleTime)
	local s = _TotleTime
	local m = math.floor(s / 60)
	local h = math.floor(m / 60)
	local d = math.floor(h / 24)
	s = s % 60
	m = m % 60
	h = h % 24
	return d, h, m, s
end

--根据秒数获取时间剩余的字符串
function GetLeaveTimeString(_TotleTime)
	local d, h, m, s = GetDetailTime(_TotleTime)
	local _Ret = ""
	if d ~= 0 then
		_Ret = d .. "天" .. h .. "时" .. m .. "分" .. s .. "秒"
	elseif h ~= 0 then
		_Ret = h .. "时" .. m .. "分" .. s .. "秒"
	else
		_Ret = m .. "分" .. s .. "秒"
	end
	return _Ret
end

function GetLeaveTimeString_VipCfg(_TotleTime)
	local d, h, m, s = GetDetailTime(_TotleTime)
	local t = { d > 0, h > 0, m > 0, s > 0 }
	local i, j
	for x = 1, 4 do
		if t[x] then
			i = x; break
		end
	end
	if i == nil or i >= 4 then return s .. "秒" end
	for x = i, 4 do
		if not t[x] then
			j = x; break
		end
	end
	if j ~= nil and j < 4 then
		for x = j, 4 do t[x] = false end
	end
	local r = ""
	if t[1] then r = r .. d .. "天" end
	if t[2] then r = r .. h .. "时" end
	if t[3] then r = r .. m .. "分" end
	if t[4] then r = r .. s .. "秒" end
	return r
end

function GetLeaveTimeString2(_TotleTime)
	local d, h, m, s = GetDetailTime(_TotleTime)
	local _Ret = ""
	if h < 10 then _Ret = _Ret .. "0" .. h .. ":" else _Ret = _Ret .. h .. ":" end
	if m < 10 then _Ret = _Ret .. "0" .. m .. ":" else _Ret = _Ret .. m .. ":" end
	if s < 10 then _Ret = _Ret .. "0" .. s else _Ret = _Ret .. s end
	return _Ret
end

--将数字使用逗号千分符 返回字符串
function GetGoldString(number)
	local gold = tostring(number)
	local len = string.len(gold)
	local ret = ""
	for i = 1, len do
		ret = string.sub(gold, -i, -i) .. ret
		if i < len and i % 3 == 0 then
			ret = "," .. ret
		end
	end
	return ret
end

--字符串分割，返回表
function strsplit(str, char)
	splitRet = {}
	repeat
		local _Ret = string.gsub(str, "^(.-)%" .. char .. "(.-)$", function(a, b)
			splitRet[#splitRet + 1] = a
			str = b
		end)
		if str == _Ret then
			splitRet[#splitRet + 1] = _Ret
			break
		end
	until (str == "")
	return splitRet
end

--字符串分割，返回两个字符串
function strsplittwo(str, char)
	return (string.gsub(str, "^(.-)%" .. char .. "(.-)$", "%1")), (string.gsub(str, "^(.-)%" .. char .. "(.-)$", "%2"))
end

--根据table 序列化得到字符串
function serialize(obj)
	local text = ""
	local t = type(obj)
	if t == "number" then
		text = text .. obj
	elseif t == "boolean" then
		text = text .. tostring(obj)
	elseif t == "string" then
		text = text .. string.format("%q", obj)
	elseif t == "table" then
		text = text .. "{\n"

		for k, v in pairs(obj) do
			text = text .. "[" .. serialize(k) .. "]=" .. serialize(v) .. ",\n"
		end

		local metatable = getmetatable(obj)
		if metatable ~= nil and type(metatable.__index) == "table" then
			for k, v in pairs(metatable.__index) do
				text = text .. "[" .. serialize(k) .. "]=" .. serialize(v) .. ",\n"
			end
		end

		text = text .. "}"
	elseif t == "nil" then
		return nil
	else
		log("can not serialize a " .. t .. " type.")
	end

	return text
end

--根据字符串反序列化得到table
function deserialize(text)
	local t = type(text)
	if t == "nil" or text == "" then
		return nil
	elseif t == "number" or t == "string" or t == "boolean" then
		text = tostring(text)
	else
		log("can not unserialize a " .. t .. " type.")
	end

	text = "return " .. text

	local func = loadstring(text)
	if func == nil then return nil end
	return func()
end

--lua变量的复制
function dup(ori_tab)
	if (type(ori_tab) ~= "table") then
		return ori_tab;
	end
	local new_tab = {};
	for i, v in pairs(ori_tab) do
		local vtyp = type(v);
		if (vtyp == "table") then
			new_tab[i] = dup(v);
		elseif (vtyp == "thread") then
			new_tab[i] = v;
		elseif (vtyp == "userdata") then
			new_tab[i] = v;
		else
			new_tab[i] = v;
		end
	end
	return new_tab;
end

--将字符串str转换为对应的颜色，返回整型
function mkcolor(str)
	if type(str) == "string" then
		UI:Lua_GetColor(str)
		return LuaRet
	elseif type(str) == "number" then
		return str
	end
	return 0
end

--英雄出战
function HeroSummon(guid)
	UI:Lua_GUID2Str(guid)
	guid = LuaRet
	local file = "herolist"
	local func = "summon"
	UI:Lua_SubmitForm(file, func, guid)
end

--英雄休息
function HeroQuite(guid)
	UI:Lua_GUID2Str(guid)
	guid = LuaRet
	local file = "herolist"
	local func = "quit"
	UI:Lua_SubmitForm(file, func, guid)
end
