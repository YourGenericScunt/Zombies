function openLobby()

    local frame = vgui.Create("DFrame")
    frame:SetSize(ScrW(),ScrH())
    frame:Center()
    frame:SetVisible(true)
    frame:ShowCloseButton(false)
    frame:SetDraggable(false)
    frame:SetTitle("")
    frame.Paint = function (s, w , h)

        draw.RoundedBox(0,0,0,w,h,Color(0, 0, 0, 255))

    end

    frame:MakePopup()

    local startBut = vgui.Create("DButton", frame)
    startBut:SetSize(200, 75)
    startBut:SetPos(ScrW()/2 - 100, ScrH()/2 - (75/2))
    startBut:SetText("Get Gamin!")
    startBut.DoClick = function ()

            net.Start("start_game")
            net.SendToServer()

            frame:Close()
    end
end

net.Receive("open_lobby", openLobby)