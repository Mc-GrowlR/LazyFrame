---@meta GUI

---@alias GUIDataPropType
---| `ITEMGUIDATA_ITEMGUID`		# GUID
---| `ITEMGUIDATA_IMAGEID`		# ICONN
---| `ITEMGUIDATA_TYPE`			# ���ͣ�`1`��ʾ��Ʒ��`2`��ʾ����
---| `ITEMGUIDATA_ITEMID`		# ģ��ID
---| `ITEMGUIDATA_PARAM`		# �Զ������
---| `ITEMGUIDATA_ITEMCOUNT`	# ����
---| `ITEMGUIDATA_INVALIDATE`	# �Ƿ���Ч
---| `ITEMGUIDATA_ISSTACKITEM`	# �Ƿ�ɶѵ�
---| `ITEMGUIDATA_ITEMPOS`		# ����λ��
---| `ITEMGUIDATA_CDTIME`		# CDʱ��
---| `ITEMGUIDATA_CDSTARTTICK`	# CD��ʼʱ��
---| `ITEMGUIDATA_INCDSTATE`	# �Ƿ�CD״̬
---| `ITEMGUIDATA_ITEMLOCK`		# �Ƿ�����
---| `ITEMGUIDATA_ITEMPRICETYPE`# �۸����ͣ�`1`��ң�`2`Ԫ��
---| `ITEMGUIDATA_ITEMPRICE`	# �۸�
---| `ITEMGUIDATA_ISSHOWBIND`	# �Ƿ��
-----------
---��װ�ӿ�
-----------


---�����ھ���
---@param _Handle int # ָ�����ھ��
---@param _Info string # ָ����������
function CenterWnd(_Handle, _Info)
    WndSetPosAt(_Handle, _Info, 0.5, 0.5)
end

---��ȡ���ھ��
---@param _Handle int @�����ھ��
---@param _Info string @�������ƣ����˲�����ֵ����Ϊparent������ȡ��������Ϣ������������õ��ַ�����ȡ��Ӧ���ڣ��ӿؼ����ľ����
---@return int @��ȡ�ɹ��򷵻ش��ڣ��ӿؼ����ľ�� ��ȡʧ���򷵻�`0`
function GetWindow(_Handle, _Info)
end

