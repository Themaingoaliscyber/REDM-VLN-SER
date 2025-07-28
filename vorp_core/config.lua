--=============================================
--            VORP SHARED CONFIG             --
--=============================================

Lang = "English"
Config = Config or {}

Config = {
    autoUpdateDB           = true, -- Enables automatic database updates.

    ReportCrashes          = true, -- Reports crashes to https://monitor.gtp-dev.com login in here to create your API KEY , by doing this you will help the community to improve the server stability and fix crashes faster
    API_KEY                = "",   -- API key for crash reporting. Get your API key at https://monitor.gtp-dev.com to allow more requests make a donation in the website

    -- (IF YOU HAVE WHITELIST ENABLED DONT ENABLE THIS)--
    DeleteFromUsersTable   = true,      -- this will delete from users table if character does not exist "optimising the queries"
    -----------------------------------------------------

    CanRespawn             = function() -- use this function to add your own logic if player can respawn or not
        -- add your logic here
        return true                     -- dont touch
    end,
    --=============================================
    --        STARTING CONFIGURATION             --
    --=============================================

    initGold               = 0.0,          -- Initial gold amount for new players.
    initMoney              = 200.0,        -- Initial money amount for new players.
    initRol                = 0.0,          -- Initial role-play currency amount for new players.
    initInvCapacity        = 200.0,         -- Initial number of character inventory weight for new players. for old characters you must change in the database if you dont ave a new server
    initXp                 = 0,            -- Initial experience points for new players.
    initJob                = "unemployed", -- Default job for new players. Recommended not to change.
    initJobGrade           = 0,            -- Default job grade for new players. Recommended not to change.
    initGroup              = "user",       -- Default user group for new players. Recommended not to change.
    initJobLabel           = "Unemployed", -- Default job label for new players. Recommended not to change.
    Whitelist              = false,        -- Enable if not using TxAdmin's whitelist system.
    SavePlayersStatus      = false,        -- Future deprecated. Advised not to use, as it will be removed.
    maxHealth              = 10,           -- Maximum health for players. 10 is full, 0 is empty.
    maxStamina             = 10,           -- Maximum stamina for players. 10 is full, 0 is empty.
    PVP                    = true,         -- Enables player vs player combat.
    PVPToggle              = false,        -- Allows players to toggle their PVP status.
    CommandOnOffPVP        = 'pvp',        -- Command to toggle PVP status, requires PVPToggle to be true.
    savePlayersTimer       = 10,           -- Interval in minutes for automatically saving all players to the database.
    showplayerIDwhenfocus  = true,         -- Shows player Steam name when focusing on them with RMB if set to false.
    disableAutoAIM         = true,         -- Disables auto-aim for controller players if set to false.
    CheckDoubleAccounts    = false,        -- Enables, check if player enter with two accounts if false players can enter with same character and dupe.
    --=============================================
    --          MULTICHARACTER SUPPORT           --
    --=============================================

    SaveDiscordId          = true, -- Saves Discord ID in the character/user database upon joining/leaving.
    MaxCharacters          = 1,    -- Maximum number of characters a player can create. when first join, for old users go to users table and change the number of characters there

    --=============================================
    --             UI CORE SETTINGS              --
    --=============================================

    HideOnlyDEADEYE        = true,  -- Hides only the Dead Eye core in the UI.
    HidePlayersCore        = false, -- Hides player cores in the UI.
    HideHorseCores         = false, -- Hides horse cores in the UI.

    --=============================================
    --          WEBHOOK CONFIGURATIONS           --
    --     Refer to commands.config for usage.   --
    --=============================================

    webhookColor           = 16711680,                            -- Color for embeds in Discord webhooks.
    name                   = "VORP",                              -- Name displayed in webhook embeds.
    logo                   = "https://via.placeholder.com/30x30", -- Logo URL for webhook embeds.
    footerLogo             = "https://via.placeholder.com/30x30", -- Footer logo URL for webhook embeds.
    Avatar                 = "https://via.placeholder.com/30x30", -- Avatar URL for webhook embeds.
    EnableWebhookJoinleave = true,                                -- Enable webhooks for player join and leave
    JoinleaveWebhookURL    = "",                                  -- Replace with your webhook URL
    --=============================================
    --            UI CONFIGURATIONS              --
    --=============================================


    HideUi                = false,      -- Shows or hides the overall UI.
    HideGold              = false,      -- Disables the Gold UI for all players.
    HideMoney             = false,      -- Disables the Money UI for all players.
    HideLevel             = true,      -- Disables the Level UI for all players.
    HideID                = true,      -- Disables the ID UI for all players.
    HideTokens            = false,      -- Disables the Token UI for all players.
    HidePVP               = true,      -- Disables the PVP UI for all players.
    UIPosition            = 'TopRight', -- Sets the UI position on the screen. Options are 'TopRight', 'TopLeft', 'BottomRight', 'BottomLeft', 'MiddleRight', 'TopMiddle', 'BottomMiddle'.

    UILayout              = 'Row',   -- Sets the UI layout, options are 'Row' or 'Column'.
    HideWithRader         = true,       -- UI hides when the radar (minimap) is hidden.
    OpenAfterRader        = true,       -- UI shows when the radar (minimap) reappears.
    CloseOnDelay          = false,      -- UI automatically closes after a set time.
    CloseOnDelayMS        = 10000,      -- Time in milliseconds before the UI auto-closes, 10000 equals 10 seconds.
    CommandHideIU         = 'hideUi',   -- Command to hide all UI elements, useful for screenshots.
    CommandToogleUI       = 'toggleUi', -- Command to toggle the visibility of VORP UI elements.
    CommandClearAnim      = 'stopAnim', -- Command to stop animations if a player is stuck.
    StopAnimCooldown      = 5,          -- Cooldown time to reuse the command to stop animations. (Second)

    --=============================================
    --            MAP CONFIGURATIONS             --
    --=============================================

    mapTypeOnFoot         = 3,     -- Radar type when on foot. 0 = Off, 1 = Regular, 2 = Expanded, 3 = Simple (compass).
    mapTypeOnMount        = 3,     -- Radar type when on horse. Same options as on foot.
    enableTypeRadar       = false, -- Enables custom radar types if true, otherwise players use game settings.
    Loadinscreen          = true,  -- Enables loading screens during spawn and respawn.
    LoadinScreenTimer     = 10000, -- Duration of loading screens in milliseconds.

    --=============================================
    --            RESPAWN SETTINGS               --
    --=============================================

    HealthOnRespawn       = 500,                                  -- Player health after respawning at a hospital (max is 500).
    HealthOnResurrection  = 100,                                  -- Player health after being resurrected (max is 500).
    RagdollOnResurrection = false,                                 -- Enables ragdoll and revive effects upon resurrection.
    HealthRecharge        = { enable = true, multiplier = 0.37 }, -- Auto-recharge for health, with a multiplier for speed.
    StaminaRecharge       = { enable = true, multiplier = 0.4 },  -- Auto-recharge for stamina, with a multiplier for speed.
    RespawnTime           = 120,                                   -- Time in seconds before a player can respawn.
    RespawnKey            = 0xDFF812F9,                           -- Key code for respawning (default is 'E').
    RespawnKeyTime        = 5000,                                 -- Time in milliseconds to hold the respawn key.
    CombatLogDeath        = true,                                 -- Combat loggers respawn in a dead state instead of alive.
    UseControlsCamera     = false,                                -- Allows dead or carried players to move the camera with WASD (resource intensive).
    UseDeathHandler       = true,                                 -- Keeps default death handling unless you have a custom system.
    Hospitals             = {                                     -- Spawn points for players respawning at hospitals.
        Valentine = {
            name = "Valentine",
            pos = vector4(-283.83, 806.4, 119.38, 321.76), -- Vector4 coordinates: x, y, z, heading.
        },
        SaintDenis = {
            name = "Saint Denis",
            pos = vector4(2721.4562, -1446.0975, 46.2303, 321.76),
        },
        Armadillo = {
            name = "Armadillo",
            pos = vector4(-3742.5, -2600.9, -13.23, 321.76),
        },
        Blackwater = {
            name = "Black water",
            pos = vector4(-723.9527, -1242.8358, 44.7341, 321.76),
        },
        STRAWBERRY = {
            name = "STRAWBERRY",
            pos = vector4(-1803.84, -430.86, 158.4, 337.42),
        },
        TUMBLEWEED = {
            name = "TUMBLEWEED",
            pos = vector4(-5497.96, -2961.98, -0.89, 15.24),
        },
        ANNESBURG = {
            name = "ANNESBURG",
            pos = vector4(2941.22, 1269.88, 45.14, 323.05),
        },
        GUARMA = {
            name = "GUARMA",
            pos = vector4(1269.0, -6855.4, 43.82, 250.55),
        },
        -- EMERALDRANCH = {
        --     name = "EMERALD RANCH",
        --     pos = vector4(1525.52, 433.47, 91.13, 355.69),
        -- },
        -- WAPITIINDIAN = {
        --     name = "WAPITI INDIAN",
        --     pos = vector4(481.62, 2148.45, 242.29, 346.88),
        -- },
        TheNorth = {
            name = "The North",
            pos = vector4(-1300.46, 2425.01, 307.19, 5.88),
        },
        VANHORN = {
            name = "VAN HORN",
            pos = vector4(2984.65, 428.48, 51.91, 5.62),
        },
        RHODES = {
            name = "RHODES",
            pos = vector4(1367.17, -1310.79, 78.45, 58.92),
        },
        Rochedl = {
            name = "Rochedl",
            pos = vector4(-393.64, -136.17, 48.27, 332.29),
        },
        -- maxican = {
        --     name = "maxican",
        --     pos = vector4(-2147.95, -3381.14, 33.25, 168.68),
        -- },
        MACFARLANES = {
            name = "MACFARLANES",
            pos = vector4(-2490.54, -2429.25, 60.37, 28.21),
        },
    },
    ActiveEagleEye        = true,  -- Enables or disables Eagle Eye feature.
    ActiveDeadEye         = false, -- Enables or disables Dead Eye feature.

    --=============================================
    --         BAN SYSTEM CONFIGURATIONS         --
    --=============================================

    DateTimeFormat        = "%d/%m/%y %H:%M:%S", -- Format for displaying date and time in ban notifications.
    TimeZone              = " CET",              -- Set your server's timezone.
    TimeZoneDifference    = 1,                   -- Time difference from UTC, used in the banning system.


    --=============================================
    --        COMMAND PERMISSION SETTINGS        --
    --=============================================

    NewPlayerWebhook      = "https://discord.com/api/webhooks/1259211222352662539/ngUiyr0WzcJvZKUsq0iDe4uIIhPNkEHlHbUwCYPAYL5TeCR4hbYaIcxjT8rNCCNOZ1fS",     -- Webhook URL for logging new player joins.
    SetUserDBadmin        = true,  -- If true, 'addGroup' command also sets admin status in the Users table.
    SetBothDBadmin        = true, -- If true, 'addGroup' sets admin status in both Users and Characters tables.

    --===========================================
    --    DISCORD RICH PRESENCE INTEGRATION    --
    --===========================================
    appid                 = 1275028040702885888,                         -- Discord Application ID. Replace this with your own application's ID.
    biglogo               = "4000",                  -- Name of the image asset to use for the large icon in the rich presence.
    biglogodesc           = "فالنتاين قمة",    -- Description displayed when hovering over the large icon.
    smalllogo             = "logo",             -- Name of the image asset for the small icon in the rich presence. This is optional.
    smalllogodesc         = "فالنتاين قمة",  -- Description displayed when hovering over the small icon.
    richpresencebutton    = "الديسكورد",              -- Text displayed on the rich presence button.
    shownameandid         = false,                        -- Whether to display the player's Steam name and ID.
    Buttons               = {                            -- Configuration for buttons shown in the Discord rich presence.
        {
            text = 'دخول الديسكورد',                      -- Text displayed on the first button.
            -- URL the first button directs to. Replace with your Discord invite link.
            url = 'https://discord.gg/vln'

        },
        {
            text = 'متجر السيرفر', -- Text displayed on the second button.
            -- URL the second button directs to. Fill in with your website URL.
            url = 'https://valentinerp.com/'          -- Example for Rich Presence Button
        }
    },
    --=============================================
}
