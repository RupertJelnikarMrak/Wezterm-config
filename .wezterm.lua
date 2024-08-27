local wezterm = require 'wezterm'
local wsl_domains = wezterm.default_wsl_domains()

for _, dom in ipairs(wsl_domains) do
    dom.default_cwd = '~'
end

return {
    -- Colors
    color_scheme = 'Catppuccin Mocha',
    -- Tab bar
    enable_tab_bar = true,
    use_fancy_tab_bar = true,
    hide_tab_bar_if_only_one_tab = true,

    window_frame = {
        font_size = 10,
        active_titlebar_bg = '#11111b',
        inactive_titlebar_bg = '#11111b',
    },

    colors = {
        tab_bar = {
            active_tab = {
                bg_color = "#1e1e2e",
                fg_color = "#ffffff",
            },
            inactive_tab = {
                bg_color = "#11111b",
                fg_color = "#cdd6f4",
                italic = true,
            },
            inactive_tab_hover = {
                bg_color = "#181825",
                fg_color = "#cdd6f4",
            },
            new_tab = {
                bg_color = "NONE",
                fg_color = "#cdd6f4",
            },
            new_tab_hover = {
                bg_color = "NONE",
                fg_color = '#a6adc8',
            },
        },
    },

    force_reverse_video_cursor = true,
    enable_csi_u_key_encoding = true,

    -- Window decorations
    window_decorations = "INTEGRATED_BUTTONS | RESIZE",

    window_background_image = 'C:/Users/redri/Pictures/night_wolf_background.jpg',
    window_background_image_hsb = {
        brightness = 0.1,
        hue = 1,
        saturation = 0.9,
    },


    wsl_domains = wsl_domains,
    default_domain = "WSL:Arch",
    default_prog = { 'wsl.exe' },
    --    default_cwd = '\\\\wsl.localhost\\Arch\\home\\rupert',

    enable_kitty_graphics = true,

    scrollback_lines = 5000,

    enable_wayland = true, -- Disable Wayland support if not needed

    window_close_confirmation = 'NeverPrompt',
    skip_close_confirmation_for_processes_named = { 'bash', 'sh', 'zsh', 'fish', 'tmux' },

    keys = {
        { key = 'w', mods = 'CTRL|SHIFT|ALT', action = wezterm.action.CloseCurrentTab { confirm = false } },
        { key = 'w', mods = 'CTRL|SHIFT',     action = wezterm.action.CloseCurrentPane { confirm = false } },
        { key = "d", mods = "CTRL|SHIFT",     action = wezterm.action { SplitVertical = { domain = "CurrentPaneDomain" } } },
        { key = "d", mods = "CTRL|SHIFT|ALT", action = wezterm.action { SplitHorizontal = { domain = "CurrentPaneDomain" } } },
        { key = "h", mods = "CTRL|SHIFT",     action = wezterm.action { ActivatePaneDirection = "Left" } },
        { key = "l", mods = "CTRL|SHIFT",     action = wezterm.action { ActivatePaneDirection = "Right" } },
        { key = "k", mods = "CTRL|SHIFT",     action = wezterm.action { ActivatePaneDirection = "Up" } },
        { key = "j", mods = "CTRL|SHIFT",     action = wezterm.action { ActivatePaneDirection = "Down" } },
        {
            key = "t",
            mods = "CTRL|SHIFT",
            action = wezterm.action { SpawnCommandInNewTab = {} }
        },
        {
            key = "C",
            mods = "CTRL|SHIFT",
            action = wezterm.action {
                CopyTo = "Clipboard"
            }
        }, {
        key = "V",
        mods = "CTRL|SHIFT",
        action = wezterm.action {
            PasteFrom = "Clipboard"
        }
    } },
    mouse_bindings = { {
        event = {
            Up = {
                streak = 1,
                button = "Right"
            }
        },
        mods = "NONE",
        action = wezterm.action {
            PasteFrom = "Clipboard"
        }
    }, {
        event = {
            Up = {
                streak = 1,
                button = "Middle"
            }
        },
        mods = "NONE",
        action = wezterm.action {
            PasteFrom = "PrimarySelection"
        }
    } }
}
