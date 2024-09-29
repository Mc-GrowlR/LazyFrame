---@meta Xml


---@class Xml
Xml = {}

---构造LuaXml对象
---@return Xml
function LuaXml() end

---加载Xml对象
---@param _Path string #XML的绝对路径
function Xml:LoadXml(_Path) end

---清空已加载的内容
function Xml:Clear() end

--#region 获取

--#region 获取节点

---获取根节点描述
---@return uint # 若执行成功，则返回根节点描述（整型）；若文件未加载或函数执行错误，则返回0。
function Xml:Root() end

---获取第一个子节点
---@param _Element uint # 节点描述
---@return uint # 若执行成功，则返回指定参数的第一个子节点描述（整型）；若执行失败，则返回0。
function Xml:FirstChild(_Element) end

---获取第一个指定节名的子节点
---@param _Element uint #节点描述
---@param _Name string # 节名
---@return uint # 若执行成功，则返回指定参数的第一个子节点描述（整型）；若执行失败，则返回0。
function Xml:FirstChildByName(_Element, _Name) end

---获取下一个指定节名的兄弟节点
---@param _Element uint #节点描述
---@param _Name string # 节点
---@return uint # 若执行成功，则返回指定参数的下一个符合条件的兄弟节点描述（整型）；若执行失败，则返回0。
function Xml:NextSiblingByName(_Element, _Name) end

---获取上一个指定节名的兄弟节点
---@param _Element uint #节点描述
---@param _Name string # 节点
---@return uint # 若执行成功，则返回指定参数的下一个符合条件的兄弟节点描述（整型）；若执行失败，则返回0。
function Xml:PrevSiblingByName(_Element, _Name) end

---获取下一个兄弟节点
---@param _Element uint # 节点描述
---@return uint # 若执行成功，则返回指定参数的第一个子节点描述（整型）；若执行失败，则返回0。
function Xml:NextSibling(_Element) end

---获取上一个兄弟节点
---@param _Element uint # 节点描述
---@return uint # 若执行成功，则返回指定参数的第一个子节点描述（整型）；若执行失败，则返回0。
function Xml:PrevSibling(_Element) end

---获取父节点
---@param _Element uint #节点描述
---@return uint # 若执行成功，则返回指定参数的父节点描述（整型）；若执行失败返回0。
function Xml:Parent(_Element) end

---获取XML中某节点的名称
---@param _Element uint # 节点描述
---@return string # 该节点的名称
function Xml:GetElementName(_Element) end

---获取某节点的附加文本数据
---@param _Element uint #节点描述
---@return string  #若包含附加文本，则返回文本字符串；若不包含附加文本，则返回空字符串。
function Xml:GetText(_Element) end

--#endregion

--#region 获取属性


---获取浮点属性值
---@param _Element uint # 节点描述
---@param _Attr string #属性名
---@return double # 若执行成功，则返回指定的浮点属性值；若执行失败，则返回`0.0`。
function Xml:AttributeDouble(_Element, _Attr) end

---获取带符号属性值
---@param _Element uint # 节点描述
---@param _Attr string #属性名
---@return int # 若执行成功，则返回指定的浮点属性值；若执行失败，则返回`0`。
function Xml:AttributeInt(_Element, _Attr) end

---获取无符号整型属性值
---@param _Element uint # 节点描述
---@param _Attr string #属性名
---@return uint # 若执行成功，则返回指定的浮点属性值；若执行失败，则返回`0`。
function Xml:AttributeUInt(_Element, _Attr) end

---获取字符串属性值
---@param _Element uint #节点描述
---@param _Attr string #属性名
---@return string # 若执行成功，则返回指定的字符串属性值；若执行失败，则返回空字符串。
function Xml:Attribute(_Element, _Attr) end

--#endregion

--#endregion

--#region 插入

---插入子节点
---@param _Element uint #节点描述
---@param _Name string #欲插入的子节点的节名
---@return uint # 若执行成功，则返回新插入的子节点描述，新插入的节点位于当前拥有的子节点的最后面；若执行失败，则返回0。
function Xml:InsertChild(_Element, _Name) end

