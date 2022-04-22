# 見た目
    execute as @e[tag=ui_14_1] at @s run function ui:ui/14/14_1

# SSロジック維持
    execute if entity @e[tag=ui_14_1] run schedule function ui:ui/14/ss 1t append