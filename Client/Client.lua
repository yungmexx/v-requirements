-- Example usage:
    -- exports["v-requirements"]:ShowRequirements({
    --     {
    --         ["Amount"] = 1,
    --         ["Image"] = "qs-inventory/web/images/gold_ring.png",
    --         ["Label"] = rl.Shared.Items["gold_ring"].label
    --     },
    --     {
    --         ["Amount"] = 21,
    --         ["Image"] = "qs-inventory/web/images/sapphire_earrings.png",
    --         ["Label"] = rl.Shared.Items["sapphire_earrings"].label
    --     },
    -- })

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
