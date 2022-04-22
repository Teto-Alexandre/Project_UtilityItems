#=======================================================================================

execute at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["ui_temp","ui_temp2"]}
execute at @s as @e[tag=ui_temp2,sort=nearest,limit=1] rotated as @p run teleport @s ~ ~1.3 ~ ~ ~

execute at @s run playsound minecraft:block.grass.break player @a ~ ~ ~ 1 1 0
execute at @s run playsound minecraft:block.chest.open player @a ~ ~ ~ 1 1.4 0

execute at @s run tag @e[tag=ui_temp2,sort=nearest,limit=1] remove ui_temp2

#=======================================================================================