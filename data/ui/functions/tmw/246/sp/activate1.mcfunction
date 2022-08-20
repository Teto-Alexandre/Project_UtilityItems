#=======================================================================================================

execute as @s at @s positioned ~9 ~ ~ if entity @e[tag=ui_d,distance=..1] at @s run fill ~5 ~-2 ~-1 ~4 ~ ~1 air destroy
execute as @s at @s positioned ~-9 ~ ~ if entity @e[tag=ui_d,distance=..1] at @s run fill ~-5 ~-2 ~-1 ~-4 ~ ~1 air destroy
execute as @s at @s positioned ~ ~ ~9 if entity @e[tag=ui_d,distance=..1] at @s run fill ~-1 ~-2 ~5 ~1 ~ ~4 air destroy
execute as @s at @s positioned ~ ~ ~-9 if entity @e[tag=ui_d,distance=..1] at @s run fill ~-1 ~-2 ~-5 ~1 ~ ~-4 air destroy

execute at @s run tag @s remove ui_d_block
execute at @s run tag @s remove ui_d_glass
execute at @s run tag @s remove ui_d_normal

execute at @s if entity @a[scores={ui_idc=0,ui_trg2=1}] run tag @s add ui_d_core

execute as @e[tag=ui_base,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg2=1}] run scoreboard players add @s ui_core 1

#処理完了
tag @s remove ui_sel_obj1-2
scoreboard players reset @a[scores={ui_idc=0,ui_trg2=1..}] ui_trg2
execute as @e[tag=ui_sel,scores={ui_idc=0}] run tag @s remove ui_sel
execute as @e[tag=ui_sel_obj,scores={ui_idc=0}] run kill @s
execute as @e[tag=ui_sel_obj2,scores={ui_idc=0}] run kill @s

#=======================================================================================================
