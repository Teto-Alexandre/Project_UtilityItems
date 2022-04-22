#=======================================================================================================

scoreboard players remove @s ui_dhp 1
execute at @s run particle minecraft:dust 1 1 0.9 1 ~ ~1 ~ 1 1 1 0 15 force
execute at @s run particle minecraft:dust 1 1 0.3 1 ~ ~1 ~ 1 1 1 0 15 force
execute at @s run playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 1 1 0
scoreboard players set @s ui_dr 0

#=======================================================================================================
