execute at @s run scoreboard players add @s ui_is 1
execute at @s run particle dust 1 0 0 1 ~ ~ ~ 0.5 0.5 0.5 0 5 force
execute as @s[scores={ui_is=1}] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_block replace minecraft:red_stained_glass
execute as @s[scores={ui_is=10..}] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:red_stained_glass replace minecraft:redstone_block
kill @s[scores={ui_is=10..}] 