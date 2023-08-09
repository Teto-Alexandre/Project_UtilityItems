#
execute as @e[dx=0,dy=0,dz=0,predicate=ui:load_unhurtable,tag=!ui_temp_team,tag=!ui_temp_damaged] run tag @s add ui_temp_damaged
particle dust 1 1 1 1 ~ ~ ~ 0.5 0.5 0.5 0 5 force
