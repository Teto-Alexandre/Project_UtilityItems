# 見た目
    execute as @e[tag=ui_24_1] at @s if entity @a[distance=..5] run function ui:ui/24/
    execute at @e[tag=ui_24_1] as @a[distance=..5] run clear @s #ui:all{ui:{ismenu:1}}

# SSロジック維持
    execute if score $ui24 ui_world matches 1.. run schedule function ui:ui/24/ss 5t replace