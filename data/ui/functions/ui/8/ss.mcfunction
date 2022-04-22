# 見た目
    execute as @e[tag=ui_8_1] run function ui:ui/8/8_1

# SSロジック維持
    execute if entity @e[tag=ui_8_1] run schedule function ui:ui/8/ss 1t append