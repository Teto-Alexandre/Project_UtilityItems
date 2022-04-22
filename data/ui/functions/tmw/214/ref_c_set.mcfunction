#=========================================================================================

execute facing entity @e[tag=ui_c_ref,sort=nearest,limit=1] eyes positioned ^ ^ ^5 facing entity @e[tag=ui_c_ref,sort=nearest,limit=1] eyes positioned as @s run teleport @s ^ ^ ^ ~ ~
particle crit ~ ~ ~ 0 0 0 0.2 10 force
scoreboard players operation @s ui_id = @e[tag=ui_c_ref,sort=nearest,limit=1] ui_id
tag @s add ui_refd

#=========================================================================================