---����ͼƬ�ؼ�
---@param _Handle int @�����ھ��
---@param _Info string @����������
---@param _ImageId int @ͼƬ��ԴID
---@param _PosX int @ �½�ͼƬ����ڸ��ؼ�λ�õĺ�����
---@param _PosY int @ �½�ͼƬ�ؼ�λ������ڸ��ؼ�λ�õ�������
---@param _SizeX int @�½�ͼƬ�ؼ��Ŀ�ȣ��˲�����Ч
---@param _SizeY int @�½�ͼƬ�ؼ��ĸ߶ȣ��˲�����Ч
---@param _ID string @ ͼƬ�ؼ�������
---@param _Align int @ ͼƬ�ؼ��Ķ��뷽ʽ������������Ϊ0
---@param _HintInfo string @ ��ʾ���֣���������Ч
---@return int
function CreateImage(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
end

---��������
function CreateCtrl(_Handle, _Info, _Type, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
end

---������̬�ı���ؼ�
---@return int @���
function CreateStatic(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
end

---��ȡ����ؼ�����ڸ����������λ��
---@param _Handle int
---@param _Info string
---@return bool
function WndGetPosM(_Handle, _Info)
end

---------------------


--#region �ඨ��

---@class GUI
GUI = {}

---@alias LuaUIEvent
---| `RDWndBaseCL_mouse_lbDown`          -- �����������¼���int _HandleID(���ھ��)��
---| `RDWndBaseCL_mouse_lbUp`            -- �����������¼���int _HandleID(���ھ��)��
---| `RDWndBaseCL_mouse_lbClick`         -- ����������¼���int _HandleID(���ھ��)��
---| `RDWndBaseCL_mouse_lbDbClick`       -- ������˫���¼���int _HandleID(���ھ��)
---| `RDWndBaseCL_mouse_rbDown`          -- ����Ҽ������¼���int _HandleID(���ھ��)��
---| `RDWndBaseCL_mouse_rbUp`            -- ����Ҽ������¼���int _HandleID(���ھ��)��
---| `RDWndBaseCL_mouse_rbClick`         -- ����Ҽ�����¼���int _HandleID(���ھ��)��
---| `RDWndBaseCL_mouse_rbDbClick`       -- ����Ҽ�˫���¼���int _HandleID(���ھ��)��
---| `RDWndBaseCL_mouse_move`            -- ����ƶ��¼���int _HandleID(���ھ��)��
---| `RDWndBaseCL_mouse_wheel`           -- �����ֹ����¼���int _HandleID(���ھ��)��
---| `RDWndBaseCL_mouse_in`              -- ������ؼ��¼���int _HandleID(���ھ��)��
---| `RDWndBaseCL_mouse_out`             -- ����뿪�ؼ��¼���int _HandleID(���ھ��)��
---| `RDWndBaseCL_wnd_visible`           -- �ɼ�״̬�����仯�¼���int _HandleID(���ھ��)��
---| `RDWndBaseCL_wnd_show`              -- ��ʾ״̬�����仯�¼���int _HandleID(���ھ��)��
---| `RDWndBaseCL_wnd_enable`            -- ����״̬�����仯�¼���int _HandleID(���ھ��)��
---| `RDWndBaseCL_wnd_active`            -- ����״̬�����仯�¼���int _HandleID(���ھ��)��
---| `RDWndBaseCL_wnd_move`              -- �ؼ��ƶ��¼���int _HandleID(���ھ��)��
---| `RDWndBaseCL_key_char`              -- �ַ������¼���int _HandleID(���ھ��)��
---| `RDWndBaseCL_key_down`              -- ĳ�������¼���int _HandleID(���ھ��)��
---| `RDWndBaseCL_key_up`                -- ĳ�������¼���int _HandleID(���ھ��)��
---| `RDWndBaseCL_wnd_sizeChange`        -- ���ڴ�С�����仯�¼���int _HandleID(���ھ��)��
---| `RDWndBaseCL_wnd_close`             -- ���ڹر��¼���int _HandleID(���ھ��)��
---| `RDWndBaseCL_wnd_destroy`           -- ���������¼���int _HandleID(���ھ��)��


--#endregion

---ע�ᴰ��ؼ����¼��¼��ص�����
---@param _HandleID int @ָ������ؼ��ľ��
---@param _Msg LuaUIEvent @ ָ������ؼ����¼�ID
---@param _FuncName string @�ص�������
---@return bool
function GUI:WndRegistScript(_HandleID, _Msg, _FuncName)
end

---����ͼƬ�ؼ�
---@param _ParentHandle int @�����ھ��
---@param _pWndID char @�½�ͼƬ�ؼ�������
---@param _ImageID uint @�½�ͼƬ�ؼ���ͼƬ��ԴID
---@param _PosX int @�½�ͼƬ�ؼ�λ�õĺ�����
---@param _PosY int @�½�ͼƬ�ؼ�λ�õ�������
---@return int @ OK�������No��0
---@nodiscard
function GUI:ImageCreate(_ParentHandle, _pWndID, _ImageID, _PosX, _PosY)
end

---�˺�������������ָ������ؼ���������Զ����������ֵ��
---@param _HandleID int
---@param _Param uint
function GUI:WndSetParam(_HandleID, _Param)
end

---���ô���ؼ����Զ������
---ͬ`WndSetParam`
---@param _HandleID int
---@param _Param uint
function GUI:WndSetIDParam(_HandleID, _Param)
end

---�˺�������ָ�����ڵĴ�С��
---@param _HandleID int
---@param _W int
---@param _H int
function GUI:WndSetSizeM(_HandleID, _W, _H)
end

---����ͼƬ�ؼ�����ѭ������
---@param _HandleID int @ͼƬ�ؼ�
---@param _Speed uint @����û֡ʱ������Ĭ��ֵΪ100����λΪ���루ms��
---@param _AnimCount int @����ѭ�����Ŵ��� ��Ĭ��ֵ��`0`��һֱ���ţ�
---@param _AnimCallBackFunc string @����������ָ��������Ķ���
---1. ���˲�������Ϊ���ַ�����Ĭ��ֵ��ʱ������������Ϻ��Զ�����
---2. ���˲�������Ϊ�����ַ���ʱ������������ָ���������Ӧ��������ΪLua�ű��������лص����ɽű��ӹܴ���
---TODO
function GUI:ImageSetAnimate(_HandleID, _Speed, _AnimCount, _AnimCallBackFunc)
end

---����ͼƬ�ؼ��Ƿ񲥷Ŷ���
---@param _Handle int
---@param _Info string
---@param _Enable bool
---@param _Speed uint
function ImageSetAnimateEnable(_Handle, _Info, _Enable, _Speed)
end

---����ͼƬ�ؼ��Ƿ��Զ�����
---@param _HandleID int
---@param _Flag bool @�Ƿ��Զ�����
function GUI:ImageSetFitSize(_HandleID, _Flag)
end

---������ť�ؼ�
---@param _ParentHandle int @�����ھ��
---@param _pButtonID char @�½���ť�ؼ�����
---@param _ImageId uint @�ռ䰴ť��ͼƬ��Դ
---@param _PosX int @�½���ť�ؼ�λ�õĺ�����
---@param _PosY int @�½���ť�ռ�λ�õ�������
---@return int @OK�������No��0
function GUI:ButtonCreate(_ParentHandle, _pButtonID, _ImageId, _PosX, _PosY)
end

---���ð�ť�Ƿ���ʾ��˸����Ч
---@param _HandleID int
---@param _Flag bool
function GUI:ButtonSetShine(_HandleID, _Flag)
end

---��ȡ�Ӵ��ھ��
---�˽ӿڲ�ѯ���Ϊ1
---@param _HandleID int @ �����ھ��
---@param _ID string @��������
---@return int @ ��ȡ�ɹ��򷵻ش��ڣ��ӿؼ����ľ�� ��ȡʧ���򷵻�0
function GUI:WndFindChildM(_HandleID, _ID)
end

---���ô��ڿؼ�����ʾ����
---@param _HandleID int
---@param _HintInof string
function GUI:WndSetHint(_HandleID, _HintInof)
end

---���ô���ؼ��Ƿ�ɼ�
---@param _HandleID int
---@param _Flag bool
function GUI:WndSetVisible(_HandleID, _Flag)
end

---���ô����Ƿ���Ӧ����
---����������`WndSetMouseEnableIN`�ӿڣ��������ڴ˺��������յĲ������ͳ�������⣬���а���������������ʽ��
---@param _HandleID int
---@param _Flag bool @
--- - `true`:��Ϣ���ᴫ�����˴����µ��ӿؼ�,
--- - `false`: ��Ϣ�����ᴫ�����˴����µ��ӿؼ�
function GUI:WndSetCanRevMsg(_HandleID, _Flag)
end

---����ͼƬ �ؼ��������������
---@param _HandleID int @ָ��ͼƬ�ؼ��ľ��
---@param _Flag int @�����������
--- ���κͶ��Σ�
---
--- 0. �����
--- 1. ��Ĭ��ֵ�������λ���Ƿ���ͼƬ�ϣ�����͸���ȣ�
--- 2. �����λ���Ƿ��ڿؼ���Χ��
---
--- H5��
--- 1. ��Ĭ��ֵ�������λ���Ƿ���ͼƬ�ϣ�����͸���ȣ�
--- 2. ���������λ���Ƿ��ڿؼ���Χ��
function GUI:ImageSetCheckPoint(_HandleID, _Flag)
end

---�����༭��ؼ�
---@param _HandleID int
---@param _pEditID string @����
---@param _PosX int @������
---@param _PosY int @������
---@param _SizeX int @���
---@param _SizeY int @�߶�
---@return int
---@nodiscard
function GUI:EditCreate(_HandleID, _pEditID, _PosX, _PosY, _SizeX, _SizeY)
end

---���ñ༭���ı�������
---@param _HandleID int
---@param _Text string @�������ƣ���`FontSetting.xml`�ļ��е�`FontUseName`�ֶε�ֵ������鿴 **XML�����ļ�** -> **������ʽ����**��
function GUI:EditSetFontM(_HandleID, _Text)
end

---���ñ༭���ı���ɫ
---@param _HandleID int
---@param _Color uint
function GUI:EditSetTextColor(_HandleID, _Color)
end

---���ñ༭���Ƿ���Ա༭
---@param _HandleID int
---@param _CanEdit bool
function GUI:EditSetCanEdit(_HandleID, _CanEdit)
end

---���ñ༭����ı�������ʾ
---@param _HandleID int
function GUI:EditSetFontCenter(_HandleID)
end

---������ɫֵ
---@param R int
---@param G int
---@param B int
---@param A int
---@return int
function GUI:MakeColor(R, G, B, A)
end

---���ô���ؼ����ı�����
---@param _HandleID int
---@param _Text string
function GUI:WndSetTextM(_HandleID, _Text)
end

---���ô���ؼ���λ��
---@param _HandleID int
---@param _XPos int
---@param _YPos int
function GUI:WndSetPosM(_HandleID, _XPos, _YPos)
end

---��ȡ�ؼ�ͼƬ��Դ���
---@param _HandleID int
---@return int
function GUI:WndGetImageID(_HandleID)
end

---���ñ༭����ı�����
---@param _HandleID int @ �༭����
---@param _Text string @�ı�����
function GUI:EditSetTextM(_HandleID, _Text)
end

---�ڴ���ؼ�����ӽ��鶨ʱ��
---@param _HandleID int @ ָ������ؼ��ľ��
---@param _Elapse int @ִ�лص�������ʱ����
---@param _ScriptHandle string @�ص�����������
---@return int @OK����ʱ��ID��NO��0
function GUI:WndAddTimerBrief(_HandleID, _Elapse, _ScriptHandle)
end

---�ڴ���ؼ�����ӽ��鶨ʱ��
---@param _HandleID int @ ָ������ؼ��ľ��
---@param _Elapse int @ִ�лص�������ʱ����
---@param _ScriptHandle string @�ص�����������
---@param _Param string @ Ԥ��Ļص�����
---@return int @OK����ʱ��ID��NO��0
function GUI:WndAddTimerBriefEx(_HandleID, _Elapse, _ScriptHandle, _Param)
end

---��ȡ����ؼ��Ŀɼ�״̬
---@param _HandleID int
---@return bool
function GUI:WndGetVisible(_HandleID)
end

---�رմ���
---@param _HandleID int
function GUI:WndClose(_HandleID)
end

---��������
---ʹ�ô˽ӿڴ����Ĵ��ڵ�Ĭ�ϱ��Ϊ`flg_wndBase_autoTop`�����ؼ��������ڸ����ڵ����ϲ㣩��
---@param _ParentHandle int @�����ھ��
---@param _ID string @ �½����ڵ�����
---@param _ImageID uint @�½����ڵ�ͼƬ��ԴID
---@param _X int @ �½����ڵĺ�����
---@param _Y int @ �½�����δ֪��������
---@return int
function GUI:WndCreateWnd(_ParentHandle, _ID, _ImageID, _X, _Y)
end

---���ô���Esc�ر�����
---@param _HandleID int
---@param _Flag bool
function GUI:WndSetIsESCClose(_HandleID, _Flag)
end

---���ô�������϶�����
---@param _HandleID int
function GUI:WndSetMoveWithLBM(_HandleID)
end

---���þŹ���ƴ��ͼƬ
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

---��ȡ���ڴ�С
---@param _HandleID int
---@return bool @����ɹ�����ȡ���ڵĴ�С������`LuaRet`�У�
function GUI:WndGetSizeM(_HandleID)
end

---��ȡ�����ӿؼ�����
---@param _HandleID int
---@return int @�����Ӵ��ڵ�����
function GUI:WndGetChildCount(_HandleID)
end

---������Ʒ���ؼ�
---@param _ParentHandleID long @�����ھ��
---@param _pItemCtrlID char@�½���Ʒ������
---@param _ImageID uint @ͼƬ��ԴID
---@param _PosX int
---@param _PosY int
---@param _SizeX int
---@param _SizeY int
---@return int
function GUI:ItemCtrlCreate(_ParentHandleID, _pItemCtrlID, _ImageID, _PosX, _PosY, _SizeX, _SizeY)
end

---��ȡ�����ھ��
---@param _HandleID int # ָ������ؼ��ľ��
---@return int #  ��ȡ�ɹ��򷵻ظ����ھ������ȡʧ���򷵻�0
function GUI:WndGetParentM(_HandleID)
end

---��ȡ�����ڿؼ�����ڸ����������λ��
---@param _HandleID int
---@return bool
function GUI:WndGetPosM(_HandleID)
end

---��ȡ���ھ��
---@param _HandleID int @�����ھ��
---@param _Info string @Ҫ��Ѱ�Ĵ�������
---@return int
function GUI:WndFindWindow(_HandleID, _Info)
end

---���ÿؼ�ͼƬ��Դ���
---@param _HandleID int @Ҫָ���ؼ��ľ��
---@param _ImageId uint @ͼƬ��Դ���
function GUI:WndSetImageID(_HandleID, _ImageId)
end

---���ô���ؼ����û��Զ�������
--- ֧����ഴ��10���Զ�������
---@param _HandleID int @Ҫָ���Ĵ���ؼ��ľ��
---@param _Data int @�Զ������ݵ���ֵ
---@param _DataIndex int @�Զ������ݵ�����
function GUI:WndSetUserData(_HandleID, _Data, _DataIndex)
end

---������Ʒ�������Զ�����
---@param _HandleID int
---@param _Flag bool
function GUI:ItemCtrlSetItemDataAutoManager(_HandleID, _Flag)
end

---���ð�ť����ʱ�����Ƿ�ı�λ��
---������Ϊ��������ť����ʱ���ֻ������·�ƫ��һ������
---@param _HandleID int
---@param _Flag bool
function GUI:ButtonSetDownTextPosChange(_HandleID, _Flag)
end

---����ͼƬ�ؼ��Զ��������ֵ
---@param _HandleID int
---@param _Param int
---��0:��ͨ����
---1:��ͨ����
---2:����ƽ�̻���
---3.����ƽ�̻���
---4.�Ź�����ƣ�
function GUI:ImageSetParam(_HandleID, _Param)
end

---���ô���ؼ��ı���ɫ
---@param _HandleID int @ ָ������ؼ��ľ��
---@param _Color uint @�ı���ɫ�������ɼ�[��ɫ�ַ���](https://tool.173uu.com/#/scriptdocument/0?name=g2652&t=1718249086844)����
---��ɫ�ַ�����ʽ��
---1. ��#��ͷ�ַ���:ͨ���ӿ�`GetColor`
---2. ͨ���ӿ�`MakeColor`��`MakeARGB`��`Lua-MakeARGB`���ɵ���ɫֵ������������ֵ���͵Ĳ���
---3. ��`GlobalDefine.lua`�ű��ļ��ж������ɫ���
---4. ����Ԥ�������ɫ��ǣ������ִ�Сд��
function GUI:WndSetTextColorM(_HandleID, _Color)
end

---������ɫֵ��������ֵ��Χ��`0~255`֮��
---@param A int
---@param R int
---@param G int
---@param B int
---@return uint
function GUI:MakeARGB(A, R, G, B)
end

---���ô���ؼ����ֵ����з�ʽ
---@param _HandleID int @ ָ������ؼ��ľ��
---@param _XOffset int @���ֵĺ������ƫ����
---@param _YOffset int @ ���ֵ��������ƫ����
---@param _FontDistance int @ ���ֵļ�࣬��λΪ����
---@param _ArrangeType int @ �������ͣ���0��ˮƽ���У�1����ֱ���У�
function GUI:WndSetTextArrangeType(_HandleID, _XOffset, _YOffset, _FontDistance, _ArrangeType)
end

---���ð�ť����
---@param _HandleID int @ָ����ť�ؼ��ľ��
---@param _FontName string @�������ƣ���`FontSetting.xml`�ļ��е�`FontUseName`�ֶε�ֵ�������[������ʽ����](https://tool.173uu.com/#/scriptdocument/0?name=g3518&t=1718249837874)
function GUI:ButtonSetTextFont(_HandleID, _FontName)
end

---�����Ƿ�Ϊ�����ҳǩ��ť
---@param _HandleID int @ ���
---@param _Flag bool @true������
function GUI:ButtonSetIsActivePageBtn(_HandleID, _Flag)
end

---���ô���ؼ������˳��
---@param _HandleID int @���
---@param _Order int @���ȼ�
function GUI:SetLocalZOrder(_HandleID, _Order)
end

---��ȡ����ؼ�������
---@param _HandleID int
---@return string @OK:name,NO:""
function GUI:WndGetIDM(_HandleID)
end

---���ð�ťѡ��Χ
---@param _HandleID int
---@param _SizeX int
---@param _SizeY int
function GUI:ButtonSetSelectRange(_HandleID, _SizeX, _SizeY)
end

---������Ʒ���Ƿ��ʹ���Ҽ�
---@param _HandleID int
---@param _Flag bool @true���Ҽ������Ʒ��ʹ����Ʒ��false ���Ҽ������Ʒ�����κ�����
function GUI:ItemCtrlSetRBtnUse(_HandleID, _Flag)
end

---������Ʒ������Ʒ��ͼ��ߴ��С
---@param _HandleID int
---@param _IconXSize int
---@param _IconYSize int
function GUI:ItemCtrlSetIconSize(_HandleID, _IconXSize, _IconYSize)
end

---���ô����Ƿ����
---@param _HandleID int
---@param _Flag bool
function GUI:WndSetEnableM(_HandleID, _Flag)
end

---������ѡ��ؼ�
---@param _ParentHandle int
---@param _pCheckID  string @��ѡ��ؼ�������
---@param _ImageID uint @ͼƬ��ԴID
---@param _Tital string @��ѡ��ؼ�����
---@param _PosX int @������
---@param _PosY int @������
---@return int @OK�������No��0
function GUI:CheckBoxCreate(_ParentHandle, _pCheckID, _ImageID, _Tital, _PosX, _PosY)
end

---���ø�ѡ���ѡ��״̬
---@param _HandleID int
---@param _Check bool
function GUI:CheckBoxSetCheck(_HandleID, _Check)
end

---���ø�ѡ���ѡ��״̬
---@param _Handle int
---@param _Info string
---@param _Check bool
---@return bool @ true:�ռ���ڣ�false���ռ䲻����
function CheckSetCheck(_Handle, _Info, _Check)
end

---���ø�ѡ��ؼ���ѡ��״̬�Ƿ�ı�
---@param _HandleID int
---@param _AutoChange bool
function GUI:CheckBoxSetAutoChange(_HandleID, _AutoChange)
end

---��ȡ��ѡ���ѡ��״̬
---@param _HandleID int @ָ����ѡ��ؼ��ľ��
---@return bool
function GUI:CheckBoxGetCheck(_HandleID)
end

---���ð�ť����ʾ��ͼƬ
---@param _HandleID int
---@param _ImageID uint
function GUI:ButtonSetDrawPostTexture(_HandleID, _ImageID)
end

---���������������Ʒ������ !!!:����
---@param _Handle int @ָ����Ʒ��ؼ��ľ��
---@param _KeyName string @��Ʒ��������
---@param _Count int @��Ʒ�ѵ�������
---@param _IsBind bool @��Ʒ�Ƿ��
function RDItemCtrlSetGUIDataByKeyName(_Handle, _KeyName, _Count, _IsBind)
end

---������Ʒ�򱳾�ͼƬ
---@param _HandleID int
---@param _ImgId int
function GUI:ItemCtrlSetBackImageID(_HandleID, _ImgId)
end

---������ƷID�����Ʒ��
---@param _Handle int # �ö���Ʒ��ؼ��ľ��
---@param _Info string? # �ö���Ʒ��ؼ�������
---@param __ItemID int # ��Ʒģ��ID
---@param _Count int # ��Ʒ�ѵ�����
---@param _IsBind bool # ��Ʒ�Ƿ�� ��`true` �󶨣�`false`�ǰ�
---@return bool # `true` : ִ�гɹ�, `false` �� ִ��ʧ��
function RDItemCtrlSetGUIDataPropByItemID(_Handle, _Info, __ItemID, _Count, _IsBind)
end

---������ƷGUID�����Ʒ��
---@param _Handle int
---@param _Info string
---@param _ItemGUID string
function RDItemCtrlSetGUIDataPropByGUID(_Handle, _Info, _ItemGUID)
end

---��ȡ��Ʒ��ָ����Ʒ��������
---�˽ӿ�ֻ�ܻ�ȡʹ��GUID������Ʒ���ж�Ӧ��Ʒ����������
---@param _Handle int @��Ʒ����
---@param _Info string @ָ����Ʒ��ؼ�������
function RDItemCtrlGetGUIDataKeyName(_Handle, _Info)
end

---���������������Ʒ�� !!!: **����**
---@param _Handle int @��Ʒ����
---@param _Info string? @ָ����Ʒ��ؼ�������
---@param _KeyName string @��Ʒ������
---@param _Count int @��Ʒ�ѵ�������
---@param _IsBind bool @��Ʒ�Ƿ��
function RDItemCtrlSetGUIDataPropByKeyName(_Handle, _Info, _KeyName, _Count, _IsBind)
end

---�����Ʒ�������е���Ʒ����
---@param _Handle int @ָ����Ʒ��ؼ��ľ��
---@param _Info string @ָ����Ʒ��ؼ�������
function RDItemCtrlClearGUIData(_Handle, _Info)
end

---����������������
---@param _ParentHandle int
---@param _ID string @  �½��ؼ�����
---@param _X int  @ �½��ĺ�����
---@param _Y int @�½���������
---@param _Width int
---@param _Height int
---@return int @ ���
function GUI:WndCreateScrollWnd(_ParentHandle, _ID, _X, _Y, _Width, _Height)
end

---���������������ڣ���չ��
---@param _ParentHandle int
---@param _ID string @  �½��ؼ�����
---@param _X int  @ �½��ĺ�����
---@param _Y int @�½���������
---@param _Width int
---@param _Height int
---@param _Vert bool @�Ƿ񴴽�����ֱ�������Ĵ��ڣ�true����ֱ��false��ˮƽ
---@return int @ ���
function GUI:WndCreateScrollWndEx(_ParentHandle, _ID, _X, _Y, _Width, _Height, _Vert)
end

---����ˮƽ�������ؼ�
---@param _ParentHandleID int@ �����ھ��
---@param _pItemCtrlID string@�½�ˮƽ������������
---@param _ImageUp int@���������ť��ͼƬ��ԴID
---@param _ImageDown int@���ҹ�����ť��ͼƬ��ԴID
---@param _ImageThumb int@��������ǰ���������飩ͼƬ��ԴID
---@param _ImageBack int@ �������ı���ͼƬ��ԴID
---@param _PosX int @ �½�ˮƽ������λ�õĺ�����
---@param _PosY int @ �½�ˮƽ������λ�õ�������
---@param _Length int@ �½�ˮƽ�������ĳ���
---@return int @���
function GUI:ScrollBarHCreate(_ParentHandleID, _pItemCtrlID, _ImageUp, _ImageDown, _ImageThumb, _ImageBack, _PosX, _PosY,
                              _Length)
end

---���ñ༭���Ƿ�ɶ��б༭
---@param _HandleID int
---@param _MultiLine bool
function GUI:EditSetMultiLineEdit(_HandleID, _MultiLine)
end

---���ñ༭���Ƿ����������С
---@param _HandleID int
---@param _LimitSize bool
function GUI:EditSetLimitStringSize(_HandleID, _LimitSize)
end

---����ͼƬ�ؼ��Ƿ������ĵ����
---@param _HandleID int
---@param _DrawCenter bool
function GUI:ImageSetFixedDrawCenter(_HandleID, _DrawCenter)
end

---����ͼƬ�ؼ���ͼƬ
---@param _Handle int
---@param _Info string?
---@param _ImageID uint
---@return bool # `true` ִ�гɹ�, `false` ִ��ʧ�ܣ�δ�ҵ���Ӧ�ؼ���
function ImageSetImageID(_Handle, _Info, _ImageID)
end

---����ͼƬ�ؼ��Ƿ񲥷Ŷ���
---@param _HandleID int
---@param _Enable bool
---@param _Speed uint
function GUI:ImageSetAnimateEnable(_HandleID, _Enable, _Speed)
end

---�������ƶ������ϲ�
---@param _HandleID int @ �ƶ�����ؼ��ľ��
function GUI:WndMoveToParentTop(_HandleID)
end

---������Ʒ���Ƿ���Ч
---@param _Handle int
---@param _Info string?
---@param _Enable bool
---@return bool
function RDItemCtrlSetGUIDataEnable(_Handle, _Info, _Enable)
end

---������Ʒ���Ƿ���ʾ��Ʒ����
---@param _HandleID int
---@param _Flag bool @true����ʾ��fals������ʾ
function GUI:ItemCtrlSetShowItemCount(_HandleID, _Flag)
end

---������Ʒ������Ʒ������ֵ
---@param _Handle int
---@param _Info string?
---@param _PropType int
---@param _PropValue table @����ֵ������ֵ�ľ������͸���ָ����GUI�������;���
function RDItemCtrlSetGUIDataPropByType(_Handle, _Info, _PropType, _PropValue)
end

---�Ƿ���ʾ��Ʒ��ǰ��ͼƬ
---@param _Handle int
---@param _Info string?
---@param _ImgId int
function RDItemCtrlSetFrontImageID(_Handle, _Info, _ImgId)
end

---������Ʒ������Ʒ������ֵ
---@param _HandleID int
---@param _PropType GUIDataPropType @����ֵ����Ӧ�������͵Ĳ�����Ҫͨ��ȫ�ֱ���`LuaArg`������
function GUI:ItemCtrlSetGUIDataPropByType(_HandleID, _PropType)
end

---������Ʒ���е���Ʒ�Ƿ���ʾΪ��ͼ��
---@param _HandleID int
---@param _BigIconType int @0����ͨͼ�꣬������ֵ����ͼ��
function GUI:ItemCtrlSetBigIcon(_HandleID, _BigIconType)
end

---��Ʒ������Ϊ��ͼ��ʱ���Ƿ񲥷Ŷ���
---@param _HandleID long
---@param _Anim bool
---@param _AnimSpeed uint
function GUI:ItemCtrlSetBigIconAnim(_HandleID, _Anim, _AnimSpeed)
end

---������Ʒ���ͼ������
---@param _HandleID int @ ���
---@param _Type int @ͼ������
function GUI:ItemCtrlSetIconImageType(_HandleID, _Type)
end

---����ͼƬ�Ƿ���Ӧ����
---@param _Handle int
---@param _Info string
---@param _Flag bool
function WndSetCanRevMsg(_Handle, _Info, _Flag)
end

---���ô����Ƿ����
--- �˺�����������Ӧ�Ŀؼ��Ƿ��ʹ�á�
---@param _HandleID int
---@param _Flag bool
function GUI:WndSetEnableM(_HandleID, _Flag)
end

---�������ƶ������ϲ�
---@param _Handle int
---@param _Info string
function WndMoveToParentTop(_Handle, _Info)
end

---��Ǵ���ؼ�Ϊ�����ȼ�UI
---@param _Name string @����ؼ�������
function GUI:SetHighPriorityUIName(_Name)
end

--- ����ͼƬ�ؼ������ź���ת
---@param _HandleID int
---@param _ScaleX int
---@param _ScaleY int
---@param _Roation int
--- > Ĭ�������Ͻǲ��䣬�������������Ļ���
function GUI:ImageSetTransfrom(_HandleID, _ScaleX, _ScaleY, _Roation)
end

---���ñ༭���Ƿ����������С
---@param _HandleID int
---@param _LimitSize bool
function GUI:EditSetLimitStringSize(_HandleID, _LimitSize)
end

---�Զ��崰��ؼ������ִ�С
---��2d�ͻ����У��˽ӿ�֧�ֵĴ���ؼ������� ��ť���༭�� ���๦�ܱ༭��͸�ѡ�� �ؼ���
---@param _HandleID int
---@param _Size int
function GUI:WndSetFontSize(_HandleID, _Size)
end

---���ó�ͼƬ�ؼ���������
---@param _HandleID int
---@param _StartX float
---@param _EndX float
---@param _StartY float
---@param _EndY float
function GUI:ImageSetDrawRect(_HandleID, _StartX, _EndX, _StartY, _EndY)
end

---����ѡ���ı�����ʱ�Ƿ���ʾ������
--- - ��2d��������
---@param _HandleID int @ ���
---@param _Value bool @�Ƿ���ʾ��ɫ�ĸ�����
function GUI:EditSetDrawSelectBgWhenCantEdit(_HandleID, _Value)
end

---���ð�ť����״̬ͼƬ�������ͼƬ��IDƫ��
---@param _HandleID int @ ��ť���
---@param _NormalIndex int @ ����״̬��ͼƬ��ԴID����ڰ�ť����ͼƬ��ԴID ��ƫ��
---@param _MouseOnIndex int @�������״̬��ͼƬ��ԴID����ڰ�ť����ʱͼƬ��ԴID��ƫ��
---@param _MouseDownIndex int@��갴��״̬��ͼƬ��ԴID����ڰ�ť����ʱͼƬ��ԴID��ƫ��
---@param _DisableIndex int @��ť������״̬��ͼƬ��ԴID����ڰ�ť����ʱͼƬ��ԴID��ƫ��
function GUI:ButtonSetImageIndex(_HandleID, _NormalIndex, _MouseOnIndex, _MouseDownIndex, _DisableIndex)
end

---������Ʒ��Ĭ��ͼƬ
---@param _HandleID int
---@param _ImgId int @Ĭ��ͼƬid
function GUI:ItemCtrlSetDefaultImage(_HandleID, _ImgId)
end

---������Ʒ������Ʒ��ͼ���ƫ��
---@param _HandleID int
---@param _OffsetX int @����ͼƬˮƽƫ����
---@param _OffsetY int @����ͼƬ��ֱƫ����
function GUI:ItemCtrlSetBigIconOffset(_HandleID, _OffsetX, _OffsetY)
end

---����ͼƬ�Ƿ������ĵ����
---@param _HandleID int
---@param _DrawCenter bool @true:���ĵ���ơ�false��Ĭ�Ϸ�ʽ����
function GUI:ImageSetDrawCenter(_HandleID, _DrawCenter)
end

---Ϊ����ؼ�����Զ�������
---@param _HandleID int
---@param _Key string @ ������
---@param _Val string@ ����ֵ
function GUI:WndAddProperty(_HandleID, _Key, _Val)
end

---������Ʒ������Ʒ��GUIData���
---@param _HandleID int
---@param _ItemDataHandle long @��Ʒ��GUIData���
function GUI:ItemCtrlSetGUIData(_HandleID, _ItemDataHandle)
end

---�����Ʒ������
---@param _HandleID int
function GUI:ItemCtrlClearItemData(_HandleID)
end

---�����๦�ܱ༭��ؼ�
---@param _ParentHandleID int
---@param _pWndItemID string
---@param _PosX int
---@param _PosY int
---@param _SizeX int
---@param _SizeY int
---@return int @���
---@nodiscard
function GUI:RichEditCreate(_ParentHandleID, _pWndItemID, _PosX, _PosY, _SizeX, _SizeY)
end

---���ö๦�ܱ༭���Ƿ���Ա༭
---@param _HandleID int
---@param _Flag bool
function GUI:RichEditSetEditEnable(_HandleID, _Flag)
end

---��Ӵ���ؼ��ı��
---@param _HandleID int
---@param _Flag uint @�������
function GUI:WndAddFlags(_HandleID, _Flag)
end

---���ð�ť�ƶ�����ӿؼ��ϲ�
---@param _HandleID int
function GUI:ButtonSetMoveToActionTop(_HandleID)
end

---���ð�ť��ͼƬ
---@param _Handle int
---@param _Info string
---@param _ImageId int
function ButtonSetImageID(_Handle, _Info, _ImageId)
end

---������ֱ������
---@param _ParentHandleID int @�����ھ��
---@param _pItemCtrlID string @�½�������������
---@param _ImageUp int @���Ϲ�����ť��ͼƬ��Դid
---@param _ImageDown int @���¹�����ͼƬ��ԴID
---@param _ImageThumb int @��������ǰ���������飩ͼƬ��ԴID
---@param _ImageBack int @ �������ı���ͼƬ��ԴID
---@param _PosX int @�½���ֱ������λ�õĺ�����
---@param _PosY int @�½���ֱ������λ�õ�������
---@param _Length int @�½���ֱ�������ĸ߶�
---@return int @���
function GUI:ScrollBarVCreate(_ParentHandleID, _pItemCtrlID, _ImageUp, _ImageDown, _ImageThumb, _ImageBack, _PosX, _PosY,
                              _Length)
end

---��ȡ����ؼ����Զ������
---@param _HandleID int @����ؼ��ľ��
---@return uint @�Զ������ֵ
function GUI:WndGetParam(_HandleID)
end

---��ȡ��ť�Ƿ�Ϊ��ɫ״̬
---@param _HandleID int
function GUI:ButtonGetShowDisable(_HandleID)
end

---���ð�ť�Ƿ�Ϊ��ɫ״̬
---@param _HandleID int
---@param _Flag bool
function GUI:ButtonSetShowDisable(_HandleID, _Flag)
end

---��ȡ�༭����ı�����
---@param _HandleID int
---@return string @OK���༭����ı����ݣ�NO:`""`
function GUI:EditGetTextM(_HandleID)
end

---���ð�ť�ж�����Ƿ��ڴ��ڵķ�ʽ
---@param _HandleID int
---@param _Flag int �жϷ�ʽ `0`ʹ�ð�ťͼƬ�жϡ�������ڰ�ťʹ�õ�ͼƬ�ϼ��ж�Ϊ�ڴ����ڡ� ����ֵ ʹ�ÿؼ������жϡ�������ڰ�ť�ؼ��ڼ��ж�Ϊ�ڴ����ڡ�
function GUI:ButtonSetCheckPoint(_HandleID, _Flag)
end

---���ô�̨�ؼ��ļ���״̬
---@param _HandleID int
---@param _Flag bool @ `true`ָ������ؼ�Ϊ����״̬ `false`ָ������ؼ�Ϊ�Ǽ���״̬
function GUI:WndSetActiveM(_HandleID, _Flag)
end

---������Ʒ�����ͼƬ
---@param _HandleID int @�ƶ���Ʒ��ľ��
---@param _ImgId int @��Ʒ�����ʱ��ʾ��ͼƬID
function GUI:ItemCtrlSetHighlightImageID(_HandleID, _ImgId)
end

---���ù���������
---@param _HandleID int @ ���
---@param _Step int @ָ��������ֵ��Ĭ�ϵķ�ΧΪ`0~100`
function GUI:ScrollBarSetSetp(_HandleID, _Step)
end

---�๦���ı�������ı�
---1. �˺�������ı�������ָ���Ķ๦�ܱ༭��ؼ��� �๦�ܱ༭�������ε��ô˺�����Ӷ���ı���Ŀ���ı��ᰴ˳������׷�ӣ������Ǹ�����ǰ���ı����ݣ��� �����������๦�ܱ༭��Ŀ�ȣ����е��ı��ᱻ�Զ����Ϊ������ʾ��
---2. �����ڵ����޸����弰�����С�Ľӿڣ����磺`GUI:RichEditSetCurFont`��֮���ٵ��ô˽ӿ�������ı���
---@param _HandleID int
---@param _Info string @�������ı�����
function GUI:RichEditAppendString(_HandleID, _Info)
end

---���ö๦�ܱ༭�������
---@param _HandleID int
---@param _FontName string
function GUI:RichEditSetCurFont(_HandleID, _FontName)
end

---���ö๦�ܱ༭��Ĭ�ϵ��ı���ɫ
---@param _HandleID int
---@param _Color uint
function GUI:RichEditSetDefaultTextColor(_HandleID, _Color)
end

--- ���ô���ؼ��ı��
---@param _HandleID int
---@param _Flag uint
function GUI:WndSetFlagsM(_HandleID, _Flag)
end

---����ͼƬƽ����ʾ
---@param _HandleID any
function GUI:ImageSetDrawFlat(_HandleID)
end

---���ô���ؼ�������ƫ��
---@param _HandleID int @ָ�����ڿؼ��ľ��
---@param _X int @������ƫ����
---@param _Y int @������ƫ����
function GUI:WndSetTextOffset(_HandleID, _X, _Y)
end

---�����б��ؼ�
---@param _ParentHandleID int @�����б��ؼ�
---@param _pWndID char @�½��б�������
---@param _PosX int @�½��б��λ�õĺ����ꡣ
---@param _PosY int @�½��б��λ�õ������ꡣ
---@param _SizeX int @�½��б��Ŀ�ȡ�
---@param _SizeY int @�½��б��ĸ߶ȡ�
---@return int @�������ɹ����򷵻��½��б��ľ��
function GUI:ListBoxCreate(_ParentHandleID, _pWndID, _PosX, _PosY, _SizeX, _SizeY)
end

---������Ͽ�ؼ�
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

---������Ͽ���������ͼƬ
---@param _Handle int
---@param _Info string
---@param _ImgId uint
function ComboBoxSetListFillImage(_Handle, _Info, _ImgId)
end

---������Ͽ���������ͼƬ
---@param _HandleID int
---@param _ImgId uint
function GUI:ComboBoxSetListFillImage(_HandleID, _ImgId)
end

---������Ͽ��й�������ͼƬ
---@param _HandleID int
---@param _Up uint
---@param _Mid uint
---@param _Down uint
---@param _Back uint
function GUI:ComboBoxSetScrollBarImage(_HandleID, _Up, _Mid, _Down, _Back)
end

---���ø�ѡ��ͼƬ�����ű���
---@param handle long @��ѡ����
---@param scale_x int @X�᷽������
---@param scale_y int @Y�᷽������
function GUI:CheckBoxSetImageScale(handle, scale_x, scale_y)
end

---���ô���ؼ���MagicUI��Ч����
---��ֵ��Ϊ���ʡ�10000
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

---������Ʒ����ЧͼƬ
---@param _HandleID int
---@param _ImgId int @��Ʒ����ЧͼƬ��ID
---@param _Scale float @��ЧͼƬ�����ű��� 1Ϊ1����2Ϊ����
function GUI:ItemCtrlSetEffectImageID(_HandleID, _ImgId, _Scale)
end

---������Ʒ���ǰ��ͼƬ
---@param _HandleID int
---@param _ImgId int
function GUI:ItemCtrlSetFrontImageID(_HandleID, _ImgId)
end

---������Ʒ��ǰ��ͼƬ��ƫ��
---@param _HandleID int
---@param _XOff int @ͼƬ��ˮƽƫ����
---@param _YOff int @ͼƬ�Ĵ�ֱƫ����
function GUI:ItemCtrlSetFrontImageOffset(_HandleID, _XOff, _YOff)
end

---������Ʒ���е���Ʒ�Ƿ���ʾΪ��ͼ��
---@param _Handle int
---@param _Info string @ָ����Ʒ��ؼ�������
---@param _IsBigIcon bool @��Ʒ�Ƿ�Ϊ��ͼ�꣺`true`���ǣ�`false`������
function RDItemCtrlSetBigIcon(_Handle, _Info, _IsBigIcon)
end

---��ȡ��Ʒ���ͼ������
---@param _HandleID int
function GUI:ItemCtrlGetIconImageType(_HandleID)
end

---������Ʒ���е���Ʒ�Ƿ��ܱ�ʰ��
---@param _Handle int
---@param flag bool
function GUI:ItemCtrlSetMouseEnableSelect(_Handle, flag)
end

---������Ʒ���е��ߵ���ɫ
---@param handle int @ָ����Ʒ��ؼ��ľ��
---@param color uint @Ҫ���õ���ɫ
function GUI:ItemCtrlSetColor(handle, color)
end

---������Ʒ���Ƿ���ʾ����ͼ��
---@param _HandleID int @ ָ����Ʒ��ؼ��ľ��
---@param _ShowLockImage bool @�Ƿ���ʾ����ͼ�� `true`����ʾ,`false`������ʾ
function GUI:ItemCtrlSetShowLockImage(_HandleID, _ShowLockImage)
end

---������Ʒ��δ��Ч״̬����ͼ��
---@param _HandleID int
---@param _LockImgID uint @��ͼ���ͼƬ��ԴID��������Ϊ`0`����ʾͼ��
---@param _OffsetX int
---@param _OffsetY int
---> ��ƫ�ƾ�����Ϊ0����ͼ����ʾλ��Ĭ��Ϊ���Ͻ�
function GUI:ItemCtrlSetInvalidLockData(_HandleID, _LockImgID, _OffsetX, _OffsetY)
end

---������Ʒ���Ƿ���ʾƷ�ʱȽϼ�ͷ
---@param _HandleID int @ָ����Ʒ��ؼ��ľ��
---@param _ShowQualityArrow bool @ `true`����ʾ,`false`������ʾ
function GUI:ItemCtrlSetShowQualityArrow(_HandleID, _ShowQualityArrow)
end

---������Ʒ������Ʒ�������ֵĸ�ʽ
---@param _HandleID int @ָ����Ʒ��ؼ��ľ��
---@param _FontName string @�������� ����FontSetting.xml�ļ��е�FontUseName�ֶε�ֵ��
---@param _OffsetX int @ ˮƽƫ����
---@param _OffsetY int @ ��ֱƫ����
function GUI:ItemCtrlSetNumberConfig(_HandleID, _FontName, _OffsetX, _OffsetY)
end

---������Ʒ����ʾ����Ʒ������ͼ��
---@param _ImageID uint @����ͼƬ��ԴID����Ϊ0����ʾ
---@param _OffsetX int @��X��ƫ��
---@param _OffsetY int @��ͼ��Y��ƫ��
---@param _ScaleX int @��ͼ��ͼƬ������ű���
---@param _ScaleY int @��ͼ��ͼƬ�߶����ű���
---���ű���Ϊ�� ��Ҫ���õı�������10000��Ϊ����ֵ
function GUI:ItemCtrlSetLockImage(_ImageID, _OffsetX, _OffsetY, _ScaleX, _ScaleY)
end

---������Ʒ�򱳾�ͼƬ�Ƿ�����Ӧ��ʾ
---@param _HandleID int
---@param _IsAdapt bool
function GUI:ItemCtrlSetBackImageIsAdapt(_HandleID, _IsAdapt)
end

---��ȡ��Ʒ���Ƿ��ʹ���Ҽ�
---@param _HandleID int @ָ����Ʒ��ؼ��ľ��
---@return bool @true�Ҽ������Ʒ��ʹ����Ʒ false�Ҽ������Ʒ�����κ�����
---��ʹ��ȡΪtrue���������Ҽ������Ʒ��ʹ����Ʒ�Ĺ����Ѳ�����Ч��
function GUI:ItemCtrlGetRBtnUse(_HandleID)
end

---��ȡ��Ʒ���Ƿ���ʾ��Ʒ����
---@param _HandleID int
---@return bool@`true`��ʾ��Ʒ���� `false`����ʾ��Ʒ����
function GUI:ItemCtrlIsShowItemCount(_HandleID)
end

--- ��ȡ��Ʒ�򱳾�ͼƬ
---@param _HandleID int
---@return int @��Ʒ�򱳾�ͼƬID
function GUI:ItemCtrlGetBackImageID(_HandleID)
end

---��ȡ��Ʒ������Ʒ��ͼ���ƫ��
---@param _HandleID int
---@return bool
---�˺������ز����ɹ���ʧ�ܡ�������ɹ������ȡ��ƫ�����洢��`LuaRet`�С�
---``` lua
--- LuaRet[1] --ͼƬ��ˮƽƫ������
--- LuaRet[2] --ͼƬ�Ĵ�ֱƫ������
---```
function GUI:ItemCtrlGetBigIconOffset(_HandleID)
end

---��ȡ��Ʒ��Ĭ��ͼƬ
---@param _HandleID int
---@return int @��Ʒ��Ĭ��ͼƬID
function GUI:ItemCtrlGetDefaultImage(_HandleID)
end

---��ȡ��Ʒ��ǰ��ͼƬ
---@param _HandleID int
---@return int @��Ʒ��ǰ��ͼƬID
function GUI:ItemCtrlGetFrontImageID(_HandleID)
end

--- ��ȡ��Ʒ��ѡ��ͼƬ  ����Ʒ�����ͼƬ��
---@param _HandleID int
---@return int @��Ʒ��ѡ��ͼƬID
function GUI:ItemCtrlGetHighlightImageID(_HandleID)
end

---��ȡ��Ʒ������Ʒ��ͼ��ߴ��С
---@param _GUIHandle int
--- �˺����޷���ֵ
--- ��ȡ��ͼ��ߴ���Ϣ�洢��ȫ�ֱ���LuaRet�С�
---```lua
---LuaRet[1] -- ͼ��Ŀ�ȣ���λΪ���أ�px����
---LuaRet[2] -- ͼ��ĸ߶ȣ���λΪ���أ�px����
---```
--- ��δʹ�ýӿ�`GUI:ItemCtrlSetIconSize`������Ʒͼ��ߴ磬��ֱ�ӷ���`-1`��ΪĬ��ֵ����
---����ȡ��ͼ���Ⱥ͸߶Ⱦ�Ϊ`0`��������ȡʧ�ܡ�
function GUI:ItemCtrlGetIconSize(_GUIHandle)
end

---�����б�������
---@param _HandleID int @ָ���б��ؼ��ľ��
---@param _ColNum int @ָ������
function GUI:ListBoxSetColumnNum(_HandleID, _ColNum)
end

---�����б����ĳ�е�λ��
---@param _HandleID int @ָ���б��ؼ��ľ��
---@param _ColumnIdx_ int @ ָ���кţ�0��ʾ��һ��
---@param _Pos int @ָ��λ��
function GUI:ListBoxSetColumnPos(_HandleID, _ColumnIdx_, _Pos)
end

--- �����б����Ŀ��ˮƽƫ����
---@param _HandleID int @ָ���б��ؼ��ľ��
---@param _Offset int @��Ŀ��ˮƽƫ����-
function GUI:ListBoxSetOffsetX(_HandleID, _Offset)
end

---�����б�����Ŀ�и�
--- �˺�������ָ���б��ؼ��и�����Ŀ֮��Ĵ�ֱ��������м�ࡣ
---@param _HandleID int @ָ���б��ؼ��ľ��
---@param _Offset int @�м��
--- ʵ���и߼�Ϊ����߶����м��֮�͡�
function GUI:ListBoxSetOffsetY(_HandleID, _Offset)
end

---���ô���ؼ��Ƿ����MagicUI��Ч
---@param _HandleID int
---@param _Type int @1���У�0����
function GUI:WndSetMagicUI(_HandleID, _Type)
end

---�����˵�
---������ɺ�Ĭ�ϲ���ʾ����Ҫ����`MenuShowPopupMenu`�ӿ���ʾ��
---@param _ParentID int @�����ھ��
---@param _WndId string @�½��˵��ؼ���ID
---@return int # �����ɹ��򷵻��½��˵��ؼ��ľ��,����ʧ���򷵻�`0`
function GUI:MenuCreate(_ParentID, _WndId)
end

---��Ӳ˵���Ŀ
---@param _ItemId int @�����Ŀ��ID
---@param _TextInfo string @��ӵ���Ŀ�ı�
---@param _FlagImage uint @�����Ŀǰ���ͼƬ
---@param _ParentId int @�����Ŀ�Ĳ˵���ID ���˲�������Ϊ`-1`ʱ����ʾ�˲˵�û�и��˵���
---@param _ItemImg uint @�����Ŀ�ı���ͼƬ
---@return bool @`true`:�˵����ڣ�`false`:�˵�������
function GUI:MenuAddItem(_ItemId, _TextInfo, _FlagImage, _ParentId, _ItemImg)
end

---����б����������
---@param _HandleID int @ָ���б��ؼ��ľ��
function GUI:ListBoxClear(_HandleID)
end

---���б��������Զ�����ɫ����Ŀ
---@param _HandleID int @ָ���б��ؼ��ľ��
---@param _Str string @�ı���Ŀ������
---@param _Color uint @ �ı���ɫ
function GUI:ListBoxAddString(_HandleID, _Str, _Color)
end

---��ȡ�б��ѡ����Ŀ���к�
---@param _HandleID int
---@return int @ѡ����Ŀ���к�
function GUI:ListBoxGetCurSelLine(_HandleID)
end

---���ò˵����ػ���ʾ
--- �˵����������ͨ��ȫ�ֱ���Temporary�����ݡ�
---@param _UseMousePos bool @`true`:��ʾ�����λ����ʾ�˵�,`false`��ʾ�������λ����ʾ�˵�
---@return bool @ `true`�˵����ڣ�`false`�˵�������
function GUI:MenuShowPopupMenu(_UseMousePos)
end

---��ȡ�б���ƶ���������������Ŀ����
---@param _HandleID int
---@param _LineIdx int @��Ŀ����������
---@param _ColIdx int @��Ŀ����������
---@return string  #ѡ�е���Ŀ����
function GUI:ListBoxGetString(_HandleID, _LineIdx, _ColIdx)
end

---���ñ༭���ı�����Ϊָ��������
---@param _HandleID int
---@param _Data int @Ҫ���õ�����
function GUI:EditSetInt(_HandleID, _Data)
end

---���ô������϶���Ʒʱ�ܷ���ܴ����¼�
---@param _HandleID int @ָ�����ڿؼ��ľ��
---@param _Flag bool @ true���ܣ�false������
function GUI:WndSetCanDragItem(_HandleID, _Flag)
end

---������Ʒ���Ƿ�֧���϶���Ʒ����
---@param _HandleID int @ָ����Ʒ��ؼ��ľ��
---@param _Flag bool  @�Ƿ�֧���϶���Ʒ
function GUI:ItemCtrlSetCanDrag(_HandleID, _Flag)
end

---�����Ƿ���ʾ��Ʒ����װ����TIps�Ƚ�
---@param handle int
---@param enable bool
function GUI:ItemCtrlEnableCompareTips(handle, enable)
end

---���ð�ť��˸Ƶ��
---@param handle long
---@param shine_gradient int
function GUI:ButtonSetShineGradient(handle, shine_gradient)
end

---ɾ������ؼ���ָ���Ķ�ʱ��
---@param _Handle int @ָ������ؼ��ľ��
---@param _Info string @�ƶ�����ؼ�������
---@param _ID int @Ҫɾ���Ķ�ʱ��ID
---@return bool @OK��ִ�гɹ���false ��ִ��ʧ��
function WndDelTimer(_Handle, _Info, _ID)
end

---��ȡ����ؼ�����Ļ����
---@param _HandleID int @��������
---@return bool @`true`����ȡ�ɹ���`fasle` ��ȡʧ��
function GUI:WndGetScreenPos(_HandleID)
end

---����ͼƬ�ؼ��ĵ���򵭳���Ч��
---@param _HandleID int @ָ��ͼƬ�ؼ��ľ��
---@param _PosX int @����򵭳�����ʱͼƬ�ռ��X����
---@param _PosY int @����򵭳�����ʱͼƬ�ռ��Y����
---@param _Count int @Ч������ʱ�䣬��λΪ���루ms��
---@param _FadeIn bool @ѡ���뻹�ǵ���
---@param _WaitCount int @Ч������ǰ�ĵȴ�ʱ�䣬��λΪ���루ms
---@param _State int @ Ч�����͡� ���뷶ΧΪ0-255�����ֽ���ת��Ϊ�����ƣ����ݶ�����ֵ�������жϡ� �������� ��һλΪ1�е���򵭳���Ч�� �ڶ�λ��ʵ��Ч�����ɺ��� ����λΪ1X�᷽��Ŵ����С������ʱΪ�Ŵ󣬵���ʱΪ��С�� ����λΪ1Y�᷽��Ŵ����С������ʱΪ�Ŵ󣬵���ʱΪ��С��
function GUI:ImageAddTracePoint(_HandleID, _PosX, _PosY, _Count, _FadeIn, _WaitCount, _State)
end

---����ͼƬ�ռ�Ķ�������
---@param _HandleID int @ָ��ͼƬ�ռ�ľ��
---@param _Speed int @ ����ÿ֡��ʱ��������λΪ����
---@param _AnimType int @��������
---1ѭ�����Ŷ���
---2����������ϣ�ͣ���ڵ�һ֡
---3����������ϣ�ͣ�������һ֡
---4���ں���`ImageSetAnimate`�ж����˶���ѭ���������򲥷�ָ�������Ķ�����������Ϻ󣬰�`_AnimCallBackFunc`�����ж���Ķ���ִ�С�
function GUI:ImageSetImageAnim(_HandleID, _Speed, _AnimType)
end

---����ͼƬ�ؼ���ê��λ��
---@param _HandleID int @ָ��ͼƬ�ؼ��ľ��
---@param _AnchorEnable int @�Ƿ����ͼƬ��ê������ ��0 ������ 1 ����
---@param _AnchorPosX int @int ����ê��������λ��
---@param _AnchorPosY int @int ����ê���������λ��
function GUI:ImageSetCenter(_HandleID, _AnchorEnable, _AnchorPosX, _AnchorPosY)
end

---����ͼƬ���ź���ת���Ⱥ�˳��
---@param _GUIHandle int @ ���
---@param _flag bool @ `true`�������ź���ת��`false`������ת������
function GUI:ImageSetTransfromFirstScale(_GUIHandle, _flag)
end

---��Ӵ�����Ч
---@param _Handle int @֧�ſ鴰��ؼ��ľ��
---@param _Info string @ ָ������ؼ�������
---@param _ImageId int @��Ч��ͼƬ��ԴID
---@param _X int @��Ч��Ը��ؼ���ˮƽ�����ϵ�ƫ��
---@param _Y int @ ��Ч��Ը��ؼ��ڴ�ֱ�����ϵ�ƫ��
---@param _Elapse int@��Ч����ʱ���� ����λΪ���룬Ĭ��ֵΪ`100`
---@param count int @ ָ����Ч���Ŵ��� 0 Ĭ��ֵ��һֱѭ��������Ч��
function WndAddEffect(_Handle, _Info, _ImageId, _X, _Y, _Elapse, count)
end

---������Ʒ����ЧͼƬ
---@param _Handle int @ָ����Ʒ��ؼ��ľ��
---@param _Info string @ָ����Ʒ��ؼ�������
---@param _ImgId int @��Ʒ����ЧͼƬ��ID
---@param _Scale float @��ЧͼƬ�����ű���
function RDItemCtrlSetEffectImageID(_Handle, _Info, _ImgId, _Scale)
end

---������Ʒ���Ƿ���ʾƷ�ʱ�����
---@param handle long @ָ����Ʒ��ؼ��ľ��
---@param flag bool @�Ƿ���ʾƷ�ʱ�����
function GUI:RDItemCtrlShowQualityBG(handle, flag)
end

---���ô��������Ĵ����й�������ͼƬ
---@param _Handle int @���
---@param up uint @���������Ϲ����İ�ť��ͼƬ��ԴID
---@param mid uint @����������ͼƬ��ԴID
---@param down uint @���������¹����İ�ť��ͼƬ��ԴID
---@param _BackImageID uint @ ����������ͼƬ��ԴID
function GUI:ScrollWndSetScrollBarImage(_Handle, up, mid, down, _BackImageID)
end

---����ͼƬ�ؼ��������������
---@param _Handle int @ָ��ͼƬ�ؼ��ľ��
---@param _Info string @ ָ��ͼƬ�ռ������
---@param _Flag int @�����������
--- ���κͶ��Σ�
---
--- 0. �����
--- 1. ��Ĭ��ֵ�������λ���Ƿ���ͼƬ�ϣ�����͸���ȣ�
--- 2. �����λ���Ƿ��ڿؼ���Χ��
---
--- H5��
--- 1. ��Ĭ��ֵ�������λ���Ƿ���ͼƬ�ϣ�����͸���ȣ�
--- 2. ���������λ���Ƿ��ڿؼ���Χ��
function ImageSetCheckPoint(_Handle, _Info, _Flag)
end

---���ð�ť���ض�״̬��������ɫ
---@param _HandleID int @ ָ����ť�ؼ��ľ��
---@param _State int @ ָ����ť��״̬ ��
--- - `0` ��ͨ״̬
--- - `1` �����ͣ
--- - `2` ��갴��
--- - `3` ����״̬
---@param _Color uint @ [��ɫֵ](https://tool.173uu.com/#/scriptdocument/0?name=g2652&t=1719559062740)
function GUI:ButtonSetStateTextColor(_HandleID, _State, _Color)
end

---��ȡ����ؼ��Ŀɼ�״̬��ȡ
---@param _Handle int @ָ������ؼ��ľ��
---@param _Info string @ָ������ؼ�������
---@return bool @`true` ָ������ؼ�Ϊ�ɼ�״̬��`false`ָ������ؼ�Ϊ���ɼ�״̬
function WndGetVisibleM(_Handle, _Info)
end

---סУ�๦�ܱ༭��Ŀ����ַ���
---@param _HandleID int@ָ���๦�ܱ༭��ؼ��ľ��
---@param _ControlString string @�����ַ������� Ŀǰ��֧�ֲ���ֵ `"FACE"`
function GUI:RichEditUnRegisterControlString(_HandleID, _ControlString)
end

---סУ�๦�ܱ༭��Ŀ����ַ���
---@param _HandleID int@ָ���๦�ܱ༭��ؼ��ľ��
---@param _ControlString string @�����ַ������� Ŀǰ��֧�ֲ���ֵ `"FACE"`
function GUI:RichEditRegisterControlString(_HandleID, _ControlString)
end

---��ն๦�ܱ༭����ı�����
---@param _HandleID int @���
function GUI:RichEditClear(_HandleID)
end

---����ָ������ؼ��Ļ�ɫ����
---@param handle int @ָ������ؼ��ľ��
---@param blendtype int ��ɫ����ֵ��1-6��
function GUI:WndSetBlendType(handle, blendtype)
end

---����ͼƬ�ռ��͸����
---@param _HandleID int @���
---@param _Alpha uint @ ͸����
function GUI:ImageSetAlpha(_HandleID, _Alpha)
end

---��ȡ��ť�Ƿ�Ϊ�����ҳǩ��ť
---@param _HandleID int @ָ����ť�ؼ��ľ��
---@return bool @��ť�Ƿ�Ϊ����״̬
function GUI:ButtonGetIsActivePageBtn(_HandleID)
end

---�����б���й�������ͼƬ
---@param _HandleID int @ָ���б��ľ��
---@param _Up uint @���������ϰ�ťͼƬ��ԴID
---@param _Mid uint @��������ͼƬ��ԴID
---@param _Down uint @���������°�ťͼƬ��ԴID
---@param _BackImageID uint  @����������ͼƬ��ԴID
function GUI:ListBoxSetScrollBarImage(_HandleID, _Up, _Mid, _Down, _BackImageID)
end

---��ȡ���ڴ�С
---@param _Handle int @�ƶ�����ؼ��ľ��
---@param _Info string @ ָ������ؼ�������
---@return bool @ `true` ��ȡ�ɹ��� `fasle`��ȡʧ�� �˺������ز����ɹ���ʧ�ܡ�������ɹ������ȡ���ڴ�С����ֵ�洢��LuaRet�С�
--- - `LuaRet[1]`���ڵĿ�ȣ���λΪ���أ�px����
--- - `LuaRet[2]`���ڵĸ߶ȣ���λΪ���أ�px����
function WndGetSizeM(_Handle, _Info)
end

---��ȡ�б���е���Ŀ����
---@param _HandleID int @ָ���б��ؼ��ľ��
---@return int @��Ŀ�ĸ���
function GUI:ListBoxGetLineCount(_HandleID)
end

---�����б���ѡ����Ŀʽ
---@param _HandleID int @ָ���б��ؼ��ľ��
---@param _LineIdx int @��Ŀ���������� ��������`0`��ʼ
---@param _ColIdx int @��Ŀ������������������`0`��ʼ
function GUI:ListBoxSetCurSel(_HandleID, _LineIdx, _ColIdx)
end

---��ȡ�б��ѩ����Ŀ���к�
---@param _HandleID int
---@return int @ѡ����Ŀ���к�
function GUI:ListBoxGetCurSelCol(_HandleID)
end

---��ȡ�б����ָ��������һ�е���Ŀ����
---@param _HandleID int
---@param _LineIdx int
---@return string
function GUI:ListBoxGetLineString(_HandleID, _LineIdx)
end

---��ȡָ�����͵����а�����
---@param type uint8 @���а�����
---@return table @���а���Ϣ
function lualib:GetTopList(type)
end

--
function GUI:ImageSetClipRect(_HandleID, _StartX, _EndX, _StartY, _EndY)
end

---���ð�ť����ʾ�Ƕ�
---@param _Handle long ָ����ť�ؼ��ľ��
---@param _IsRotate boolean
---@param _Roation int
function GUI:ButtonSetRotate(_Handle, _IsRotate, _Roation)
end

---�ڴ���ؼ�����Ӷ�ʱ��
---@param _HandleID int
---@param _ID int
---@param _Elapse int
---@param _ScriptHandle string
---@return bool
function GUI:WndAddTimer(_HandleID, _ID, _Elapse, _ScriptHandle)
end

--- �ڴ���ؼ�����Ӷ�ʱ������չ��
---@param _HandleID int
---@param _ID int
---@param _Elapse int
---@param _ScriptHandle string
---@param _Param string
---@return bool
function GUI:WndAddTimerEx(_HandleID, _ID, _Elapse, _ScriptHandle, _Param) end

---����GUID�����Ʒ������
---@param _Handle number
---@param _Info string
---@param _ItemGUID string
function GUI:ItemCtrlSetGUIDataByGUID(_Handle, _Info, _ItemGUID)
end

---���ð�ť����ʾ��ͼƬ����
---@param handle int @ָ����ť�ؼ��ľ��
---@param scale_x float @ X �᷽���ϵı�����Ĭ��ԭͼ��1.0
---@param scale_y float @ Y�᷽���ϵı�����Ĭ��ԭͼ��1.0
function GUI:ButtonSetDrawPostTextureScale(handle, scale_x, scale_y)
end

---���ð�ť�����ű���
---@param _HandleID int @ָ����ť�ؼ��ľ��
---@param _XScale int @ X�����ϵ����ţ�
---@param _YScale int @ Y�����ϵ�����
function GUI:ButtonSetScale(_HandleID, _XScale, _YScale)
end

---�����Ƿ�Ϊ�����ҳǩ��ť
---@param _Handle int @ָ����ť�ؼ��ľ��
---@param _Info string
---@param _Flag bool
function ButtonSetIsActivePageBtn(_Handle, _Info, _Flag)
end

---����ͼƬ�ؼ�����ת������
---@param _HandleID int @ָ��ͼƬ�ؼ��ľ��
---@param _ScaleX int @������ű���
---@param _ScaleY int @�߶����ű���
---@param _Roation int @��ת�ĽǶ�
function GUI:ImageSetTransfromplus(_HandleID, _ScaleX, _ScaleY, _Roation)
end

--- ���ð�ť�Ƿ������ĵ�Ϊê����л���
---@param _Handle int
---@param _DrawCenter bool
function GUI:ButtonSetDrawCenter(_Handle, _DrawCenter)
end

---���б���������Ŀ
---@param _HandleID int @�б��Ŀؼ��ľ��
---@param _Str string @ �ı���Ŀ������
function GUI:ListBoxAddStr(_HandleID, _Str)
end

---���ô���ؼ���Tip����
---@param _HandleID int @ ָ������ؼ��ľ��
---@param _TipInfo string @Tip����
function GUI:WndSetTipInfo(_HandleID, _TipInfo)
end

---������Ʒ��GUIData��������Ʒ��
---@param _Handle int @ָ����Ʒ��ؼ��ľ��
---@param _Info string @ֻ����Ʒ��ؼ�������
---@param _GUIDataHandle int @��Ʒ��GUIData���
---@return bool @true:ok,fasle:no
function RDItemCtrlFillGUIData(_Handle, _Info, _GUIDataHandle)
end

---ע�ᴰ��ؼ����¼��ص���������չ��
---@param _HandleID int @ָ������ؼ��ľ��
---@param _Msg int @�ƶ�����ؼ����¼�ID
---@param _FuncName string @�ص�������
---@param _Param string @Ԥ��Ļص����������������ص������ĵ�5������
---@return bool @true:�ؼ�����,fasle:�ؼ�������
function GUI:WndRegistScriptEx(_HandleID, _Msg, _FuncName, _Param)
end

---���ö๦�ܱ༭���Ƿ���Ա༭
---@param _Handle int @ָ���๦�ܱ༭��ؼ��ľ��
---@param _Info string @ָ���๦�ܱ༭�������
---@param _Flag bool @ �Ƿ���Ա༭��`true`���ԣ�`fasle`������
function RichEditSetEnable(_Handle, _Info, _Flag)
end

---�����ܱ༭������ı�
---@param _Handle int @ָ���๦�ܱ༭��ؼ��ľ��
---@param _Info string @ָ���๦�ܱ༭��ؼ�������
---@param _Text string @�ı�����
function RichEditAppendString(_Handle, _Info, _Text)
end

---��ߴ��ڿؼ�����ʾ�㼶
---@param _HandleID int @���
function GUI:WndAscOrder(_HandleID)
end

---���ô���ؼ��Ƿ���Ӧ�������
---@param _HandleID int @ָ������ؼ��ľ��
---@param _Flag bool @�Ƿ���Ӧ�������
function GUI:WndSetMouseEnableIN(_HandleID, _Flag)
end

---��������ƶ������ϲ�
---@param _HandleID int @�ƶ�����ڵľ��
function GUI:WndBringTopM(_HandleID)
end

---����ͼƬ�Ƿ��ԻҶ���ʾ
---@param _HandleID int @ͼƬ�ؼ��ľ��
---@param _Flag bool @�Ƿ�Ҷ���ʾ
function GUI:ImageSetGray(_HandleID, _Flag)
end

---��������
---�˺��������Ĵ���һ��ֻ��Ϊ�������ã�����ʾ��ͼ��Դ��Ҳ���߱�һЩ�����¹������ȸ߼�����
---@param _ParentHandleID int @�����ھ��
---@param _ID string @�½����ڵ����ƴ�
---@param _ImageID uint @�½����ڵ�ͼƬ��ԴID���˲����������ã�һ������Ϊ0
---@param _X int @�½�����λ�õĺ�����
---@param _Y int @�½�����λ�õ�������
---@param _Order int @�������Ĳ㼶����ֵԽ�󣬴�����ʾԽ��ǰ���˲���ֻ֧�����Σ����κ��Ӵ˲�����
---@return int @�½����ڵľ��
function GUI:WndCreateGUIItem(_ParentHandleID, _ID, _ImageID, _X, _Y, _Order)
end

---��ӿؼ��Ķ���
---@param handle int @ָ������ؼ��ľ��
---@param action string @Json��ʽ�Ķ�������
---������Ϣ�ᱣ����LuaRet��
function GUI:WndAddAction(handle, action)
end

---�Զ���������ؼ���λ�úʹ�С
---�����У�������ݵ�ǰ�û����õķֱ��ʣ���1024��768�ı�ֵ����һ���������ӣ��ٸ��ݴ��������ӵ�������ؼ���λ�úʹ�С��
---@param _HandleID int @ָ������ؼ��ľ��
---@param _ChangePos bool@�Ƿ��������ؼ�λ��
---@param _ChangeSize bool@�Ƿ��������ؼ���С
function GUI:WndSetPosByDeviceSize(_HandleID, _ChangePos, _ChangeSize)
end

---��ȡ��Ʒ�������Ƿ��Զ�����
---@param _HandleID int @ָ����Ʒ��ؼ��ľ��
---@return bool @`true`�Զ�����`false`�ű�����
function GUI:ItemCtrlGetItemDataAutoManager(_HandleID)
end

---��ȡ��Ʒ������Ʒ��GUIData���
---@param _HandleID int
---@return int # ִ�гɹ��򷵻���Ʒ��GUIData��� ִ��ʧ���򷵻� `0`
function GUI:ItemCtrlGetGUIData(_HandleID)
end

---��ȡ�����ӿؼ������ͺ;��
---@param _HandleID int @ָ�����ؼ��ľ��
---@return bool @��ȡ�Ƿ�ɹ�
function GUI:WndGetChildWnd(_HandleID)
end

---��ȡ��ť�Ƿ�Ϊ����ż��ҳǩ��ť
---@param _Handle int @ָ����ť�ؼ��ľ��
---@param _Info string @ָ����ť�ؼ�������
---@return bool @��ť�Ƿ�Ϊ�����ҳǩ��ť
function ButtonGetIsActivePageBtn(_Handle, _Info)
end

---�������οؼ�
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

---ɾ������ؼ������еĶ�ʱ��
---@param _HandleID int @���ھ��
function GUI:WndDelAllTimer(_HandleID)
end

---���ʹ��ڿؼ�����Ⱦ�㼶
---@param _HandleID int @ָ������ؼ��ľ��
function GUI:WndDescOrder(_HandleID)
end

---���¼��㴰�ڴ�С
---@param _HandleID int
function GUI:WndCalSize(_HandleID)
end

---���þŹ���ƴ��ͼƬ
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
---@param _Scale boolean @��ƴ��ʱ���Ź����4���ǳߴ粻�䣨���Ź�������ߴ�С��4���ǵĳߴ磬�����вü��������ಿ�ֻ���ݴ˲������õ�ƴ�ӷ�ʽ����ƴ�ӣ�����˵�����¡�
--- - true����ģʽ��Ϊ����Ĭ��ֵ��:4�����Լ�������������죨�������ţ�����Ӧ���ʺ����ű��κ󲻻�Ӱ��Ч����ͼƬ��Դ��
--- - falseƽ��ģʽ��Ϊ����Ĭ��ֵ����4�����Լ����������ƽ�̣����߲ü�������Ӧ���ʺϲü�ƴ����������󲻻�ͻأ��ͼƬ��Դ��
function GUI:ImageSetAroundImageEx(_HandleID, _LeftUp, _RightUp, _LeftDown, _RightDown, _Mid, _Up, _Down, _Left, _Right,
                                   _Scale)
end

---���ô����Ƿ�ɼ�
---@param _Handle int32
---@param _Info string
---@param _Flag bool
function WndSetVisibleM(_Handle, _Info, _Flag)
end

---�����϶������Ƿ���ʾ͸����
---@param _HandleID int #ָ�����ڿؼ��ľ��
---@param _Flag bool @�϶������Ƿ���ʾ͸����
function GUI:WndSetCascadeOpacity(_HandleID, _Flag)
end

---��ȡ��Ʒ������Ʒ������ֵ
---@param _Handle int @ָ����Ʒ��ؼ��ľ��
---@param _Info string @ָ����Ʒ��ؼ�������
---@param _PropType int @GUIData��������
---@return any @ ��ȡ�ɹ��򷵻���Ʒ��Ӧ���Ե�����ֵ��ʧ���򷵻�0
function RDItemCtrlGetGUIDataPropByType(_Handle, _Info, _PropType)
end

---���ô���Ϊ�����˵�
---@param _HandleID int @ָ������ؼ��ľ��
function GUI:WndSetMobilePopupMenu(_HandleID)
end

---�Ƴ������ӿؼ�
---@param _HandleID int @ �����ھ��
function GUI:WndDlgClear(_HandleID)
end

---���ö๦�ܱ༭�����ı����и�
--- > ���Ҫ���ö๦�ܱ༭�����ı����м�࣬Ҫ��ʹ�ô�api�����иߣ�Ȼ���������ı�
---@param _HandleID int @ָ���๦�ܱ༭��ؼ��ľ��
---@param _Offset int @�и�
function GUI:RichEditSetOffSet(_HandleID, _Offset)
end

---���Ŷ๦�ܱ༭������ݶ���
---@param _HandleID int @ָ���๦�ܱ༭��ؼ��ľ��
---@param flg bool @�Ƿ�ʼ�������ݶ���
---@param filename string @���ݶ���������
function GUI:RichEditPlayBubbleAnim(_HandleID, flg, filename)
end

---���ø�ѡ����ı�����
---@param _HandleID int
---@param _ControlString string
function GUI:CheckBoxSetText(_HandleID, _ControlString)
end

---��ȡ����ؼ����Զ�������
---@param _HandleID int #ָ������ؼ��ľ��
---@param _Key string #��������
---@return string # ָ���Զ������Ե�����ֵ
function GUI:WndGetProperty(_HandleID, _Key)
end

---�������촰���Ƿ��Զ���������
---@param flg bool @
---@param index int @Ƶ��
function CL:SetChatWindowAutoVoiceChat(flg, index)
end

---��ʾ˽��ҳ��
---@param _HandleID int @˽�İ�ť�ľ��
---@param _Name string @˽�ĵ���ҽ�ɫ��
function CL:ChatWindowShowPrivatePage(_HandleID, _Name)
end

---�������ƶ������²�
---@param _HandleID int @ָ�����ڵľ��
function GUI:WndMoveToParentBottom(_HandleID)
end

--- ��ȡ�๦�ܱ༭���б�������ı�
---@param _HandleID int @ ���
---@return string @ ִ�гɹ��򷵻���������ı����� ִ��ʧ���򷵻�`""`
function GUI:RichEditGetSelectClickString(_HandleID)
end

---��Ͽ������Ŀ
---@param _Handle int  @���
---@param _Info string @ ����
---@param _Text string @�ı�����
---@param _Id int  @�����Ŀ��ID
function ComboBoxAddString(_Handle, _Info, _Text, _Id)
end

---��ȡ��Ͽ���ѩ����Ŀ��ID
---@param _HandleID int @ָ����Ͽ�ؼ��ľ��
---@return int @��Ͽ���ѡ����Ŀ��ID
function GUI:ComboBoxGetCurSelectID(_HandleID)
end

---�Ƴ����������������ӿؼ�
---@param WndID int @ָ���������ڵľ��
function GUI:WndScrollWndClear(WndID)
end

---������Ͽ���ѡ�е���Ŀ
---@param _HandleID int @���
---@param _Index int @��Ŀ�� ��0��ʼ
function GUI:ComboBoxSetCurSelect(_HandleID, _Index)
end

---�����Ͽ�ؼ�����
---@param _Handle int @���
---@param _Info string @����
function ComboBoxClear(_Handle, _Info)
end

---��ȡ����ؼ����Զ������
---@param _HandleID int @���
---@return uint @����ִ�гɹ��򷵻��Զ����������ֵ������ִ��ʧ�ܷ���0��
function GUI:WndGetIDParam(_HandleID)
end

--- ���ÿؼ������Ƿ�ʹ�����
---@param _Handle int @�������
---@param _used bool@ �Ƿ�ʹ�����
function GUI:WndSetUseTextGrow(_Handle, _used)
end

---���ö๦�ܱ༭��ı���ͼƬ
---@param _HandleID int @���
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

---��ȡ������ָ�����ڵ�λ��
---@param _HandleID int @ָ������ؼ��ľ��
--- ��ȡ������λ�ô洢��LuaRet�С�
--- `LuaRet[1]`�����꣨X����
--- `LuaRet[2]`�����꣨Y����
function GUI:GetWndMousePos(_HandleID)
end

--- ���ö๦�ܱ༭���ı������С
---@param _HandleID int
---@param _PosX int
---@param _PosY int
---@param _W int
---@param _H int
function GUI:RichEditSetContentRect(_HandleID, _PosX, _PosY, _W, _H)
end

---���ñ༭�����������ַ�����
---@param _HandleID int @�༭��ؼ��ľ��
---@param _MaxCount int @�������������ַ����� ���� �˲���Ϊ0�������Ա༭��ؼ�������ʾ�ֽ�����������
--- - ��û��ʹ�ýӿ����ñ༭���������������ַ�����������κ����ξ�Ĭ�ϱ༭��ؼ��������������ַ�����Ϊ256��
--- - ��ʹ�ô˽ӿڣ����߽ӿ�Lua_EditSetMaxCharNum�����ñ༭���������������ַ���������༭��ؼ��������������ַ�����Ϊ�ýӿ����õ�ֵ��
--- - ���༭��ؼ����ı����ݶ�Ӧ���ַ����������������������ַ�����ʱ������ʾδ�������ֵ��ı����ݡ�
--- - һ�������൱�������ַ���
function GUI:EditSetMaxCharNum(_HandleID, _MaxCount)
end

---��ȡ����ռ�Ŀɼ�״̬
---@param _Handle int @ָ������ռ�ľ��
---@param _Info string @ָ������ռ������
---@return bool @ `true` ָ������ؼ�Ϊ�ɼ�״̬ ,`false` ָ������ؼ�Ϊ���ɼ�״̬
function WndGetVisibleM(_Handle, _Info)
end

---��ȡ����ؼ�������
---@param _HandleID int @ָ������ؼ��ľ��
---@return string @��������
function GUI:WndGetText(_HandleID)
end

---���ô��ڿɼ���
--- > δ���ĵ��ڣ��������ö����
---@param _Handle int32 @ָ������ؼ��ľ��
---@param _Info string @�ض�����ؼ�������
---@param _Flag bool @`true` ����Ϊ�ɼ�״̬ ,`false`����Ϊ���ɼ�״̬
function WndSetVisible(_Handle, _Info, _Flag)
end

---��ȡ����ռ���û��Զ�������
---@param _HandleID int @����ؼ��ľ��
---@param _DataIndex int @�Զ������ݵ����� ��`0`��ʼ����������
function GUI:WndGetUserData(_HandleID, _DataIndex)
end

---��ȡ�ʼ��ĸ���
---@param _Guid string @�ʼ���GUID
---@param _Index int @����������
--- - `1`: ���
--- - `2`��Ԫ��
--- - `3~7`����Ʒ@����������`5`����Ʒ
--- - `8`������
function CL:AttachmentMail(_Guid, _Index)
end

---��ȡ�๦�ܱ༭��������ı�����
---@param _HandleID int @ ָ���๦�ܱ༭��ؼ��ľ����
---@return string @ �๦�ܱ༭�����е��ı����ݡ�
function GUI:RichEditGetAllString(_HandleID)
end

---��ȡ����߶�
---@param _FontName string @��������
---@return int @ָ������ĸ߶�
function CL:GetFontStrHeight(_FontName)
end

--- ��ȡ�๦�ܱ༭�����ı��ؼ��ĸ���
---@param _HandleID int @ָ���๦�� �༭��ؼ��ľ��
---@return int  @ ִ�гɹ��򷵻��ı��ؼ��ĸ��� ִ��ʧ���򷵻�0
function GUI:RichEditGetTextItemCount(_HandleID)
end

---���� ��ť�����Ƿ� �������Ϸ����
--- �˺������ð�ť�����Ƿ����������Ϸ�������� Ĭ������£�����ť���ֳ��ȳ�����ť����ʱ�������޷����������
---@param _HandleID int @ָ����ť�ռ�ľ��
---@param _CanOverflow bool@�Ƿ� ������� `true`���� ��`false`������
function GUI:ButtonSetTextCanOverflow(_HandleID, _CanOverflow)
end

---���û�������ǰ�İٷֱ�
--- > 2D ���β�����
---@param _HandleID int @ָ���������ռ�ľ��
---@param _percent int @ָ���ٷֱȵ���ֵ
function GUI:SlideSetPercent(_HandleID, _percent)
end

---��ȡ��������ǰ�İٷֱ�
---@param _HandleID int @ָ���������ؼ��ľ��
---@return int @��������ǰ����λ�õİٷֱ���ֵ
function GUI:SlideGetPercent(_HandleID)
end

---�����������ؼ�
---@param _ParentHandleID int @�����ھ��
---@param _pWndID string @�ؼ�����
---@param _backImage uint @����ͼƬ��ԴID
---@param _slideImage uint @ǰ��ͼƬ��ԴID
---@param _thumbImage uint @�����ͼƬ��ԴID
---@param _PosX int @�½�������λ�õĺ�����
---@param _PosY int @�½�������λ�õ�������
---@param _SizeX int @�½��������Ŀ��
---@param _SizeY int @�½��������ĸ߶�
---@return int @�����ɹ��򷵻��½��������ؼ��ľ��������ʧ�ܷ���0
function GUI:SlideCreate(_ParentHandleID, _pWndID, _backImage, _slideImage, _thumbImage, _PosX, _PosY, _SizeX, _SizeY)
end

---����ָ�����͵Ĵ���
---@param _Handle int @�����ھ��
---@param _Info string @�����ڵ� ����
---@param _WindowType int @�������͵�����ֵ
---@return bool @`true`ִ�гɹ���`false`ִ��ʧ��
function WndActiveItemWindow(_Handle, _Info, _WindowType)
end

---��ָ�����͵���Ʒ����
---@param _Handle int @ָ�����ڿռ�ľ��
---@param _Info string  @ ָ������ؼ�������
---@param _WindowType int @��������
---@param _LuaFunc_GetGUIDList string @��ȡ��Ʒ������Ҫ��ʵ����Ʒ�ĺ����ӿ���
---@return bool @`true`ִ�гɹ���`false`ִ��ʧ��
--- > ������ɹ�����ȡ�ĵ�ǰ������ǰ����Ʒ���ڵ�ID�����ͣ�`int`���洢��ȫ�ֱ���`LuaRet`�С�
function WndOpenItemWindow(_Handle, _Info, _WindowType, _LuaFunc_GetGUIDList)
end

--- �����Ʒ�������е���Ʒ����
---@param _Handle int @ָ����Ʒ��ռ�ľ��
---@param _Info string @ָ����Ʒ�������
---@return bool @
function RDItemCtrlClearGUIData(_Handle, _Info)
end

---���ñ༭����ı�����
---@param _Handle int  # �ö��༭��ؼ��ľ��
---@param _Info string # �ö��༭��ؼ�������
---@param _Text string # �ı�����
function EditSetTextM(_Handle, _Info, _Text) end

---���ñ༭���ı���ɫ
---@param _Handle int @ָ���༭��ؼ��ľ��
---@param _Info string # �ö��༭��ؼ�������
---@param _Color uint # �ı���ɫ��������μ�**��ɫ�ַ���**����
function EditSetTextColor(_Handle, _Info, _Color) end

---����ͼƬ�Ƿ���ת
---@param _HandleID int # ָ��ͼƬ�ؼ��ľ��
---@param _FlipX bool # ˮƽ��ת
---@param _FlipY bool # ��ֱ��ת
function GUI:ImageSetFlip(_HandleID, _FlipX, _FlipY) end

---��ȡͼƬ�ռ��ͼƬ��ԴID
---@param _HandleID int @ָ��ͼƬ�ؼ��ľ��
---@return int @ ��ȡ�ɹ��򷵻�ָ��ͼƬ�ؼ���ͼƬ��ԴID , ��ȡʧ���򷵻�`0`
function GUI:ImageGetImageID(_HandleID)
end

---��ȡͼƬ�ؼ����������������
---���β�����
---@param _HandleID int @ָ��ͼƬ�ؼ��ľ��
---@return int @���ؼ����������
function GUI:ImageGetCheckPoint(_HandleID) end

---���ø�ѡ���ı��Ƿ�ֱ����
---@param handle int @ ���
---@param is_center_text boolean @�Ƿ�ֱ֮�У�
--- - `true` :��ֱ����
--- - `false` : ������
function GUI:CheckBoxSetCenterTextVertically(handle, is_center_text) end

---ɾ���б����ָ���ı�Ŀ
---@param _HandleID int @���
---@param _LineIdx int @Ҫɾ������Ŀ������������`0`��ʼ
function GUI:ListBoxDelString(_HandleID, _LineIdx)
end

---����ȫ���˵���Ŀ�Ƿ�ɼ�
---�˵����������ͨ��ȫ�ֱ���`Temporary`�����ݡ�
---@param _Flag boolean
---@return boolean
function GUI:MenuSetAllItemVisiable(_Flag) end

---��ȡ�˵�
---@param _HandleID any
function GUI:MenuGetMenu(_HandleID) end

---���ÿؼ������Ƿ�ʹ�����
---�Ľӿ��ѹ��ڣ���ʹ�ã�`GUI:WndSetUseTextGrow(_Handle,_used)`
---@param _Handle int # ���
---@param _used boolean # �Ƿ���� `true` ʹ����� �� `false` ���������
function GUI:EditSetUseTextGrow(_Handle, _used) end

---�������ؼ����¼��ص�����
---@param _HandleID int #  ָ������ؼ��ľ��
---@param _Msg int # ָ������ؼ����¼�ID
---@return bool # `true` �ؼ����ڣ� `false`�ؼ�������
function GUI:WndClearScript(_HandleID, _Msg)
end

---���ñ༭���Ƿ�Ϊ ���ֱ༭��
---@param _HandleID int
---@param _Flag bool
function GUI:EditSetBNumber(_HandleID, _Flag)
end

---��ȡ��Ʒ������Ʒ������ֵ
---@param _HandleID int # ָ����Ʒ��ؼ��ľ��
---@param _PropType GUIDataPropType # GUIData��������
---@return boolean
--- >  �˺������ز����ɹ���ʧ�ܡ�������ɹ������ȡ����Ʒ��GUIData����ֵ�洢��ȫ�ֱ���LuaRet�С�
function GUI:ItemCtrlGetGUIDataPropByType(_HandleID, _PropType)
end

--- ���ñ༭��ؼ����ı������ɫ
---@param _HandleID int #ָ���༭��ؼ��ľ��
---@param _Color uint # �ı��������ɫ
function GUI:EditSetTextGrowColor(_HandleID, _Color) end

--- ��ȡ��Ʒ�Զ����ַ�������
---@param _ItemEntityHandle int  #��Ʒʵ����
---@param _ItemCustomKey string �Զ������������
---@return string
function CL:GetItemEntityCustomVarStr(_ItemEntityHandle, _ItemCustomKey) end

--- ���ô���ؼ�������
---@param _HandleID int #���
---@param _NewId string # Ҫ���õĴ���ؼ�����
function GUI:WndSetIDM(_HandleID, _NewId) end

--- ���ö๦�ܱ༭���Ƿ�����������Ⱦ�ı�
---@param _HandleID int # ���
---@param _Enable bool # �Ƿ�����������Ⱦ�ı�
function GUI:RichEditEnableInvalidateData(_HandleID, _Enable) end

--- ���ñ༭���п�����������ֵ
---@param _HandleID int
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
function GUI:EditSetMaxNumber(_HandleID, _Type, _Number) end

--- ���ñ༭��Ĺ��λ��
---@param _HandleID int
---@param _CurSorPos int # ���λ�� ���˲�������Ϊ`n`���������ʾ�ڵ�`n`���ַ����档
function GUI:EditSetCurSorPos(_HandleID, _CurSorPos) end

--- ���ñ༭����Ҫѡ������ݵ���ʼλ��
---@param _HandleID int
---@param select_pos int Ҫѡ������ݵ���ʼλ�� ,���˲�������Ϊ`n`����ӵ�`n+1`���ַ���ʼѡ��
function GUI:EditSetSelectPos(_HandleID, select_pos) end

---CheckBoxGetAutoChange
---@param _HandleID int
---@return bool # `true`  �ɸı䣬 false���ɸı�
function GUI:CheckBoxGetAutoChange(_HandleID) end

--- ���ö๦�ܱ༭��ؼ����ı��������ɫ
---@param _HandleID int
---@param _Color uint
function GUI:RichEditSetTextGrowColor(_HandleID, _Color) end

--- ����ָ���๦�ܱ༭���������ֵ���ɫ
---@param _HandleID int
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
---@param _ColorStr string
function GUI:RichEditSetLinkColor(_HandleID, _Flag, _ColorStr) end

--- ɾ������ؼ���ָ���Ķ�ʱ��
---@param _HandleID int
---@param _ID int
---@return bool #ִ�н��
function GUI:WndDelTimer(_HandleID, _ID) end

--- ɾ������ؼ����Զ�������
---@param _HandleID int
---@param _Key string #��������
function GUI:WndDelProperty(_HandleID, _Key) end

--- ���ð�ť�Ƿ�Ϊ����״̬
---@param _HandleID int
---@param _Flag boolean
function GUI:ButtonSetIsActiveBtn(_HandleID, _Flag) end

--- ����JSON�ַ��������Ʒ����Ʒ
---@param _HandleID int
---@param _JsonString string #Json�ַ���
function GUI:ItemCtrlSetJson(_HandleID, _JsonString) end

--- ���ñ༭�����ı����м��
---@param _HandleID int # ָ���༭��ؼ��ľ��
---@param _Offset int # �м�࣬��λΪ��`px`��
function GUI:EditSetOffSet(_HandleID, _Offset) end

--- ���ô���Ϊ�����˵�
---@param _HandleID int #ָ������ؼ��ľ��
function GUI:WndSetPopupMenu(_HandleID) end

--- ����ͼƬ�ؼ���ɫ
---@param _HandleID int # ָ��ͼƬ�ؼ��ľ��
---@param _ImageColor uint # ָ��ͼƬ�ؼ�����ɫ
function GUI:ImageSetColor(_HandleID, _ImageColor) end

--- ������Ͽ��б༭��Ĵ�С
---@param _HandleID int
---@param _Width int
---@param _Height int
function GUI:ComboBoxSetEditSize(_HandleID, _Width, _Height) end

--- ������Ͽ�ؼ��̶������������߶�
---@param _HandleID int
---@param _Length int # ��λΪ����
function GUI:ComboBoxSetFixListLength(_HandleID, _Length) end
