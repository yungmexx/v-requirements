-- Example usage:
    -- exports["v-requirements"]:ShowRequirements({
    --     {
    --         ["Amount"] = 1,
    --         ["Image"] = "ox_inventory/web/images/gold_ring.png",
    --         ["Label"] = QBCore.Shared.Items["gold_ring"].label
    --     },
    --     {
    --         ["Amount"] = 21,
    --         ["Image"] = "ox_inventory/web/images/sapphire_earrings.png",
    --         ["Label"] = QBCore.Shared.Items["sapphire_earrings"].label
    --     },
    -- })

-- Example remove:
    -- exports["v-requirements"]:HideRequirements()

exports("ShowRequirements", function(title, Requirements)
        SendNUIMessage({
            Action = "SetRequirements", 
            Display = true,
            title = title or "Required Items",
            Requirements = Requirements
        })
    end
)
 

exports("HideRequirements",function()
        SendNUIMessage({
            Action = "SetRequirements", 
            Display = false,
        })
    end
)
