# 弾丸
    execute as @e[tag=tmw_235] at @s run function ui:tmw/235/proj/tick

# SSロジック維持
    execute if entity @e[tag=tmw_235] run schedule function ui:tmw/235/ss 1t append