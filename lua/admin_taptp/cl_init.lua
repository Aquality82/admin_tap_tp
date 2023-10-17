if not file.Exists("admintaptp_keybind.txt", "DATA") then
    file.Write("admintaptp_keybind.txt", ".")
end

concommand.Add("cursortp_setbind", function(ply, cmd, args)
    file.Write("admintaptp_keybind.txt", string.sub(string.lower(args[1]), 1, 1))
end)

hook.Add("PlayerButtonDown", "aqua_detecttpbutton", function(ply, button)
    if (IsFirstTimePredicted()) then
        if button == input.GetKeyCode(file.Read("admintaptp_keybind.txt", "DATA")) then
            net.Start("aqua_makeplayertp")
            net.SendToServer()
        end
    end
end)