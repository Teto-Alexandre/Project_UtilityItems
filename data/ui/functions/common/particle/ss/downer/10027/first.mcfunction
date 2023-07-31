#
tag @e[tag=ui_temp_target] remove ui_temp_target
execute positioned ^ ^ ^15 run tag @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,distance=..20,sort=nearest,limit=1] add ui_temp_target
execute unless entity @e[tag=ui_temp_target] run summon marker ^ ^ ^15 {Tags:["ui_temp_target","ui_temp_target_marker"]}
execute at @e[tag=ui_temp_target] run teleport @s ~ ~ ~
execute as @s run function ui:template/square_shuffle
execute as @s run function ui:template/square_shuffle
execute at @e[tag=ui_temp_target] facing entity @s feet run teleport @s ^ ^ ^5
execute at @s run teleport @s ~ ~ ~ facing entity @e[tag=ui_temp_target,limit=1] eyes
execute at @s run summon marker ^ ^ ^1.1 {Tags:["ui_temp_square_shuffle"]}
execute as @e[tag=ui_temp_square_shuffle] run function ui:template/square_shuffle
execute at @s run teleport @s ~ ~ ~ facing entity @e[tag=ui_temp_square_shuffle,limit=1] feet
kill @e[tag=ui_temp_square_shuffle]
kill @e[tag=ui_temp_target_marker]
tag @e[tag=ui_temp_target] remove ui_temp_target

#scoreboard players set $mod ui_calc1 9
#function ui:common/rand
#scoreboard players operation @s ui_is += $rand ui_calc1
