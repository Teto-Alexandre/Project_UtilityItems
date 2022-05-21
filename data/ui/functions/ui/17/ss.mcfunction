# 見た目
    execute as @e[tag=ui_17_1] at @s run function ui:ui/17/17_1

# SSロジック維持
    execute if entity @e[tag=ui_17_1] run schedule function ui:ui/17/ss 1t append