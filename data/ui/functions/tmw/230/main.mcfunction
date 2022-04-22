# 持っている間目線の先にボックスを表示
execute at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/230/trgbox
execute at @e[tag=tmw_230_1] run particle electric_spark ~ ~ ~ 0 0 0 0 1 force @s

# クリックで描くor消す
execute as @s[scores={ui_use1=1..}] at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/230/draw

# 近くにあるならタグ付けして実体化
tag @e[tag=tmw_230_2] remove tmw_230_2
execute at @s positioned ~ ~1 ~ run tag @e[tag=tmw_230_1,distance=..5] add tmw_230_2
execute at @e[tag=tmw_230_2] run fill ~ ~ ~ ~ ~ ~ glass replace air
execute at @e[tag=tmw_230_1,tag=!tmw_230_2] run fill ~ ~ ~ ~ ~ ~ air replace glass

# ss:持ってる人がいないなら破壊