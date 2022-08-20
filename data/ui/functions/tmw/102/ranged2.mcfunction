#=======================================================================================

scoreboard players add $base ui_tmw102_id 1

summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_102_3","tmw_102_2"]}
execute at @s as @e[tag=tmw_102_2,sort=nearest,limit=1] rotated as @p rotated ~ 0 run teleport @s ^ ^ ^2 ~ 0
scoreboard players operation @e[tag=tmw_102_2,sort=nearest,limit=1] ui_tmw102_id = $base ui_tmw102_id

playsound minecraft:entity.wither.hurt player @a ~ ~ ~ 3 0.6
execute rotated ~ 0 run particle dust 0.5 1 1 1 ^ ^1 ^1 0.5 0.5 0.5 0 20 force
execute rotated ~ 0 run particle block packed_ice ^ ^1 ^1 0.5 0.5 0.5 0 20 force

execute at @s run tag @e[tag=tmw_102_2,sort=nearest,limit=1] remove tmw_102_2

scoreboard players set @s ui_ct 40

#=======================================================================================