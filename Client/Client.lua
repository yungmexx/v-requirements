--[[
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
--]]

-- Example remove:
    -- exports["v-requirements"]:HideRequirements()

exports(
    "ShowRequirements", 
    function(Requirements) 
        SendNUIMessage({
            Action = "SetRequirements", 
            Display = true,
            Requirements = Requirements
        })
    end
)        

exports(
    "HideRequirements",
    function()
        SendNUIMessage({
            Action = "SetRequirements", 
            Display = false,
        })
    end
)
