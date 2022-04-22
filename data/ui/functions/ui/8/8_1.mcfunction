#=======================================================================================================

execute at @s[scores={ui_calc1=1}] run summon minecraft:armor_stand ~-200 100 ~-200 {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["ui_8_2"]}
scoreboard players operation @e[tag=ui_8_2,sort=nearest,limit=1] ui_tc = @s ui_st
scoreboard players operation @e[tag=ui_8_2,sort=nearest,limit=1] ui_calc1 = @s ui_tc
scoreboard players set @e[tag=ui_8_2,sort=nearest,limit=1] ui_calc2 -200
execute store result score $x1 ui_calc1 run data get entity @s Pos[0] 100
execute store result score $y1 ui_calc1 run data get entity @s Pos[1] 50
execute store result score $z1 ui_calc1 run data get entity @s Pos[2] 100
execute as @e[tag=ui_8_2] at @s run function ui:ui/8/x_set
execute as @e[tag=ui_8_2] at @s run function ui:ui/8/z_move
execute as @e[tag=ui_8_3] at @s run function ui:ui/8/y
kill @e[tag=ui_8_3]

execute at @s run particle dust 1 1 1 0.8 ~ ~0.5 ~ 0.3 0.3 0.3 0 1 normal

scoreboard players add @s ui_calc1 1
scoreboard players set @s[scores={ui_calc1=4..}] ui_calc1 1
scoreboard players add @s[scores={ui_calc1=1}] ui_st 1
scoreboard players add @s[scores={ui_calc1=1}] ui_tc 10
scoreboard players set @s[scores={ui_calc1=1,ui_tc=201..}] ui_st 1
scoreboard players set @s[scores={ui_calc1=1,ui_tc=201..}] ui_tc -200

execute at @s if block ~ ~ ~ #ui:nocol run kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:end_stone"}}]
execute at @s if block ~ ~ ~ #ui:nocol run kill @s

#=======================================================================================================