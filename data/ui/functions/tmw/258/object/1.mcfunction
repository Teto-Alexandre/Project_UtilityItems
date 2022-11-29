#
tag @s add ui_temp_this

#
scoreboard players operation $obj_id ui_temp = @s ui_is
execute as @e if score @s ui_obj_id = $obj_id ui_temp run tag @s add ui_temp_target
execute as @e[tag=ui_temp_target] at @s facing entity @e[tag=ui_temp_this] feet run teleport @s ^ ^ ^0.3
execute facing entity @e[tag=ui_temp_target] feet run particle end_rod ~ ~ ~ 0 0 0 0.05 1 force
execute facing entity @e[tag=ui_temp_target] feet run particle end_rod ^ ^ ^1 0 0 0 0.02 1 force
execute facing entity @e[tag=ui_temp_target] feet run particle end_rod ^ ^ ^2 0 0 0 0.02 1 force
execute facing entity @e[tag=ui_temp_target] feet run particle end_rod ^ ^ ^3 0 0 0 0.02 1 force
execute facing entity @e[tag=ui_temp_target] feet run particle end_rod ^ ^ ^4 0 0 0 0.02 1 force
execute facing entity @e[tag=ui_temp_target] feet run particle end_rod ^ ^ ^5 0 0 0 0.02 1 force
execute facing entity @e[tag=ui_temp_target] feet run particle end_rod ^ ^ ^6 0 0 0 0.02 1 force
execute facing entity @e[tag=ui_temp_target] feet run particle end_rod ^ ^ ^7 0 0 0 0.02 1 force
execute facing entity @e[tag=ui_temp_target] feet run particle end_rod ^ ^ ^8 0 0 0 0.02 1 force
execute facing entity @e[tag=ui_temp_target] feet run particle end_rod ^ ^ ^9 0 0 0 0.02 1 force
execute facing entity @e[tag=ui_temp_target] feet run particle end_rod ^ ^ ^10 0 0 0 0.02 1 force

tag @e[tag=ui_temp_target] remove ui_temp_target
tag @e[tag=ui_temp_this] remove ui_temp_this