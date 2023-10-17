util.AddNetworkString("aqua_makeplayertp")

net.Receive("aqua_makeplayertp", function(len, ply)
    if (IsValid(ply) and ply:IsPlayer()) then
        if ply:GetMoveType() == 8 then
            local traced = ply:GetEyeTrace()
            local hitpos = traced.HitPos 

            ply:SetPos(hitpos)
        end
    end
end)