#=======================================================================================

summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_102_1","tmw_102_2"]}
execute at @s as @e[tag=tmw_102_2,sort=nearest,limit=1] rotated as @p run teleport @s ~ ~ ~ ~ 0

playsound minecraft:block.grindstone.use player @a ~ ~ ~ 3 0.6

execute at @s run tag @e[tag=tmw_102_2,sort=nearest,limit=1] remove tmw_102_2

scoreboard players set @s ui_ct 20

#=======================================================================================