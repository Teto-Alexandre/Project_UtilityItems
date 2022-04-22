# いろいろ
    execute as @e[tag=ui_15_1] at @s run function ui:ui/15/15_1
    #idふる
    execute at @e[tag=ui_15_2] unless entity @e[tag=ui_15_1,distance=..10] run function ui:ui/15/kill
    execute as @e[tag=ui_15_3] at @s unless entity @e[tag=ui_15_1,distance=..10] run function ui:ui/15/15_3

# SSロジック維持
    execute if entity @e[tag=ui_15_1] run schedule function ui:ui/15/ss 1t append