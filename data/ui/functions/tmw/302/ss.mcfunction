#弾丸
    execute as @e[tag=ui_302_1] at @s run function ui:tmw/302/proj/tick

# SSロジック維持
    execute if entity @e[tag=ui_302_1] run schedule function ui:tmw/302/ss 1t append