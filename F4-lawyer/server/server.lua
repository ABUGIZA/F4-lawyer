local QBCore = exports['qb-core']:GetCoreObject()

local PlayerMy = {}
local Player_case = {}
local Player_send = {}
local Player_send_2 = {}
local Player_send_3 = {}
local Player_id = {}

QBCore.Functions.CreateCallback('f4:server:getPlayers:lawyer', function(source, cb)
    local play = {}
    for k, v in pairs(QBCore.Functions.GetPlayers()) do
        local Plyar = QBCore.Functions.GetPlayer(v)
        if Plyar.PlayerData.job.name == "lawyer" then
            table.insert(play, {
                id = v,
                name = Plyar.PlayerData.charinfo.firstname .. " " .. Plyar.PlayerData.charinfo.lastname,
                phone = Plyar.PlayerData.charinfo.phone,
                birthdate = Plyar.PlayerData.charinfo.birthdate
            })
        end
    end
    cb(play)
end)

RegisterNetEvent("f4:server:add:lawyer", function(data,case,send,send_2,send_3)
    local Player_my = QBCore.Functions.GetPlayer(source)
    local id = data.info
    local Player = QBCore.Functions.GetPlayer(id)
    PlayerMy = Player_my
    Player_case = case
    Player_send = send
    Player_send_2 = send_2
    Player_send_3 = send_3
    Player_id = id
    print(json.encode(Player_case))
    print(json.encode(Player_send))
    print(json.encode(Player_send_2))
    print(json.encode(Player_send_3))
    print(json.encode(Player.PlayerData.source))
    TriggerClientEvent("f4:menu:client:lawyer", Player.PlayerData.source)
end)    

QBCore.Functions.CreateCallback('f4:server:get:amount', function(_, cb) 
    local Player = PlayerMy.PlayerData.charinfo.firstname.." "..PlayerMy.PlayerData.charinfo.lastname
    cb(Player,Player_case,Player_send,Player_send_2,Player_send_3)
end)

-- سجل حدث f4:server:yes
RegisterNetEvent("f4:server:lawyer:yes",function ()
    local Player = QBCore.Functions.GetPlayer(Player_id)
    local info = {}
    info.case = Player_case
    info.send = Player_send
    info.send_2 = Player_send_2
    info.send_3 = Player_send_3
    info.name = PlayerMy.PlayerData.charinfo.firstname.." "..PlayerMy.PlayerData.charinfo.lastname
    QBCore.Functions.Notify(PlayerMy.PlayerData.source,  "تم قبول قضيتك بنجاح", "success", 6000)    
    QBCore.Functions.Notify(Player_id, "قبلت القضية", "success", 6000)
    Player.Functions.AddItem("case", 1,false,info)
    TriggerClientEvent('inventory:client:ItemBox', Player.PlayerData.source, QBCore.Shared.Items['case'], "add",1)
   TriggerEvent('qb-log:server:CreateLog', 'lawyer', "اسم الموكل : "..PlayerMy.PlayerData.charinfo.firstname.." "..PlayerMy.PlayerData.charinfo.lastname,"orange","**".."اسم المحامي".."**".."```"..Player.PlayerData.charinfo.firstname.." "..Player.PlayerData.charinfo.lastname.."```".."**".."\nسبب القضية : \n".."**".."```"..Player_case.."```".."**".."\nارسال ادلة : \n".."**".."```"..Player_send.."```".."**".."\nدليل اضافي : ".."**".."```"..Player_send_2.."```".."**".."\nدليل اضافي : ".."**".."```"..Player_send_3.."```")
end)

RegisterNetEvent("f4:server:lawyer:no",function()
    QBCore.Functions.Notify(PlayerMy.PlayerData.source,  "تم رفض قضيتك", "info", 6000)    
    QBCore.Functions.Notify(Player_id, "رفضت القضية", "info", 6000)
end)