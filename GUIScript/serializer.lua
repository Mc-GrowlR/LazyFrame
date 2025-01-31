---Lua代码序列化
---@param obj any
---@return string?
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
        error("can not serialize a " .. t .. " type.")
    end

    return text
end

---反序列化
---@param text string@Lua代码块字符串
---@return any?
function deserialize(text)
    local t = type(text)
    if t == "nil" or text == "" then
        return nil
    elseif t == "number" or t == "string" or t == "boolean" then
        text = tostring(text)
    else
        error("can not unserialize a " .. t .. " type.")
    end

    text = "return " .. text

    local func = load(text)
    if func == nil then return nil end
    return func()
end
