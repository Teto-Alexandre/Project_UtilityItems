# 見た目
    execute as @e[tag=ui_13_1] at @s run function ui:ui/13/13_1

# SSロジック維持
    execute if entity @e[tag=ui_13_1] run schedule function ui:ui/13/ss 1t append