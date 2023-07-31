#
tag @e[tag=ui_temp_target] remove ui_temp_target
execute positioned ^ ^ ^15 run tag @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,distance=..20,sort=nearest,limit=1] add ui_temp_target
execute unless entity @e[tag=ui_temp_target] run summon marker ^ ^ ^15 {Tags:["ui_temp_target","ui_temp_target_marker"]}
execute at @e[tag=ui_temp_target] facing entity @s feet run teleport @s ^ ^ ^7.5
execute at @s run teleport @s ~ ~ ~ facing entity @e[tag=ui_temp_target,limit=1] eyes
kill @e[tag=ui_temp_target_marker]
tag @e[tag=ui_temp_target] remove ui_temp_target
