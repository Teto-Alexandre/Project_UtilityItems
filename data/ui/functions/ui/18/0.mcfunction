# メニュー表示
    
    # スロットが空白ならボタンが押されたと判断する＋changedを1に
    scoreboard players set $changed ui_temp 0
    execute unless data block ~ ~ ~ Items[{Slot:14b}] run playsound entity.experience_orb.pickup block @a ~ ~ ~ 1 2 0
    execute unless data block ~ ~ ~ Items[{Slot:14b}] run scoreboard players set $changed ui_temp 1

    # GUI
    function ui:ui/18/all_panel

    execute if score $changed ui_temp matches 1 run function ui:ui/18/craft
