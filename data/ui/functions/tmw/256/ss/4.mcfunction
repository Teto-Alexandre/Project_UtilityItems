# 弾丸
    execute as @e[tag=tmw_256_missile] at @s run function ui:tmw/256/missile/tick

# SSロジック維持
    execute if entity @e[tag=tmw_256_missile] run schedule function ui:tmw/256/ss/4 1t append