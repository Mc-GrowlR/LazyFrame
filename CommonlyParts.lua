CL:Log("���ز���")

--#region ͨ�ú���

function OnCloseBtn(_Handle)
    GUI:WndClose(GUI:WndGetParentM(_Handle))
end

function GetBracket(str)
    return SetStyleColor("��", "��") .. str .. SetStyleColor("��", "��")
end

--#endregion

--#region ����

function NewWnd(Parent, Name, Img, PosX, PosY)
    return Wnd:Create(Parent, Name, Img, PosX, PosY)
end

function NewMainWnd(Parent, Name, Img, PosX, PosY)
    return Wnd:CreateMainWnd(Parent, Name, Img, PosX, PosY)
end

--#endregion


--#region ��ť

---�½���ť�ؼ�
---@param Parent Parent
---@param Name string
---@param Img int
---@param PosX int
---@param PosY int
---@return Button
function NewButton(Parent, Name, Img, PosX, PosY)
    return Button:Create(Parent, Name, Img, PosX, PosY)
end

---�½��رհ�ť�ؼ�
---@param Parent Parent
---@param Img int
---@param PosX int
---@param PosY int
---@return Button
function NewClose(Parent, Img, PosX, PosY)
    local btn1 = Button:Create(Parent, "CloseBtn", Img, PosX, PosY)
    btn1:AddRe(RDWndBaseCL_mouse_lbClick, "OnCloseBtn")
    return btn1
end

--#endregion

--#region ��Ʒ��

---������Ʒ��
---@param Parent Parent
---@param Name string
---@param ImgID int?
---@param _PosX int?
---@param _PosY int?
---@param _SizeX int?
---@param _SizeY int?
---@return ItemCtrl
function NewItem(Parent, Name, ImgID, _PosX, _PosY, _SizeX, _SizeY)
    return ItemCtrl:Create(Parent, Name, ImgID, _PosX, _PosY, _SizeX, _SizeY)
end

--#endregion

--#region �༭��

--#region �ص�����

function DoubleLBClick(_Handle)
    GUI:EditSetSelectPos(_Handle, 0)
    GUI:EditSetCurSorPos(_Handle, 100)
end

function EditChangeStr(_Handle)
    CL:Log("" .. GUI:EditGetTextM(_Handle))
end

--#endregion

function NewEdit(Parent, Name, PosX, PosY, SizeX, SizeY)
    return Edit:New { Parent = Parent, Name = Name, PosX = PosX, PosY = PosY, SizeX = SizeX, SizeY = SizeY }
end

function NewInput(Parent, Name, PosX, PosY, SizeX, SizeY)
    local Img1 = NewImg(Parent, Name, 0, PosX, PosY)
    Img1:SetWndSize(SizeX, SizeY)
    GUI:ImageSetAroundImage(Img1:GetHandle(), 1900510026, 1900510027, 1900510028, 1900510029, 1900510031, 1900510030,
        1900510032, 1900510033, 1900510034)
    local edit1 = NewEdit(Img1, "Input", 5, 5, SizeX ~= nil and SizeX - 10 or nil, SizeY ~= nil and SizeY - 10 or nil)
    edit1:AddRe(RDWndBaseCL_mouse_lbDbClick, "DoubleLBClick")
    edit1:AddRe(RDWnd2DEditCL_str_change, "EditChangeStr")
    return { Img1, edit1 }
end

function NewEditStatic(Parent, Name, PosX, PosY, SizeX, SizeY)
    return Edit:NewStatic { Parent = Parent, Name = Name, PosX = PosX, PosY = PosY, SizeX = SizeX, SizeY = SizeY }
end

--#endregion

--#region ���ı���

function NewRichEdit(Parent, Name, PosX, PosY, SizeX, SizeY)
    return RichEdit:New { Parent = Parent, Name = Name, PosX = PosX, PosY = PosY, SizeX = SizeX, SizeY = SizeY }
end

function NewRichEditStatic(Parent, Name, PosX, PosY, SizeX, SizeY)
    return RichEdit:NewStatic { Parent = Parent, Name = Name, PosX = PosX, PosY = PosY, SizeX = SizeX, SizeY = SizeY }
end

--#endregion

--#region �½�ͼƬ���

function NewImg(Parent, Name, Img, PosX, PosY)
    return Image:Create(Parent, Name, Img, PosX, PosY)
end

