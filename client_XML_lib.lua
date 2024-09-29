---@meta Xml


---@class Xml
Xml = {}

---����LuaXml����
---@return Xml
function LuaXml() end

---����Xml����
---@param _Path string #XML�ľ���·��
function Xml:LoadXml(_Path) end

---����Ѽ��ص�����
function Xml:Clear() end

--#region ��ȡ

--#region ��ȡ�ڵ�

---��ȡ���ڵ�����
---@return uint # ��ִ�гɹ����򷵻ظ��ڵ����������ͣ������ļ�δ���ػ���ִ�д����򷵻�0��
function Xml:Root() end

---��ȡ��һ���ӽڵ�
---@param _Element uint # �ڵ�����
---@return uint # ��ִ�гɹ����򷵻�ָ�������ĵ�һ���ӽڵ����������ͣ�����ִ��ʧ�ܣ��򷵻�0��
function Xml:FirstChild(_Element) end

---��ȡ��һ��ָ���������ӽڵ�
---@param _Element uint #�ڵ�����
---@param _Name string # ����
---@return uint # ��ִ�гɹ����򷵻�ָ�������ĵ�һ���ӽڵ����������ͣ�����ִ��ʧ�ܣ��򷵻�0��
function Xml:FirstChildByName(_Element, _Name) end

---��ȡ��һ��ָ���������ֵܽڵ�
---@param _Element uint #�ڵ�����
---@param _Name string # �ڵ�
---@return uint # ��ִ�гɹ����򷵻�ָ����������һ�������������ֵܽڵ����������ͣ�����ִ��ʧ�ܣ��򷵻�0��
function Xml:NextSiblingByName(_Element, _Name) end

---��ȡ��һ��ָ���������ֵܽڵ�
---@param _Element uint #�ڵ�����
---@param _Name string # �ڵ�
---@return uint # ��ִ�гɹ����򷵻�ָ����������һ�������������ֵܽڵ����������ͣ�����ִ��ʧ�ܣ��򷵻�0��
function Xml:PrevSiblingByName(_Element, _Name) end

---��ȡ��һ���ֵܽڵ�
---@param _Element uint # �ڵ�����
---@return uint # ��ִ�гɹ����򷵻�ָ�������ĵ�һ���ӽڵ����������ͣ�����ִ��ʧ�ܣ��򷵻�0��
function Xml:NextSibling(_Element) end

---��ȡ��һ���ֵܽڵ�
---@param _Element uint # �ڵ�����
---@return uint # ��ִ�гɹ����򷵻�ָ�������ĵ�һ���ӽڵ����������ͣ�����ִ��ʧ�ܣ��򷵻�0��
function Xml:PrevSibling(_Element) end

---��ȡ���ڵ�
---@param _Element uint #�ڵ�����
---@return uint # ��ִ�гɹ����򷵻�ָ�������ĸ��ڵ����������ͣ�����ִ��ʧ�ܷ���0��
function Xml:Parent(_Element) end

---��ȡXML��ĳ�ڵ������
---@param _Element uint # �ڵ�����
---@return string # �ýڵ������
function Xml:GetElementName(_Element) end

---��ȡĳ�ڵ�ĸ����ı�����
---@param _Element uint #�ڵ�����
---@return string  #�����������ı����򷵻��ı��ַ������������������ı����򷵻ؿ��ַ�����
function Xml:GetText(_Element) end

--#endregion

--#region ��ȡ����


---��ȡ��������ֵ
---@param _Element uint # �ڵ�����
---@param _Attr string #������
---@return double # ��ִ�гɹ����򷵻�ָ���ĸ�������ֵ����ִ��ʧ�ܣ��򷵻�`0.0`��
function Xml:AttributeDouble(_Element, _Attr) end

---��ȡ����������ֵ
---@param _Element uint # �ڵ�����
---@param _Attr string #������
---@return int # ��ִ�гɹ����򷵻�ָ���ĸ�������ֵ����ִ��ʧ�ܣ��򷵻�`0`��
function Xml:AttributeInt(_Element, _Attr) end

---��ȡ�޷�����������ֵ
---@param _Element uint # �ڵ�����
---@param _Attr string #������
---@return uint # ��ִ�гɹ����򷵻�ָ���ĸ�������ֵ����ִ��ʧ�ܣ��򷵻�`0`��
function Xml:AttributeUInt(_Element, _Attr) end

---��ȡ�ַ�������ֵ
---@param _Element uint #�ڵ�����
---@param _Attr string #������
---@return string # ��ִ�гɹ����򷵻�ָ�����ַ�������ֵ����ִ��ʧ�ܣ��򷵻ؿ��ַ�����
function Xml:Attribute(_Element, _Attr) end

--#endregion

--#endregion

--#region ����

---�����ӽڵ�
---@param _Element uint #�ڵ�����
---@param _Name string #��������ӽڵ�Ľ���
---@return uint # ��ִ�гɹ����򷵻��²�����ӽڵ��������²���Ľڵ�λ�ڵ�ǰӵ�е��ӽڵ������棻��ִ��ʧ�ܣ��򷵻�0��
function Xml:InsertChild(_Element, _Name) end

