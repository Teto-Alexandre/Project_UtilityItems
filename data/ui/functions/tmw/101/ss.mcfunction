# 駆動部
    execute as @e[tag=tmw_101_2] at @s run function ui:tmw/101/101_2/tick

# SSロジック維持
    execute if entity @e[tag=tmw_101_2] run schedule function ui:tmw/101/ss 1t append