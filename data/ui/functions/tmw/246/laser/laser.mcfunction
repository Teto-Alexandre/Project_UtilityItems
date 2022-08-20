#=======================================================================================================

scoreboard players add @s ui_use1 1

execute at @s run teleport @s ^ ^ ^0.5

execute at @s if entity @e[tag=ui_d,tag=!ui_sel,distance=..1] run tag @s add ui_sel_d
execute at @s run tag @e[tag=ui_d,tag=!ui_sel,tag=!ui_d_nosel,distance=..1] add ui_seld
execute at @s run tag @e[tag=ui_d,tag=!ui_sel,tag=!ui_d_nosel,distance=..1] add ui_sel

execute at @s if entity @e[tag=ui_sel_obj,tag=!ui_sel_o,distance=..1] run tag @s add ui_sel_d
execute at @s run tag @e[tag=ui_sel_obj,tag=!ui_sel_o,distance=..1] add ui_seld_o
execute at @s run tag @e[tag=ui_sel_obj,tag=!ui_sel_o,distance=..1] add ui_sel_o

execute at @s run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force @a[nbt={SelectedItem:{tag:{ui:{use:1}}}}]

kill @s[scores={ui_use1=100..}]
kill @s[tag=ui_sel_d]

execute as @s[scores={ui_use1=..99},tag=!ui_sel_d] at @s run function ui:tmw/246/laser/laser

#=======================================================================================================