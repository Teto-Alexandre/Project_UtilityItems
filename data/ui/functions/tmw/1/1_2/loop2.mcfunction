scoreboard players remove @s ui_calc1 1

execute if score @s ui_calc1 matches 30..60 at @s run teleport @s ~ ~ ~ ~6 ~1
execute if score @s ui_calc1 matches 0..29 at @s run teleport @s ~ ~ ~ ~6 ~-1

execute at @s positioned ^ ^ ^1 facing entity @s feet positioned ^ ^ ^1.5 run particle minecraft:dragon_breath ~ ~1 ~ ^ ^ ^10000 0.00002 0 force

execute if score @s ui_calc1 matches 1.. run function ui:tmw/1/1_2/loop2