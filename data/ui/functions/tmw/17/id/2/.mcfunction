# 持っている間目線の先にボックスを表示
execute at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/17/id/2/trgbox
execute at @e[tag=tmw_17_2_1] run particle electric_spark ~ ~ ~ 0 0 0 0 1 force @s

# クリックで描くor消す
execute as @s[scores={ui_use1=1..}] at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/17/id/2/draw


# ss:持ってる人がいないなら破壊