scoreboard players remove @s ui_calc1 1

execute at @s run teleport @s ~ ~ ~ ~2 0
execute at @s positioned ^ ^ ^1 facing entity @s feet positioned ^ ^ ^1.5 run particle minecraft:soul_fire_flame ~ ~0.6 ~ ^ ^ ^10000 0.00006 0 force
execute at @s positioned ^ ^ ^1 facing entity @s feet positioned ^ ^ ^1.5 run particle minecraft:soul_fire_flame ~ ~0.3 ~ ^ ^ ^10000 0.00009 0 force
execute at @s run teleport @s ~ ~ ~ ~2 0
execute at @s positioned ^ ^ ^1 facing entity @s feet positioned ^ ^ ^1.5 run particle minecraft:soul_fire_flame ~ ~0.5 ~ ^ ^ ^10000 0.00007 0 force
execute at @s positioned ^ ^ ^1 facing entity @s feet positioned ^ ^ ^1.5 run particle minecraft:soul_fire_flame ~ ~0.2 ~ ^ ^ ^10000 0.00010 0 force
execute at @s run teleport @s ~ ~ ~ ~2 0
execute at @s positioned ^ ^ ^1 facing entity @s feet positioned ^ ^ ^1.5 run particle minecraft:soul_fire_flame ~ ~0.4 ~ ^ ^ ^10000 0.00008 0 force
execute at @s positioned ^ ^ ^1 facing entity @s feet positioned ^ ^ ^1.5 run particle minecraft:soul_fire_flame ~ ~0.1 ~ ^ ^ ^10000 0.00011 0 force

execute if score @s ui_calc1 matches 1.. at @s run function ui:tmw/2/2_1/loop