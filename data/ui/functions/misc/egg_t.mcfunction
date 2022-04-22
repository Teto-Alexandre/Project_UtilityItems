#=======================================================================================================

execute as @s[tag=ui_egg_t_1] at @s run loot spawn ~ ~ ~ loot ui:recipe/set1
execute as @s[tag=ui_egg_t_1] at @s run playsound ui:pack.item player @a ~ ~ ~ 1 1 0
execute as @s[tag=ui_egg_t_2] at @s run loot spawn ~ ~ ~ loot ui:recipe/set2
execute as @s[tag=ui_egg_t_2] at @s run playsound ui:pack.item player @a ~ ~ ~ 1 1 0
execute as @s[tag=ui_egg_t_3] at @s run loot spawn ~ ~ ~ loot ui:recipe/set3
execute as @s[tag=ui_egg_t_3] at @s run playsound ui:pack.item player @a ~ ~ ~ 1 1 0
execute as @s[tag=ui_egg_t_4] at @s run loot spawn ~ ~ ~ loot ui:recipe/industry
execute as @s[tag=ui_egg_t_4] at @s run playsound ui:pack.item player @a ~ ~ ~ 1 1 0
execute as @s[tag=ui_egg_t_5] at @s run loot spawn ~ ~ ~ loot ui:recipe/set0
execute as @s[tag=ui_egg_t_5] at @s run playsound ui:pack.item player @a ~ ~ ~ 1 1 0

execute as @s[tag=ui_egg_t_11] at @s run loot spawn ~ ~ ~ loot ui:loot/first
execute as @s[tag=ui_egg_t_11] at @s run playsound ui:pack.item player @a ~ ~ ~ 1 1 0
execute as @s[tag=ui_egg_t_12] at @s run loot spawn ~ ~ ~ loot minecraft:chests/simple_dungeon
execute as @s[tag=ui_egg_t_12] at @s run playsound ui:pack.item player @a ~ ~ ~ 1 1 0
execute as @s[tag=ui_egg_t_13] at @s run loot spawn ~ ~ ~ loot minecraft:chests/jungle_temple
execute as @s[tag=ui_egg_t_13] at @s run playsound ui:pack.item player @a ~ ~ ~ 1 1 0
execute as @s[tag=ui_egg_t_14] at @s run loot spawn ~ ~ ~ loot minecraft:chests/stronghold_corridor
execute as @s[tag=ui_egg_t_14] at @s run playsound ui:pack.item player @a ~ ~ ~ 1 1 0
execute as @s[tag=ui_egg_t_15] at @s run loot spawn ~ ~ ~ loot minecraft:chests/nether_bridge
execute as @s[tag=ui_egg_t_15] at @s run playsound ui:pack.item player @a ~ ~ ~ 1 1 0
execute as @s[tag=ui_egg_t_16] at @s run loot spawn ~ ~ ~ loot minecraft:chests/end_city_treasure
execute as @s[tag=ui_egg_t_16] at @s run playsound ui:pack.item player @a ~ ~ ~ 1 1 0
execute as @s[tag=ui_egg_t_17] at @s run loot spawn ~ ~ ~ loot ui:loot/res1
execute as @s[tag=ui_egg_t_17] at @s run playsound ui:pack.item player @a ~ ~ ~ 1 1 0
execute as @s[tag=ui_egg_t_18] at @s run loot spawn ~ ~ ~ loot ui:loot/res2
execute as @s[tag=ui_egg_t_18] at @s run playsound ui:pack.item player @a ~ ~ ~ 1 1 0

teleport @s 0 -200 0
kill @s

#=======================================================================================================
