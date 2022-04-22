# 見た目
    execute as @e[tag=tmw_9_3] run function ui:tmw/9/9_3
    execute as @e[tag=tmw_9_9] at @s run function ui:tmw/9/9_9/active

# SSロジック維持
    execute if entity @e[tag=tmw_9_3] run schedule function ui:tmw/9/ss1 1t append