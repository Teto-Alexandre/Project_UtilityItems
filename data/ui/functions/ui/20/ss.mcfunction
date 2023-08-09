# 見た目
    execute as @e[tag=ui_20_1] at @s run function ui:ui/20/20_1

# SSロジック維持
    execute if score $ui20 ui_world matches 1.. run schedule function ui:ui/20/ss 1t append