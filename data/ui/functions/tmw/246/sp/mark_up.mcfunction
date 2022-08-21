#=======================================================================================================

execute as @e[tag=ui_d,scores={ui_id=1..}] run scoreboard players operation @s ui_idc = @s ui_id
scoreboard players operation @e[tag=ui_d,scores={ui_id=1..}] ui_idc -= @s ui_id
execute as @e[tag=ui,scores={ui_id=1..}] run scoreboard players operation @s ui_idc = @s ui_id
scoreboard players operation @e[tag=ui,scores={ui_id=1..}] ui_idc -= @s ui_id

execute at @e[tag=ui_d,tag=!ui_d_nosel,tag=!ui_sel,scores={ui_idc=0}] run particle firework ~ ~ ~ 0 0 0 0.05 1 normal @s
execute at @e[tag=ui_d,tag=!ui_d_nosel,tag=ui_sel,scores={ui_idc=0}] run particle firework ~ ~ ~ 0 0 0 0.01 1 normal @s

execute at @e[tag=ui_sel_obj,tag=!ui_sel_o,scores={ui_idc=0}] run particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1 normal @s
execute at @e[tag=ui_sel_obj,tag=ui_sel_o,scores={ui_idc=0}] run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 normal @s

execute at @e[tag=ui_sel_obj2,scores={ui_idc=0}] run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 normal @s

#=======================================================================================================
