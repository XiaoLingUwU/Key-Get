local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Key = "123456" ---你脚本的卡密

local function onSuccess()
    print("功能加载完成")
    XiaoLing = "By：小凌" loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoLingUwU/XiaoLing-KeySystemV3-------Xiao-Yun--------/main/%E5%B0%8F%E5%87%8CXSC%E5%90%8C%E6%AC%BE%E5%8D%A1%E5%AF%86%E7%B3%BB%E7%BB%9F.Lua"))("冬凌你好")
end

local function onFail()
    OrionLib:MakeNotification({
        Name = "提示",
        Content = "验证失败请重新输入",
        Duration = 5
    })
end

local function verifyKey(input)
    if input == Key then
        OrionLib:MakeNotification({
            Name = "提示",
            Content = "验证成功正在加载中...",
            Duration = 5
        })
        wait(5)
        OrionLib:Destroy()
        onSuccess()
    else
        onFail()
    end
end

local Window = OrionLib:MakeWindow({
    Name = "卡密脚本的卡密系统", ---你脚本的名称
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "简单实用"
})

local Tab = Window:MakeTab({
    Name = "验证区",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local KeySection = Tab:AddSection({
    Name = "验证"
})

Tab:AddTextbox({
    Name = "输入卡密", 
    Default = "",
    TextDisappear = true,
    Callback = verifyKey
})

OrionLib:Init()