--- �½�����
function NewImg1(Parent, Name, Img, PosX, PosY)
    local Img1        = Image:New { Parent = Parent, Name = "TitleBack" .. ((Name ~= "" or Name ~= nil) and Name or ""), PosX = PosX, PosY = PosY, ImgID = 0 }
    local Img1Sub1    = Image:New { Parent = Img1, Name = "111", ImgID = 1650000214, PosY = 5 }
    local Img1Sub2    = Image:New { Parent = Img1, Name = "222", ImgID = 1650000218, }
    local Img1Sub3    = Image:Create(Img1, "333", Img, 214 / 2, 17)
    Img1Sub3.IsCenter = true
    local Img1Sub3    = Image:New { Parent = Img1, Name = "444", ImgID = 1650000221, PosX = 136 + 7, PosY = 14 }
    Img1Sub3:SetTransfrom(8000, 8000, 0)
    local Img1Sub4 = Image:New { Parent = Img1, Name = "555", ImgID = 1650000221, PosX = 6, PosY = 14 }
    Img1Sub4:SetTransfrom(8000, 8000, 0)
    Img1Sub4:SetFlip(true, false)
    local Img1Sub5 = Image:New { Parent = Img1, Name = "666" }
    local Img1Sub6 = Image:New { Parent = Img1, Name = "777", ImgID = 1650000342, PosX = 0, PosY = 32 }
    Img1Sub6:SetTransfrom(9000, 10000, 0)
    return Img1
end

-- ���ⱳ��
function NewImg2(Parent, Name, Img, PosX, PosY, SizeX, SizeY)
    local Img1 = Image:Create(Parent, "TitleBackAr" .. ((Name ~= "" or Name ~= nil) and Name or ""), 0, PosX, PosY)
    Img1:SetWndSize(SizeX, SizeY)
    Img1:SetAroundImageEx(1650100100)
    return Img1
end

--
function NewImg3(Parent, Name, PosX, PosY, Num)
    local wnd1 = Wnd:Create(Parent, Name, 0, PosX, PosY)
    for i = 1, Num do
        local Img = Image:Create(wnd1, Name .. i, 1650000373, 0, (i - 1) * 52)
    end
    return wnd1
end

-- �½�����
function NewImg4(Parent, Name, Img, PosX, PosY)
    local Img1     = Image:New { Parent = Parent, Name = "TitleSub" .. ((Name ~= "" or Name ~= nil) and Name or ""), ImgID = Img, PosX = PosX, PosY = PosY }
    local Img4Sub1 = Image:New { Parent = Img1, Name = "111", ImgID = 1650000088, PosX = 29, PosY = 0 }
    Img4Sub1:SetTransfrom(8000, 8000, 0)
    Img4Sub1:SetFlip(true, false)
    local Img4Sub2 = Image:New { Parent = Img1, Name = "222", ImgID = 1650000088, PosX = -72, PosY = 0 }
    Img4Sub2:SetTransfrom(8000, 8000, 0)
    return Img1
end

--- �½��Ҳ౳��
function NewImg5(Parent, Name, Img, PosX, PosY)
    local RightImgBack = Image:New { Parent = Parent, Name = "TitleAndBack" .. ((Name ~= "" or Name ~= nil) and Name or ""), PosX = PosX, PosY = PosY, ImgID = 1650000217 }
    local Img3Sub1     = Image:New { Parent = RightImgBack, Name = "111", ImgID = 1650000214, PosY = 5 }
    local Img3Sub2     = Image:New { Parent = RightImgBack, Name = "222", ImgID = 1650000218, }
    local Img3Sub2     = Image:New { Parent = RightImgBack, Name = "333", ImgID = Img, PosX = 111, PosY = 19 }
    Img3Sub2.IsCenter  = true
    local Img3Sub3     = Image:New { Parent = RightImgBack, Name = "444", ImgID = 1650000221, PosX = 136 + 7, PosY = 14 }
    Img3Sub3:SetTransfrom(8000, 8000, 0)
    local Img3Sub4 = Image:New { Parent = RightImgBack, Name = "555", ImgID = 1650000221, PosX = 6 + 7, PosY = 14 }
    Img3Sub4:SetTransfrom(8000, 8000, 0)
    Img3Sub4:SetFlip(true, false)
    local Img1Sub5 = Image:New { Parent = RightImgBack, Name = "666" }
    local Img1Sub6 = Image:New { Parent = RightImgBack, Name = "777", ImgID = 1650000342, PosX = 0, PosY = 32 }
    Img1Sub6:SetTransfrom(9000, 10000, 0)

    return RightImgBack
end

--#endregion
