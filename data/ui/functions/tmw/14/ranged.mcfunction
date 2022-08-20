#=======================================================================================================

execute at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_14","tmw_14_7","tmw_14_2"]}
execute at @s as @e[tag=tmw_14_2,sort=nearest,limit=1] rotated as @p run teleport @s ~ ~1.3 ~ ~ ~

execute at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1.5 0

execute at @s run tag @e[tag=tmw_14_2,sort=nearest,limit=1] remove tmw_14_2

#クールタイム（MPの概念がないのでとりあえず仮追加）
scoreboard players set @s ui_ct 300

#=======================================================================================================