#=======================================================================================================

scoreboard players add @s ui_calc2 10

summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["ui_9_3"]}
scoreboard players operation @e[tag=ui_9_3,sort=nearest,limit=1] ui_calc1 = @s ui_calc1
scoreboard players operation @e[tag=ui_9_3,sort=nearest,limit=1] ui_calc2 = @s ui_calc2
scoreboard players set @e[tag=ui_9_3,sort=nearest,limit=1] ui_calc3 100

teleport @s ~ ~ ~10

execute as @s[scores={ui_calc2=..199}] at @s run function ui:ui/9/z_move
kill @s[scores={ui_calc2=200..}]

#=======================================================================================================