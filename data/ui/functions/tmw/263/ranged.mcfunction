execute at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_263","tmw_263_laser","ui_temp_unpower"]}
execute at @s as @e[tag=ui_temp_unpower] rotated as @p run teleport @s ~ ~1.5 ~ ~ ~

execute at @s unless score #tmw_263_silent ui_world matches 1 run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 0.5 2 0

tag @e[tag=ui_temp_unpower] remove ui_temp_unpower