#=======================================================================================================

execute as @e[tag=ui_d,scores={ui_idc=0}] run tag @s add ui_d_death
execute at @s run kill @e[tag=ui,scores={ui_idc=0}]
execute at @s run kill @s

#=======================================================================================================
