#=======================================================================================================

scoreboard players add @s ui_tc 1
execute at @s[scores={ui_tc=100..}] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.1 15 force
execute at @s[scores={ui_tc=100..}] run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1 0
execute at @s[scores={ui_tc=100..}] as @e[tag=tmw_4_pl] run tp @s ~ ~ ~
execute at @s[scores={ui_tc=100..}] run tag @e[tag=tmw_4_pl] remove tmw_4_pl
kill @s[scores={ui_tc=100..}]

#=======================================================================================================
