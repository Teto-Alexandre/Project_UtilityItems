# 弾丸
    execute as @e[tag=tmw_237] at @s run function ui:tmw/237/proj/tick

# SSロジック維持
    execute if entity @e[tag=tmw_237] run schedule function ui:tmw/237/ss 1t append