# 何を射撃するべきか判断するコア

# 射撃
    scoreboard players set $deathmessage ui_temp 0
    execute if score $basetype ui_temp matches 1 run function ui:tmw/237/attack/main
    execute if score $basetype ui_temp matches 2 run function ui:tmw/237/attack/hold
    execute if score $basetype ui_temp matches 3 run function ui:tmw/237/attack/final
    scoreboard players set $deathmessage ui_temp 1
    execute if score $basetype ui_temp matches -1 run function ui:tmw/237/attack/sp
    scoreboard players set $deathmessage ui_temp 0
    execute if score $basetype ui_temp matches -2 run function ui:tmw/237/attack/sub