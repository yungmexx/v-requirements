Showcase:

     https://forum.cfx.re/uploads/default/original/4X/b/a/5/ba5af5ee050494f72c0c0acfd4d7123c8abe9002.jpeg

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

     local startDist = #(pedCo - Config['PacificHeist']['startHeist']['pos'])
        if startDist <= 2.0 then
            inRange = true
            sleep = 1
            if not heistStarted then
                 if not requiredItemsShowed then
                     requiredItemsShowed = true
                     
                     exports["v-requirements"]:ShowRequirements({
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
            end
        else
                if requiredItemsShowed then
                    requiredItemsShowed = false
                    exports["v-requirements"]:HideRequirements()
                end
        end
