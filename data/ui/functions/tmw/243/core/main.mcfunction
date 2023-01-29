# メニュー表示
    scoreboard players set $success ui_temp 0
    execute if entity @s[nbt={EnderItems:[{Slot:8b,tag:{tmw:{id:237}}}]}] run function ui:tmw/243/core/set
    execute if score $success ui_temp matches 0 run function ui:tmw/243/core/panel/all
