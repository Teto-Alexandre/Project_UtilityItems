# 見た目
    execute as @e[tag=tmw_3_2] at @s run function ui:tmw/3/3_2

# SSロジック維持
    execute if entity @e[tag=tmw_3_2] run schedule function ui:tmw/3/ss2 1t append