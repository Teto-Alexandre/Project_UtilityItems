#=======================================================================================================

execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_13_2","tmw_13_2_1","tmw_13_2_2"]}
execute as @s at @s run scoreboard players operation @e[tag=tmw_13_2_1] ui_id = @s ui_id
execute as @s at @s run tag @e[tag=tmw_13_2_1] remove tmw_13_2_1
execute as @s at @a[scores={ui_tmw_id=13}] run playsound entity.arrow.hit master @p ~ ~ ~ 1 1.5 1
kill @s

#=======================================================================================================