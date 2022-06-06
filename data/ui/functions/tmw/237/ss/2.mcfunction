# 弾丸
    execute as @e[tag=tmw_237_sub] at @s run function ui:tmw/237/sub/tick

# SSロジック維持
    execute if entity @e[tag=tmw_237_sub] run schedule function ui:tmw/237/ss/2 1t append