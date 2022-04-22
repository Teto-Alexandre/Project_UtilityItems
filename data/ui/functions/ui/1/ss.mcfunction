# 見た目
    execute as @e[tag=ui_1_2] run function ui:ui/1/1_2

# SSロジック維持
    execute if entity @e[tag=ui_1_2] run schedule function ui:ui/1/ss 1t append