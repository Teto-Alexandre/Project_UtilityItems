# 弾丸
    execute as @e[tag=tmw_256_sub] at @s run function ui:tmw/256/sub/tick

# SSロジック維持
    execute if entity @e[tag=tmw_256_sub] run schedule function ui:tmw/256/ss/2 1t append