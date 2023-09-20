# 見た目
    execute as @e[tag=ui_22_1] at @s run function ui:ui/22/

# SSロジック維持
    execute if score $ui22 ui_world matches 1.. run schedule function ui:ui/22/ss 1t append