# 弾丸
    execute as @e[tag=tmw_238] at @s run function ui:tmw/238/projectile/tick

# SSロジック維持
    execute if entity @e[tag=tmw_238] run schedule function ui:tmw/238/ss 1t append