# tick処理
    execute as @e[tag=tmw_259_active,tag=tmw_259_active_cant] at @s run function ui:tmw/259/root/line_reader

# SSロジック維持
    execute if entity @e[tag=tmw_259_active,tag=tmw_259_active_cant] run schedule function ui:tmw/259/ss.cant 1t replace