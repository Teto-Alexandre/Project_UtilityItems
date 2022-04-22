# 見た目
    execute as @e[tag=ui_5_1] run function ui:ui/5/5_1

# SSロジック維持
    execute if entity @e[tag=ui_5_1] run schedule function ui:ui/5/ss 1t append