---向后插兄弟节点
---@param _Element uint #节点描述
---@param _Name string #欲插入的子节点的节名
---@return uint # 若执行成功，则返回新插入的子节点描述，新插入的节点位于当前拥有的子节点的最后面；若执行失败，则返回0。
function Xml:InsertNext(_Element, _Name) end

---向前插入兄弟节点
---@param _Element uint #节点描述
---@param _Name string #欲插入的子节点的节名
---@return uint # 若执行成功，则返回新插入的子节点描述，新插入的节点位于当前拥有的子节点的最后面；若执行失败，则返回0。
function Xml:InsertPrev(_Element, _Name) end

--#endregion

--#region 判断

---判断是否存在指定属性名
---@param _Element uint # 节点描述
---@param _Attr string # 属性名
---@return bool # `true` 存在 `false` 不存在
function Xml:HasAttribute(_Element, _Attr) end

---判断是否有附加文本
---@param _Element uint #节点描述
---@return bool #  `true`包含附加文本数据。 `false`不包含附加文本数据。
function Xml:HasText(_Element) end

---判断节点是否有效
---@param _Element uint #节点描述
---@return bool `true`  节点描述合法 `false` 节点描述不合法
function Xml:IsValidElement(_Element) end

---判断文件是否有效
---@return bool `true` 已正常加载 `false` 未正常加载
function Xml:IsValidXml() end

--#endregion

--#region 删除

---删除所有子节点
---@param _Element uint # 节点描述
---@return bool # `true` 删除成功， `false` 删除失败
function Xml:RemoveAllChild(_Element) end

---删除指定节名的子节点
---@param _Element uint # 节点描述
---@param _Name string #指定欲删除的子节点的节名
---@return bool # `true` 删除成功， `false` 删除失败
function Xml:RemoveChildByName(_Element, _Name) end

---删除当前节点
---@param _Element uint #节点描述
---@return bool # `true` 删除成功， `false` 删除失败
function Xml:Remove(_Element) end

---删除指定属性
---@param _Element uint # 节点描述
---@param _Attr string # 指定要删除的属性名
---@return bool # `true` 删除成功， `false` 删除失败
function Xml:DelAttribute(_Element, _Attr) end

--#endregion

--#region 保存

---保存到指定文件
---@param _Path string # 文件的**绝对路径**
---@return bool # `true` 保存成功 `false` 保存失败
function Xml:SaveXml(_Path) end

---保存
---@return bool # `true` 保存成功 `false` 保存失败
function Xml:Save() end

--#endregion

--#region 设置

---设置浮点属性值
---@param _Element uint #节点描述
---@param _Attr string # 属性名
---@param _Value double # 属性值
---@return bool # `true` 执行成功， `false` 执行失败
--- > 若该节点不存在指定属性，则添加。
function Xml:SetAttributeDouble(_Element, _Attr, _Value) end

---设置带符号整型属性值
---@param _Element uint # 节点描述
---@param _Attr string # 属性名
---@param _Value uint # 属性值
---@return bool # `true` 执行成功， `false` 执行失败
--- > 若该节点不存在指定属性，则添加。
function Xml:SetAttributeInt(_Element, _Attr, _Value) end

---设置带符号整型属性值
---@param _Element uint # 节点描述
---@param _Attr string # 属性名
---@param _Value uint # 属性值
---@return bool # `true` 执行成功， `false` 执行失败
--- > 若该节点不存在指定属性，则添加。
function Xml:SetAttributeUInt(_Element, _Attr, _Value) end

---设置带符号整型属性值
---@param _Element uint # 节点描述
---@param _Attr string # 属性名
---@param _Value string # 属性值
---@return bool # `true` 执行成功， `false` 执行失败
--- > 若该节点不存在指定属性，则添加。
function Xml:SetAttribute(_Element, _Attr, _Value) end

---设置附加文本数据
---@param _Element uint # 节点描述
---@param _Value string #附加节点数据字符串
---@param _CData bool # 是否是CData类型 `true` CData 类型， `false` 不是CData类型
---@return bool # `true` 执行成功， `false` 执行失败
function Xml:SetText(_Element, _Value, _CData) end

--#endregion
