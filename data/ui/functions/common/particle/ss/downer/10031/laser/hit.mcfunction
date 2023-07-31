tag @s add ui_temp_hit
tag @e[tag=ui_temp_target] add ui_temp_damage

tag @e[tag=ui_temp_target] remove ui_temp_target
tag @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,tag=!ui_temp_damage,distance=..25,sort=random,limit=1] add ui_temp_target
teleport @s ~ ~ ~ facing entity @e[tag=ui_temp_target,limit=1] eyes