execute as @e[tag=ui_temp_particle2] at @s run summon marker ~ ~ ~ {Tags:["ui_temp_particle","ui_temp_particle1"]}
execute as @e[tag=ui_temp_particle2] at @s run teleport @s ~ ~1 ~
scoreboard players remove $temp2 ui_temp 1
execute if score $temp2 ui_temp matches 1.. run function ui:template/sphere_particle/place/y.hub