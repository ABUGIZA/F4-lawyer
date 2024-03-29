
local QBCore = exports["qb-core"]:GetCoreObject()


RegisterNetEvent('f4:Player:Lawyer', function()
  local open = {}
  open[#open + 1] = {
    header = 'قائمة المحامين',
    icon = 'fas fa-user-ninja',
    isMenuHeader = true
  }
  QBCore.Functions.TriggerCallback("f4:server:getPlayers:lawyer", function(data)
    if data then
      for k, v in pairs(data) do
        open[#open + 1] = {
          header = "اسم المحامي : "..v.name.."\n رقم المحامي :"..v.phone.."\nرقم تاريخ المحامي : "..v.birthdate,
          icon = 'fas fa-user-tie',
          params = {
            event = "f4:client:lawyer",
            args = {
              info = v.id,
            }
          }
        }
      end
      open[#open + 1] = {
        header = 'return',
        icon = 'fas fa-arrows-rotate',
        params = {
          event = "f4:menu:gang:system"
       }
       }
    end
    exports['qb-menu']:openMenu(open)
  end)
end)

RegisterNetEvent("f4:client:lawyer", function(data)
  print(json.encode(data))
  local dialog = exports["qb-input"]:ShowInput({
      header = "طلب محامي",
      submitText = "Done",
      inputs = {
          {
              text = "ايش السبب رفع قضية",
              name = "case",
              type = "text",
              isRequired = true,
          },
          {
              text = "ارسال ادلة",
              name = "send",
              type = "text",
              isRequired = false,
          },
          {
            text = "دليل اضافي",
            name = "send_2",
            type = "text",
            isRequired = false,
        },
        {
          text =  "دليل اضافي",
          name = "send_3",
          type = "text",
          isRequired = false,
        },
      },
  })
  if dialog then
      TriggerServerEvent("f4:server:add:lawyer",data, dialog.case, dialog.send,dialog.send_2,dialog.send_3)
  end
end)


RegisterNetEvent("f4:menu:client:lawyer",function()
  QBCore.Functions.TriggerCallback('f4:server:get:amount', function(name,case,send,send_2,send_3)
    local openMenu = {
      {
        header = 'لديك قضية جديدة',
        isMenuHeader = true

      },
      {
        header = "\nاسم الموكل : "..name.."\nسبب القضية : "..case.."\nالادلة : "..send.."\nدليل اضافي : "..send_2.."\nدليل اضافي : "..send_3.."\n اذا كنت تريد نسخ رابط الادلة راجع تطبيق الحكومة",
       -- icon = "fas fa-triangle-exclamation",
      },
      {
        header ='قبول القضية',
        icon = "fas fa-thumbs-up",
        params = {
        isServer = true,
        event = "f4:server:lawyer:yes",
      }
      },
      {
        header = 'رفض القضية',
        icon = 'fas fa-thumbs-down',
        params = {
          isServer = true,
          event = "f4:server:lawyer:no",
      }
    }
  }
    exports["qb-menu"]:openMenu(openMenu)
  end)
end)


Citizen.CreateThread(function()
  exports["qb-target"]:AddBoxZone("lawyer",vector3(1827.55, 2587.57, 46.01), 1.4, 1.0, {
    name="lawyer",
    heading= 0,
    debugPoly = false,
  }, {
    options = {
      {
        type = "client",
        event = "f4:Player:Lawyer",
        icon = "fas fa-book-skull",
        label = "طلب محامي",
        minZ= 45.01,
        maxZ= 47.4
      },
     },
    distance = 1.5
  })
end)
