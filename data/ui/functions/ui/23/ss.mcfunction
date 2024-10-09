# 見た目
    execute as @e[tag=ui_23_1] at @s run function ui:ui/23/

# SSロジック維持
    execute if score $ui23 ui_world matches 1.. run schedule function ui:ui/23/ss 1t append