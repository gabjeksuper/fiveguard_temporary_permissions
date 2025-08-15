Config = {
    [""] = { -- Replace this with a unique name
        NameOfScript = "", -- Replace with the name of your script (used as event prefix)
        EventForStarting = "", -- Client-side event that starts the action that requires temp permissions (e.g., "openShowroom")
        WaitForStopping = 0, -- Time in seconds to wait before stopping the action (e.g., 5 seconds)
        EventForStopping = "", -- Client-side event that stops the action (e.g., "closeShowroom")
        Category = "", -- The permission category to set (e.g., "Client", "AdminMenu", etc.). All categories can be found here: https://docs.fiveguard.net/permission-system/ace-permissions
        Permission = "", -- The specific permission within the category (e.g., "BypassNoclip", "AdminMenuAccess", etc.) All permissions can be found here: https://docs.fiveguard.net/permission-system/ace-permissions
        IgnoreStaticPermissions = false, -- Keep false unless you know what you are doing
        Debug = false, -- DEBUG (Set to true to enable debug output/logging)
        Webhook = false -- Replace with your Discord webhook URL to log permission changes (e.g., "ttps://discord.com/api/webhooks/WEBHOOK_ID/WEBHOOK_TOKEN")
    },
}

-- Leave auto if you want automatic detection otherwise replace with Fiveguard name
Config.FiveguardName = "auto"
--                                                                        __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __
-- Preconfigured temporary permissions                                    || DON'T USE RTX/RCORE BYPASS IF YOU ARE ALREADY USING OFFSEY "PACKAGE ADDON" ||
Config.JGDealerships = false -- Set true if using jg-dealerships          ||                                                                            ||
Config.JGAdvancedGarages = false -- Set true if using jg-advancedgarages  ||                                                                            ||        
Config.RcorePrison = false -- Set true if using rcore_prison              ||  ← DON'T SET IT ON "TRUE" IF YOU ARE ALREADY USING OFFSEY "PACKAGE ADDON"  ||
Config.RcoreClothing = false -- Set true if using Rcore_Clothing          ||  ← DON'T SET IT ON "TRUE" IF YOU ARE ALREADY USING OFFSEY "PACKAGE ADDON"  ||
Config.RcoreLunarPark = false -- Set true if using Rcore_LunarPark        ||  ← DON'T SET IT ON "TRUE" IF YOU ARE ALREADY USING OFFSEY "PACKAGE ADDON"  ||
Config.RTXThemePark = false -- Set true if using RTX_Theme_Park           ||  ← DON'T SET IT ON "TRUE" IF YOU ARE ALREADY USING OFFSEY "PACKAGE ADDON"  ||
Config.WasabiPolice = false -- Set true if using Wasabi_Police            || __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ ||


-- Language for console/messages: 'en', 'it', 'es', 'ar'. Check out locales.lua to choose from many more languages.
Config.Locale = 'en'
