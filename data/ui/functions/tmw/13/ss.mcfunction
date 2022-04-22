# 見た目
    execute as @e[tag=tmw_13_2] at @s run function ui:tmw/13/13_2
    execute as @e[tag=tmw_13_3] at @s run function ui:tmw/13/13_3

# SSロジック維持
    execute if entity @e[tag=tmw_13_2] run schedule function ui:tmw/13/ss 1t append