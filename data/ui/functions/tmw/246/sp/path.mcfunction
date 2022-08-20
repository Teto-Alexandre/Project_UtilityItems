#=======================================================================================================

#繰り返さない
execute if score sys ui_path matches 0 run scoreboard players set calc ui_path 1
execute if score sys ui_path matches 0 run scoreboard players reset @e[tag=ui_d] ui_path
execute if score sys ui_path matches 0 run scoreboard players set @e[tag=ui_d_core] ui_path 1
execute if score sys ui_path matches 0 run tag @e[tag=ui_d_core] add ui_path_calc
execute if score sys ui_path matches 0 run scoreboard players set sys ui_path 1

#繰り返す
scoreboard players add calc ui_path 1
execute at @e[tag=ui_path_calc] positioned ~9 ~ ~ as @e[tag=ui_d,distance=..3] unless entity @s[scores={ui_path=1..}] run tag @s add ui_path_calc2
execute at @e[tag=ui_path_calc] positioned ~-9 ~ ~ as @e[tag=ui_d,distance=..3] unless entity @s[scores={ui_path=1..}] run tag @s add ui_path_calc2
execute at @e[tag=ui_path_calc] positioned ~ ~ ~9 as @e[tag=ui_d,distance=..3] unless entity @s[scores={ui_path=1..}] run tag @s add ui_path_calc2
execute at @e[tag=ui_path_calc] positioned ~ ~ ~-9 as @e[tag=ui_d,distance=..3] unless entity @s[scores={ui_path=1..}] run tag @s add ui_path_calc2
execute at @e[tag=ui_path_calc] positioned ~ ~9 ~ as @e[tag=ui_d,distance=..3] unless entity @s[scores={ui_path=1..}] run tag @s add ui_path_calc2
execute at @e[tag=ui_path_calc] positioned ~ ~-9 ~ as @e[tag=ui_d,distance=..3] unless entity @s[scores={ui_path=1..}] run tag @s add ui_path_calc2
execute as @e[tag=ui_path_calc2] run scoreboard players operation @s ui_path = calc ui_path
tag @e[tag=ui_path_calc] remove ui_path_calc
tag @e[tag=ui_path_calc2] add ui_path_calc
tag @e[tag=ui_path_calc2] remove ui_path_calc2
execute if entity @e[tag=ui_path_calc] run function ui:tmw/246/sp/path

#=======================================================================================================
