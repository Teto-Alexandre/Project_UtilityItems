# 見た目
    execute as @e[tag=ui_18_1] at @s positioned ~ ~-1 ~ run function ui:ui/18/tick

# SSロジック維持
    execute if entity @e[tag=ui_18_1] run schedule function ui:ui/18/ss 1t append