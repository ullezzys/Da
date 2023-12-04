local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Test by Bybsa", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "ESP",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "ESP"
})

Tab:AddToggle({
	Name = "This is a toggle!",
	Default = false,
	Callback = function(Value)
		while wait(0.5) do
            for i, childrik in ipairs (workspace: GetDescendants()) do
              if childrik: FindFirstChild("Humanoid") then
                if not childrik: FindFirstChild("EspBox") then
                  if childrik ~= game. Players.LocalPlayer.Character then
                    local esp = Instance.new("BoxHandleAdornment", childrik)
                    esp. Adornee = childrik
                    esp. ZIndex = 0
                    esp.Size = Vector3.new(4, 5, 1)
                    esp. Transparency = 0.65
          esp.Color3 = Color3.fromRGB(255,48,48)
                    esp.AlwaysOnTop = true
                    esp.Name = "EspBox"
                  end
                end
              end
            end
          end
	end    
})
CoolToggle:Set(true)

OrionLib:Init()
