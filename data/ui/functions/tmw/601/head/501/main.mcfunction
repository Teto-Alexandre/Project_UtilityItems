# 採掘

# 装着時演出
execute if entity @s[tag=tmw601_changed] run particle block stone ~ ~1.6 ~ 0.4 0.2 0.4 0 8
execute if entity @s[tag=tmw601_changed] run playsound block.stone.break player @a ~ ~ ~ 0.5 1

# フルセットボーナス
scoreboard players set $full ui_temp 0
execute if score $chest ui_temp matches 3501 if score $legs ui_temp matches 2501 if score $feet ui_temp matches 1501 run function ui:tmw/601/head/501/full
execute if score $full ui_temp matches 0 run function ui:tmw/601/head/501/notfull
