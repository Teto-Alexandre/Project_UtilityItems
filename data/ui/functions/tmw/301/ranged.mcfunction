#=======================================================================================================

execute at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","ui_301_1","ui_301_2"]}
execute at @s as @e[tag=ui_301_2,sort=nearest,limit=1] rotated as @p run teleport @s ~ ~1.3 ~ ~ ~

execute at @s run scoreboard players operation @e[tag=ui_301_2,sort=nearest,limit=1] ui_id = @s ui_id

execute at @s run playsound minecraft:block.iron_trapdoor.open master @a ~ ~ ~ 1 1.5 0

execute at @s run tag @e[tag=ui_301_2,sort=nearest,limit=1] remove ui_301_2

#=======================================================================================================