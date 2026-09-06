local player = game:GetService("Players").LocalPlayer

local function modifyTool(tool)
    local setting = tool:FindFirstChild("ACS_Settings")
    if not setting then return end
    local cfg = require(setting)
    cfg.Ammo = 999999999
    cfg.MaxStoredAmmo = 999999999
    cfg.AmmoInGun = 999999999
    cfg.StoredAmmo = 999999999
    cfg.ShootRate = 999999999999
    cfg.Damage = 9999999
    cfg.MinDamage = 9999999
    if cfg.HeadDamage then
        cfg.HeadDamage[1] = 9999999
        cfg.HeadDamage[2] = 9999999
    end
    if cfg.TorsoDamage then
        cfg.TorsoDamage[1] = 9999999
        cfg.TorsoDamage[2] = 9999999
    end
    if cfg.LimbDamage then
        cfg.LimbDamage[1] = 9999999
        cfg.LimbDamage[2] = 9999999
    end
    cfg.MinSpread = 0
    cfg.MaxSpread = 0
    cfg.BulletPenetration = 999
    cfg.RecoilPowerStepAmount = 0
    cfg.MaxRecoilPower = 0
    cfg.MinRecoilPower = 0
    cfg.WalkMult = 1
    cfg.Bullets = 1
    cfg.camRecoil = {0, 0, 0, 0, 0, 0}
    cfg.gunRecoil = {0, 0, 0, 0, 0, 0}
    print("已修改: " .. tool.Name)
end

for _, tool in ipairs(player.Backpack:GetChildren()) do
    if tool:IsA("Tool") then modifyTool(tool) end
end

local char = player.Character
if char then
    for _, tool in ipairs(char:GetChildren()) do
        if tool:IsA("Tool") then modifyTool(tool) end
    end
end