if SERVER then
    include("admin_taptp/init.lua")
    AddCSLuaFile("admin_taptp/cl_init.lua")
end

if CLIENT then
    include("admin_taptp/cl_init.lua")
end