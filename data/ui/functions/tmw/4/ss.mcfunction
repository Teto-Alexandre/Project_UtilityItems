# 見た目
    execute as @e[tag=tmw_4_1] at @s run function ui:tmw/4/4_1

# SSロジック維持
    execute if entity @e[tag=tmw_4_1] run schedule function ui:tmw/4/ss 1t append