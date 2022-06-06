# 何を射撃するべきか判断するコア

# 射撃
    execute if score $basetype ui_temp matches 1 run function ui:tmw/237/attack/main
    execute if score $basetype ui_temp matches 2 run function ui:tmw/237/attack/hold
    execute if score $basetype ui_temp matches 3 run function ui:tmw/237/attack/final
    execute if score $basetype ui_temp matches -1 unless entity @s[tag=ui_temp_success] run function ui:tmw/237/attack/sp