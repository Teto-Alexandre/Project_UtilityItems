# 弾丸
    execute as @e[tag=tmw_237_missile] at @s run function ui:tmw/237/missile/tick

# SSロジック維持
    execute if entity @e[tag=tmw_237_missile] run schedule function ui:tmw/237/ss/4 1t append