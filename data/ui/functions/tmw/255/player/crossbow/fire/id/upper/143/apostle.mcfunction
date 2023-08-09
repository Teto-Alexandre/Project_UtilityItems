execute as @e[predicate=ui:load_unhurtable] if score @s ui_obj_id = #apostle ui_world run tag @s add ui_temp_obj

execute unless entity @e[tag=ui_temp_obj] positioned ^ ^ ^2 as @e[predicate=ui:load_unhurtable,tag=!ui_temp_this,distance=..2,sort=nearest,limit=1] run function ui:tmw/255/player/crossbow/fire/id/upper/143/apostle2

execute at @e[tag=ui_temp_obj,type=!player] run tag @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,tag=!ui_temp_obj,tag=!ui_temp_target,sort=nearest,limit=1] add ui_common_mob_target
execute unless entity @e[tag=ui_common_mob_target] at @e[tag=ui_temp_obj,type=!player] run tag @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,tag=!ui_temp_obj,sort=nearest,limit=1] add ui_common_mob_target
execute if entity @e[tag=ui_temp_obj,type=!player] at @e[tag=ui_common_mob_target] run particle dust 1 0 0 1 ~ ~3 ~ 0 1 0 0 30 force
execute if entity @e[tag=ui_temp_obj,type=!player] run data merge storage ui:common {input:{Mode:"set_target"}}
execute as @e[tag=ui_temp_obj,type=!player] run function ui:common/mob

effect give @e[tag=ui_temp_obj] haste 1000000 3 true
effect give @e[tag=ui_temp_obj] strength 1000000 3 true
effect give @e[tag=ui_temp_obj] resistance 1000000 3 true
effect give @e[tag=ui_temp_obj] speed 1000000 3 true
execute at @e[tag=ui_temp_obj] run particle firework ~ ~2 ~ 0.5 0.1 0.5 0 30 force

tag @e[tag=ui_temp_obj] remove ui_temp_obj