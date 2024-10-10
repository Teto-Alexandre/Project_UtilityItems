# 見た目
    execute as @e[tag=ui_23_1] at @s if entity @a[distance=..5] run function ui:ui/23/
    execute at @e[tag=ui_23_1] as @a[distance=..5] run clear @s #ui:all{ui:{ismenu:1}}

# SSロジック維持
    execute if score $ui23 ui_world matches 1.. run schedule function ui:ui/23/ss 1t append