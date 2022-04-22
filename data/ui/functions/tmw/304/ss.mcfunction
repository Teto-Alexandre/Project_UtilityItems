#弾丸
    execute as @e[tag=ui_304_1] at @s run function ui:tmw/304/proj/tick

# SSロジック維持
    execute if entity @e[tag=ui_304_1] run schedule function ui:tmw/304/ss 1t append