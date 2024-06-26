function _Hyde
    set COMP_LINE (commandline --cut-at-cursor)

    set COMP_WORDS
    echo $COMP_LINE | read --tokenize --array COMP_WORDS
    if string match --quiet --regex '.*\s$' $COMP_LINE
        set COMP_CWORD (math (count $COMP_WORDS) + 1)
    else
        set COMP_CWORD (count $COMP_WORDS)
    end

    set --local literals "revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "search" "set" "reload" "reset" "--style" "--animations" "--site" "version" "select" "--blur" "variety" "theme" "clean" "-f" "reload" "--browser" "--print-snip" "--reset" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "inject" "power" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--blur" "restore" "-d" "--browser" "sddm" "run" "--option" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "next" "size" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "patch" "select" "Package" "control"

    set --local descriptions
    set descriptions[1] " Revert to a previous backup run by 'Hyde backup all'. "
    set descriptions[2] " Removes Chaotic Aur"
    set descriptions[3] " Toggle to use wallpaper accent themes"
    set descriptions[4] "	list and copy selected"
    set descriptions[5] " Default tranparency"
    set descriptions[6] "  Show the JSON format"
    set descriptions[7] " [*] Save power by disabling features"
    set descriptions[8] " [*] Unset specific changes"
    set descriptions[9] " wallbash light mode"
    set descriptions[10] "  Stop every instance of Screencap"
    set descriptions[11] " Disable animations"
    set descriptions[12] " Backing up commands"
    set descriptions[13] " Restores dots from previous backup"
    set descriptions[14] " List the backup"
    set descriptions[15] " Cursor setting"
    set descriptions[16] "  Show the pretty format"
    set descriptions[17] "    run without custom '.lst' bookmark files"
    set descriptions[18] " Only restores dots from default '/Configs'"
    set descriptions[19] " Setup Chaotic Aur, append [fresh] to run in fresh install mode"
    set descriptions[20] "  Use 'tesseract' to scan image then add to clipboard"
    set descriptions[21] "  Record focused monitor"
    set descriptions[22] " Theme commands"
    set descriptions[23] " [*] Bookmark selector"
    set descriptions[24] " wallbash disabled"
    set descriptions[25] "  Frozen screen, drag to manually snip an area"
    set descriptions[26] "	Reset cache"
    set descriptions[27] " Toggle ﯦ  Set/unset current changes'"
    set descriptions[28] " [*] Pastebin manager "
    set descriptions[29] " wallbash auto"
    set descriptions[30] " System information"
    set descriptions[31] " Change all the pre-set sizes"
    set descriptions[32] " Set cursor theme"
    set descriptions[33] "	list and delete selected"
    set descriptions[34] " Upgrades dots from the repository"
    set descriptions[35] " Cycles wallbash [0] off [1] auto [2] dark [3] light"
    set descriptions[36] " Waybar commands"
    set descriptions[37] " Just reload"
    set descriptions[38] " Pull updates from Hyde repository"
    set descriptions[39] " Backs up the current configuration"
    set descriptions[40] " Glyph selector"
    set descriptions[41] "	wipe database"
    set descriptions[42] "  Print focused monitor"
    set descriptions[43] " Toggle game mode"
    set descriptions[44] " Shell commands"
    set descriptions[45] " [*] Hyde Config File & Directory status"
    set descriptions[46] " Check active cursor status (only gsettings)"
    set descriptions[47] " [*] Web Search"
    set descriptions[48] " Set /Path/to/Wallpaper"
    set descriptions[49] " Reloads waybar"
    set descriptions[50] " Reset changes"
    set descriptions[51] "   use style [ 1 | 2 ]"
    set descriptions[52] " Default animations"
    set descriptions[53] " Search engine to use"
    set descriptions[54] " Hyde-cli version"
    set descriptions[55] " Theme selector"
    set descriptions[56] " Disable blur"
    set descriptions[57] " [*] Use variety package to manage wallpapers"
    set descriptions[58] " Select sddm theme"
    set descriptions[59] " Clear some storage by deleting old backups"
    set descriptions[60] "  Add custom file"
    set descriptions[61] " Reload cursors"
    set descriptions[62] "   Set Browser can also set 'BROWSER' env"
    set descriptions[63] "  Drag to manually snip an area"
    set descriptions[64] " reset hyde profile"
    set descriptions[65] " Reload wallpaper cache"
    set descriptions[66] " Restores dots from a clone repository "
    set descriptions[67] " Information about Hyde and its components"
    set descriptions[69] "   Diff mismatched dotfiles"
    set descriptions[70] " Previous wallpaper"
    set descriptions[71] " Disable border angle animation"
    set descriptions[72] " Wallpaper commands"
    set descriptions[73] " Default border angle animation"
    set descriptions[74] " Useful GUI util"
    set descriptions[75] " User/Device specific scripts that might be useful"
    set descriptions[76] " Power Options"
    set descriptions[77] " [*] Show keybind hints"
    set descriptions[78] " Force rebuild cache"
    set descriptions[79] " Use rofi to select screenshot options "
    set descriptions[80] " Show Manual"
    set descriptions[81] " Fixes issues for asus devices"
    set descriptions[82] " Watches hyprland events and executes actions"
    set descriptions[83] " Overwrite current dots from the preferred user dir "
    set descriptions[84] "   force rebuild cached bookmark paths"
    set descriptions[85] " Default blur"
    set descriptions[86] " Restore dots"
    set descriptions[87] "  Add custom delimiter symbol (default '>')"
    set descriptions[88] " Browser to use"
    set descriptions[89] " Sddm commands"
    set descriptions[90] " Executable utilities"
    set descriptions[91] "	options"
    set descriptions[92] " Manages Hyde's cache"
    set descriptions[93] " Interactive control file"
    set descriptions[94] " Previous theme"
    set descriptions[95] " [*] Add chaotic aur to you mirror"
    set descriptions[96] "   Pipes STDOUT to less"
    set descriptions[97] " [*] Set wallbash mode. [0] [1] [2] [3] "
    set descriptions[98] " Disable tranparency"
    set descriptions[99] "  Reinitialize screencap"
    set descriptions[100] " Links a clone directory. Useful if you want to change your CloneDir"
    set descriptions[101] " Inhibits idle when player status: 'Playing"
    set descriptions[102] "  Print all outputs"
    set descriptions[103] " Next theme"
    set descriptions[104] "  Display this help message"
    set descriptions[105] " Wallpaper selector"
    set descriptions[106] "   Diff preserved dotfiles"
    set descriptions[107] " Set cursor size"
    set descriptions[108] " Next wallppaer"
    set descriptions[109] " Set preavailable Hyde branch"
    set descriptions[110] " Next waybar layout"
    set descriptions[111] " [*] Set waybar size"
    set descriptions[112] " Flatpak setup for HyDE"
    set descriptions[113] " Manage users restore control list"
    set descriptions[114] " [*] Screenshot and screenrecord tool"
    set descriptions[115] " [*] Emoji selector"
    set descriptions[116] "  Drag to manually snip an area to screen record it"
    set descriptions[117] " Previous waybar layout"
    set descriptions[118] " wallbash dark mode"
    set descriptions[119] " Converts chaotic aur packages to AUR"
    set descriptions[120] " Set theme"
    set descriptions[121] " Patch a theme from different repository."
    set descriptions[122] " Shell selector"
    set descriptions[123] " Hyde core Package status"
    set descriptions[124] " Edit waybar control file"

    set --local literal_transitions
    set literal_transitions[1] "set inputs 36 67 38 54 3 37 22 89 90 109 92 44 93 80 30 12 72 15 74 75 83 34 76 86; set tos 25 3 4 5 6 26 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 24 2 7"
    set literal_transitions[2] "set inputs 27 43 7 50 8; set tos 28 28 27 28 33"
    set literal_transitions[3] "set inputs 123 45; set tos 28 35"
    set literal_transitions[6] "set inputs 35 97; set tos 28 34"
    set literal_transitions[7] "set inputs 100 18 13 66; set tos 28 28 28 28"
    set literal_transitions[8] "set inputs 55 103 121 94 120; set tos 28 28 28 28 28"
    set literal_transitions[9] "set inputs 58; set tos 28"
    set literal_transitions[10] "set inputs 101 82 114; set tos 28 28 38"
    set literal_transitions[12] "set inputs 78 65; set tos 28 28"
    set literal_transitions[13] "set inputs 122; set tos 28"
    set literal_transitions[14] "set inputs 113; set tos 28"
    set literal_transitions[17] "set inputs 14 39 59 1; set tos 28 28 28 28"
    set literal_transitions[18] "set inputs 57 105 48 108 70; set tos 37 28 28 28 28"
    set literal_transitions[19] "set inputs 61 46 107 32; set tos 28 28 28 28"
    set literal_transitions[20] "set inputs 115 79 28 47 40 77 23; set tos 32 28 40 29 28 31 30"
    set literal_transitions[21] "set inputs 81 112 95; set tos 28 28 36"
    set literal_transitions[25] "set inputs 111 117 49 110 124; set tos 41 28 28 28 28"
    set literal_transitions[27] "set inputs 11 56 71 98; set tos 28 28 28 28"
    set literal_transitions[29] "set inputs 26 53 88; set tos 28 28 28"
    set literal_transitions[30] "set inputs 84 17 62; set tos 28 28 28"
    set literal_transitions[31] "set inputs 6 104 16 60 87; set tos 28 28 28 28 28"
    set literal_transitions[32] "set inputs 51; set tos 28"
    set literal_transitions[33] "set inputs 5 52 73 85; set tos 28 28 28 28"
    set literal_transitions[34] "set inputs 24 29 118 9; set tos 28 28 28 28"
    set literal_transitions[35] "set inputs 106 96 69; set tos 28 28 28"
    set literal_transitions[36] "set inputs 2 19 119; set tos 28 28 28"
    set literal_transitions[37] "set inputs 64; set tos 28"
    set literal_transitions[38] "set inputs 10 116 21 42 25 99 63 102 20; set tos 28 28 28 28 28 28 28 28 28"
    set literal_transitions[39] "set inputs 68; set tos 28"
    set literal_transitions[40] "set inputs 91 33 41 4; set tos 28 28 28 28"
    set literal_transitions[41] "set inputs 31; set tos 28"

    set --local match_anything_transitions_from 11 4 15 1 16 22 5 23 26 24
    set --local match_anything_transitions_to 28 28 28 23 28 28 28 39 28 28

    set --local state 1
    set --local word_index 2
    while test $word_index -lt $COMP_CWORD
        set --local -- word $COMP_WORDS[$word_index]

        if set --query literal_transitions[$state] && test -n $literal_transitions[$state]
            set --local --erase inputs
            set --local --erase tos
            eval $literal_transitions[$state]

            if contains -- $word $literals
                set --local literal_matched 0
                for literal_id in (seq 1 (count $literals))
                    if test $literals[$literal_id] = $word
                        set --local index (contains --index -- $literal_id $inputs)
                        set state $tos[$index]
                        set word_index (math $word_index + 1)
                        set literal_matched 1
                        break
                    end
                end
                if test $literal_matched -ne 0
                    continue
                end
            end
        end

        if set --query match_anything_transitions_from[$state] && test -n $match_anything_transitions_from[$state]
            set --local index (contains --index -- $state $match_anything_transitions_from)
            set state $match_anything_transitions_to[$index]
            set word_index (math $word_index + 1)
            continue
        end

        return 1
    end

    if set --query literal_transitions[$state] && test -n $literal_transitions[$state]
        set --local --erase inputs
        set --local --erase tos
        eval $literal_transitions[$state]
        for literal_id in $inputs
            if test -n $descriptions[$literal_id]
                printf '%s\t%s\n' $literals[$literal_id] $descriptions[$literal_id]
            else
                printf '%s\n' $literals[$literal_id]
            end
        end
    end


    return 0
end

complete --command Hyde --no-files --arguments "(_Hyde)"
