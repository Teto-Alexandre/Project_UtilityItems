#=======================================================================================================

execute store result entity @s Motion[0] double 0.01 run data get entity @s Motion[0] 1000
execute store result entity @s Motion[2] double 0.01 run data get entity @s Motion[2] 1000

tag @s add tmw_208_1

#=======================================================================================================
