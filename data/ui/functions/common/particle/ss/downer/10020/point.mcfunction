#
execute as @e[dx=0,dy=0,dz=0,predicate=ui:load_unhurtable,tag=!ui_temp_team,tag=!ui_temp_damaged] run tag @s add ui_temp_damaged
particle end_rod ~ ~ ~ 0 0 0 1000000 1 force
