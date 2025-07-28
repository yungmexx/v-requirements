

Showcase:

<img width="1920" height="1033" alt="{60B7E6EC-80C1-474F-8A17-57F75ED5037F}" src="https://github.com/user-attachments/assets/eaf135f2-2e05-453e-9e5b-0a94f03b5924" />



Example for qs-inventory:

     {
         ["Amount"] = 21,
         ["Image"] = "qs-inventory/html/images/sapphire_earrings.png",
         ["Label"] = QBCore.Shared.Items["sapphire_earrings"].label
     },
Example for ox_inventory:

     {
         ["Amount"] = 1,
         ["Image"] = "ox_inventory/web/images/gold_ring.png",
         ["Label"] = QBCore.Shared.Items["gold_ring"].label
     },
Example for qb-inventory:

     {
         ["Amount"] = 1,
         ["Image"] = "qb-inventory/html/images/gold_ring.png",
         ["Label"] = QBCore.Shared.Items["gold_ring"].label
     },

To hide ui:

     exports[“v-requirements”]:HideRequirements()



Heres an example of how you can use it:

       local QBCore = exports['qb-core']:GetCoreObject()
       local requiredItemsShowed = false


     Citizen.CreateThread(function()
          while true do
               local ped = PlayerPedId()
               local pedCo = GetEntityCoords(ped)
               local sleep = 1000

               local startDist = #(pedCo - CHANGEME])  -- CHANGE ME!
               if startDist <= 2.0 then
                   inRange = true
                   sleep = 1
                        if not requiredItemsShowed then
                            requiredItemsShowed = true
                            local title = "Required Items"
                            exports["v-requirements"]:ShowRequirements(title{
                                {
                               ["Amount"] = 1,
                               ["Image"] = "qs-inventory/html/images/big_drill.png",
                               ["Label"] = QBCore.Shared.Items["big_drill"].label
                           },
                           {
                               ["Amount"] = 1,
                               ["Image"] = "qs-inventory/html/images/backpackprop4.png",
                               ["Label"] = QBCore.Shared.Items["backpackprop4"].label
                           },
                           {
                               ["Amount"] = 1,
                               ["Image"] = "qs-inventory/html/images/macbookpro.png",
                               ["Label"] = QBCore.Shared.Items["macbookpro"].label
                           },
                           {
                               ["Amount"] = 4,
                               ["Image"] = "qs-inventory/html/images/thermite.png",
                               ["Label"] = QBCore.Shared.Items["thermite"].label
                           },
                           {
                               ["Amount"] = 1,
                               ["Image"] = "qs-inventory/html/images/pacifickeycard.png",
                               ["Label"] = QBCore.Shared.Items["pacifickeycard"].label
                           },
                           {
                               ["Amount"] = 6,
                               ["Image"] = "qs-inventory/html/images/explosive.png",
                               ["Label"] = QBCore.Shared.Items["explosive"].label
                           },
                           {
                               ["Amount"] = 1,
                               ["Image"] = "qs-inventory/html/images/plasma_cutter.png",
                               ["Label"] = QBCore.Shared.Items["plasma_cutter"].label
                           },
                           {
                               ["Amount"] = 1,
                               ["Image"] = "qs-inventory/html/images/usb_red.png",
                               ["Label"] = QBCore.Shared.Items["usb_red"].label
                           },       
                      })
                   end
          else
                  if requiredItemsShowed then
                      requiredItemsShowed = false
                      exports["v-requirements"]:HideRequirements()
                  end
          end
              Citizen.Wait(sleep)
          end
     end)
