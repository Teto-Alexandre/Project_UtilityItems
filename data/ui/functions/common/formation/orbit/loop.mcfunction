# 軌道配置ループ

#
execute as @e[tag=ui_temp_common_formation_x] at @e[tag=ui_temp_common_formation_p,limit=1] facing entity @e[tag=ui_temp_common_formation_q,limit=1] feet facing ^ ^1 ^ positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^10 facing entity @e[tag=ui_temp_common_formation_p,limit=1] feet positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^-10 facing entity @e[tag=ui_temp_common_formation_p,limit=1] feet positioned as @e[tag=ui_temp_common_formation_p,limit=1] positioned ^ ^ ^2000 facing entity @e[tag=ui_temp_common_formation_q,limit=1] feet positioned ^ ^ ^2000 rotated as @s run tp @s ~ ~ ~ ~ 0
execute store result entity @e[tag=ui_temp_common_formation_x,limit=1] Rotation[0] float 0.01 run scoreboard players operation $rotator ui_temp += $round ui_temp
execute at @e[tag=ui_temp_common_formation_x,limit=1] run summon marker ~ ~ ~ {Tags:["ui_temp_common_formation_marker"]}

#
scoreboard players remove $num ui_temp 1
execute if score $num ui_temp matches 1.. run function ui:common/formation/orbit/loop
