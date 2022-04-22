# 見た目
    execute as @e[tag=tmw_3_1] at @s run function ui:tmw/3/3_1

# SSロジック維持
    execute if entity @e[tag=tmw_3_1] run schedule function ui:tmw/3/ss1 1t append