---�����ֵܽڵ�
---@param _Element uint #�ڵ�����
---@param _Name string #��������ӽڵ�Ľ���
---@return uint # ��ִ�гɹ����򷵻��²�����ӽڵ��������²���Ľڵ�λ�ڵ�ǰӵ�е��ӽڵ������棻��ִ��ʧ�ܣ��򷵻�0��
function Xml:InsertNext(_Element, _Name) end

---��ǰ�����ֵܽڵ�
---@param _Element uint #�ڵ�����
---@param _Name string #��������ӽڵ�Ľ���
---@return uint # ��ִ�гɹ����򷵻��²�����ӽڵ��������²���Ľڵ�λ�ڵ�ǰӵ�е��ӽڵ������棻��ִ��ʧ�ܣ��򷵻�0��
function Xml:InsertPrev(_Element, _Name) end

--#endregion

--#region �ж�

---�ж��Ƿ����ָ��������
---@param _Element uint # �ڵ�����
---@param _Attr string # ������
---@return bool # `true` ���� `false` ������
function Xml:HasAttribute(_Element, _Attr) end

---�ж��Ƿ��и����ı�
---@param _Element uint #�ڵ�����
---@return bool #  `true`���������ı����ݡ� `false`�����������ı����ݡ�
function Xml:HasText(_Element) end

---�жϽڵ��Ƿ���Ч
---@param _Element uint #�ڵ�����
---@return bool `true`  �ڵ������Ϸ� `false` �ڵ��������Ϸ�
function Xml:IsValidElement(_Element) end

---�ж��ļ��Ƿ���Ч
---@return bool `true` ���������� `false` δ��������
function Xml:IsValidXml() end

--#endregion

--#region ɾ��

---ɾ�������ӽڵ�
---@param _Element uint # �ڵ�����
---@return bool # `true` ɾ���ɹ��� `false` ɾ��ʧ��
function Xml:RemoveAllChild(_Element) end

---ɾ��ָ���������ӽڵ�
---@param _Element uint # �ڵ�����
---@param _Name string #ָ����ɾ�����ӽڵ�Ľ���
---@return bool # `true` ɾ���ɹ��� `false` ɾ��ʧ��
function Xml:RemoveChildByName(_Element, _Name) end

---ɾ����ǰ�ڵ�
---@param _Element uint #�ڵ�����
---@return bool # `true` ɾ���ɹ��� `false` ɾ��ʧ��
function Xml:Remove(_Element) end

---ɾ��ָ������
---@param _Element uint # �ڵ�����
---@param _Attr string # ָ��Ҫɾ����������
---@return bool # `true` ɾ���ɹ��� `false` ɾ��ʧ��
function Xml:DelAttribute(_Element, _Attr) end

--#endregion

--#region ����

---���浽ָ���ļ�
---@param _Path string # �ļ���**����·��**
---@return bool # `true` ����ɹ� `false` ����ʧ��
function Xml:SaveXml(_Path) end

---����
---@return bool # `true` ����ɹ� `false` ����ʧ��
function Xml:Save() end

--#endregion

--#region ����

---���ø�������ֵ
---@param _Element uint #�ڵ�����
---@param _Attr string # ������
---@param _Value double # ����ֵ
---@return bool # `true` ִ�гɹ��� `false` ִ��ʧ��
--- > ���ýڵ㲻����ָ�����ԣ�����ӡ�
function Xml:SetAttributeDouble(_Element, _Attr, _Value) end

---���ô�������������ֵ
---@param _Element uint # �ڵ�����
---@param _Attr string # ������
---@param _Value uint # ����ֵ
---@return bool # `true` ִ�гɹ��� `false` ִ��ʧ��
--- > ���ýڵ㲻����ָ�����ԣ�����ӡ�
function Xml:SetAttributeInt(_Element, _Attr, _Value) end

---���ô�������������ֵ
---@param _Element uint # �ڵ�����
---@param _Attr string # ������
---@param _Value uint # ����ֵ
---@return bool # `true` ִ�гɹ��� `false` ִ��ʧ��
--- > ���ýڵ㲻����ָ�����ԣ�����ӡ�
function Xml:SetAttributeUInt(_Element, _Attr, _Value) end

---���ô�������������ֵ
---@param _Element uint # �ڵ�����
---@param _Attr string # ������
---@param _Value string # ����ֵ
---@return bool # `true` ִ�гɹ��� `false` ִ��ʧ��
--- > ���ýڵ㲻����ָ�����ԣ�����ӡ�
function Xml:SetAttribute(_Element, _Attr, _Value) end

---���ø����ı�����
---@param _Element uint # �ڵ�����
---@param _Value string #���ӽڵ������ַ���
---@param _CData bool # �Ƿ���CData���� `true` CData ���ͣ� `false` ����CData����
---@return bool # `true` ִ�гɹ��� `false` ִ��ʧ��
function Xml:SetText(_Element, _Value, _CData) end

--#endregion
