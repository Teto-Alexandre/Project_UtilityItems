# 見た目
    execute as @e[tag=ui_16_1] at @s run function ui:ui/16/16_1

# SSロジック維持
    execute if entity @e[tag=ui_16_1] run schedule function ui:ui/16/ss 1t append