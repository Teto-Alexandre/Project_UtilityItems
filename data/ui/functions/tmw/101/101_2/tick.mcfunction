
scoreboard players add @s ui_ft 1
execute as @s at @p rotated ~ -90 run teleport @s ~ ~ ~ ~ ~
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_101_2_1"]}
execute rotated as @s run teleport @e[tag=tmw_101_2_1] ^ ^ ^5 ~ ~
execute as @e[tag=tmw_101_2_1] at @s run function ui:tmw/101/101_2/laser

scoreboard players set @s[scores={ui_ft=40}] ui_fc 100
execute as @s[scores={ui_ft=40}] at @s run function ui:tmw/101/101_2/loop