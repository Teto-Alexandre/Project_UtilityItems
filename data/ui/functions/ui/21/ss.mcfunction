# 見た目
    execute as @e[tag=ui_21_1] at @s run function ui:ui/21/21_1

# SSロジック維持
    execute if score $ui21 ui_world matches 1.. run schedule function ui:ui/21/ss 1t append