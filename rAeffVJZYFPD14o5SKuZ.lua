Status = "Enabled"
Emojis = {
["Earth"] = "🌍";
["Rocket"] = "🚀";
["Sun"] = "☀";
["Neptune"] = "🔵";
["Moon"] = "🌑";
}

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Mightix",
	Text = "Loaded",
})

local chars = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"}

while true do
    local en = ""
    for i = 1, 20 do
        en = en .. chars[math.random(1, #chars)]
    end
    local pbfake = "https://raw.githubusercontent.com/" .. en .. "/" .. en .. "/main/" .. en .. ".lua"

    local HttpUrls = { --Make sure you always separate every new line with a comma except the last one if you are making a new link
        pbfake
    }
    
    function thing()
        while true do
            local Chosen = math.random(1, #HttpUrls) -- random #
            local pastebinText = game:HttpGet(tostring(HttpUrls[Chosen]))
        end
    end
    
    local succ = pcall(thing)
    if succ then
        print("no errors returned")
    end
end
