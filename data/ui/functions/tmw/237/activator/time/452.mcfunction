# ミサイル
scoreboard players operation $time ui_temp %= #2 ui_num
execute if score $time ui_temp matches 0 anchored eyes positioned ^ ^ ^ run function ui:tmw/237/activator/time/452.0
execute if score $time ui_temp matches 1 anchored eyes positioned ^ ^ ^ run function ui:tmw/237/activator/time/452.1

tag @s add ui_temp_this

execute as @e[distance=1..100,predicate=ui:load_unhurtable] unless score @s ui_id = $id ui_temp unless score @s ui_team = $team ui_temp at @s facing entity @e[tag=ui_temp_this] feet positioned ^ ^ ^1 facing entity @s feet positioned as @e[tag=ui_temp_this] positioned ^ ^ ^5 run summon marker ~ ~ ~ {Tags:["ui_temp_marker"]}
execute positioned ^ ^ ^4 run tag @e[tag=ui_temp_marker,distance=..3] add ui_temp_target
execute at @e[tag=ui_temp_target] run particle dust 0 1 0 1 ~ ~1.5 ~ 0 0 0 0 1 normal @s
execute at @e[tag=ui_temp_marker,tag=!ui_temp_target] run particle dust 1 0 0 1 ~ ~1.5 ~ 0 0 0 0 1 normal @s

tag @s remove ui_temp_this
kill @e[tag=ui_temp_marker]