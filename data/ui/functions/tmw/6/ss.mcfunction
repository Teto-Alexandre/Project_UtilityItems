# 見た目
    execute as @e[tag=tmw_6_1] at @s run function ui:tmw/6/6_1

# SSロジック維持
    execute if entity @e[tag=tmw_6_1] run schedule function ui:tmw/6/ss 1t append