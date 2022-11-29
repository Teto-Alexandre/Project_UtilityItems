# 弾丸
    execute as @e[tag=tmw_258_1] at @s run function ui:tmw/258/object/1

# SSロジック維持
    execute if entity @e[tag=tmw_258_1] run schedule function ui:tmw/258/ss 1t append