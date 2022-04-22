# 見た目
    execute as @e[tag=ui_12_1] at @s run function ui:ui/12/12_1

# SSロジック維持
    execute if entity @e[tag=ui_12_1] run schedule function ui:ui/12/ss 1t append