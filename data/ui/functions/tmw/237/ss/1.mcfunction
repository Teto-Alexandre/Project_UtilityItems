# 弾丸
    execute as @e[tag=tmw_237] at @s run function ui:tmw/237/projectile/tick

# SSロジック維持
    execute if entity @e[tag=tmw_237] run schedule function ui:tmw/237/ss/1 1t append