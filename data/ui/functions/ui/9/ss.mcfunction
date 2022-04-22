# 見た目
    execute as @e[tag=ui_9_1] run function ui:ui/9/9_1

# SSロジック維持
    execute if entity @e[tag=ui_9_1] run schedule function ui:ui/9/ss 1t append