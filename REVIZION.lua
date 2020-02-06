--REVIZION FE ADMIN SCRIPT
KEY = "d7369f7734ae00a95796f7abe3f56ad7" --Change me daily!
titletext = "REVIZION BY SPARKSAMMY"
themesong = "1848081970"
--BY SPARKSAMMY, DO NOT EDIT BELOW
themesong = "rbxassetid://" .. themesong
admin = game.Players.LocalPlayer
l = game.Lighting
w = game.Workspace
c = game.Players.LocalPlayer.Character
gui = admin.PlayerGui

if string.reverse(string.reverse(string.reverse(string.reverse(string.reverse(string.reverse(string.reverse(string.reverse(string.reverse(string.reverse(KEY)))))))))) == game:HttpGet("http://pureip.ilikema.ga/key.php?", true) or KEY == "iamnotaskid" then
blur = Instance.new("BlurEffect", l)
theme = Instance.new("Sound", w)
theme.SoundId = themesong
theme.Volume = 1
theme:Play()
textHolder = Instance.new("ScreenGui", gui)
textLabel = Instance.new("TextLabel", textHolder)
textLabel.Size = UDim2.new(1,0,1,0)
textLabel.Position = UDim2.new(0,0,0,0)
textLabel.TextScaled = true
textLabel.Font = Enum.Font.SciFi
textLabel.BackgroundTransparency = 1
textLabel.BorderSizePixel = 0
textLabel.Text = titletext
wait(5)

for count = 0,string.len(titletext) do
    textLabel.Text = titletext:sub(count, count * -1)
	wait(.1)
end

textLabel:Destroy()
textHolder:Destroy()
blur:Destroy()
theme:Stop()
wait(.05)
theme:Destroy()

function try()
	admin.Chatted:connect(function(msg)
		msg = string.lower(msg)
		if string.match(msg, "$byebye") then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/sparksammy/SparksammyREVIZIONAdmin/master/FE-BYEBYE", true))()
		elseif string.match(msg, "$1p") then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/sparksammy/SparksammyREVIZIONAdmin/master/FE-1P", true))()
		elseif string.match(msg, "$3p") then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/sparksammy/SparksammyREVIZIONAdmin/master/FE-3P", true))()
		elseif string.match(msg, "$kill") then
			_G.REVIZIONVAR = string.gsub(msg, "$kill ", "")
			loadstring(game:HttpGet("https://raw.githubusercontent.com/sparksammy/SparksammyREVIZIONAdmin/master/FE-KILL", true))()
		elseif string.match(msg, "$ws") then
			ws = string.gsub(msg, "$ws ", "")
			c.Humanoid.WalkSpeed = ws
		elseif string.match(msg, "$goto") then
			plr = string.gsub(msg, "$goto ", "")
			c:MoveTo(game.Workspace[plr].HumanoidRootPart.Position)
		elseif string.match(msg, "$jp") then
			jp = string.gsub(msg, "$jp ", "")
			c.Humanoid.JumpPower = jp
		elseif string.match(msg, "$creeper") then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/sparksammy/SparksammyREVIZIONAdmin/master/FE-CREEPER", true))()
		elseif string.match(msg, "$infect") then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/sparksammy/SparksammyREVIZIONAdmin/master/FE-INFECTME", true))()
		elseif string.match(msg, "$breakme") then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/sparksammy/SparksammyREVIZIONAdmin/master/FE_BREAKCHAR", true))()
		elseif string.match(msg, "$noise") then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/sparksammy/SparksammyREVIZIONAdmin/master/FE-NOISE", true))()
		elseif string.match(msg, "$ff") then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/sparksammy/SparksammyREVIZIONAdmin/master/FE-FF", true))()
		elseif string.match(msg, "$unff") then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/sparksammy/SparksammyREVIZIONAdmin/master/FE-UNFF", true))()
		elseif string.match(msg, "$noclean") then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/sparksammy/SparksammyREVIZIONAdmin/master/FE-NOTOOLCLEAN", true))()
		elseif string.match(msg, "$blockhead") then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/sparksammy/SparksammyREVIZIONAdmin/master/FE-BLOCKHEAD", true))()
		elseif string.match(msg, "$explorer") then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/sparksammy/SparksammyREVIZIONAdmin/master/FE-EXPLORER", true))()
		elseif string.match(msg, "$funny") then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/sparksammy/SparksammyREVIZIONAdmin/master/FE-FUNNY", true))()
		elseif string.match(msg, "$blockspam") then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/sparksammy/SparksammyREVIZIONAdmin/master/SPAM_PARTS", true))()
			_G.spamparts = true
		elseif string.match(msg, "$stopBlockSpam") then
			_G.spamparts = false
		elseif string.match(msg, "$troller") then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/sparksammy/SparksammyREVIZIONAdmin/master/Troller_FE_For_R6.txt", true))()
		elseif string.match(msg, "$reviz") then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/sparksammy/SparksammyREVIZIONAdmin/master/FE_REVIZ", true))()
		elseif string.match(msg, "$thanos-ub") then
			warn("PATCHED")
		elseif string.match(msg, "$nnzone") then
			if game.PlaceId ~= 155615604 then
				warn("ERROR: Only for Prison Life place id #155615604")
			else
				loadstring(game:HttpGet("https://raw.githubusercontent.com/sparksammy/SparksammyREVIZIONAdmin/master/FE-NNZONE", true))()
			end
		end
		end)
end
coroutine.resume(coroutine.create(try))
while wait(.01) and c.Humanoid.Health == 0 do
	wait(7)
	coroutine.resume(coroutine.create(try))
end
end
