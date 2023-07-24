#=======================================================================================================

execute store result score @s ui_calc1 run data get entity @s Pos[1] 1

execute as @s[scores={ui_calc1=..-101}] at @s run effect give @s slow_falling 1 0 true
execute as @s[scores={ui_calc1=..-101}] at @s run spreadplayers ~ ~ 0 20 false @s
execute as @s[scores={ui_calc1=..-101}] at @s run particle witch ~ ~1 ~ 0.2 0.5 0.2 0.1 15 normal
execute as @s[scores={ui_calc1=..-101}] at @s run playsound block.enchantment_table.use player @a ~ ~ ~ 1 1 0

#=======================================================================================================
