# ここにリスポーンする

#
teleport @s ~ ~1 ~ ~ 0
tp @s @s

title @s clear

tag @s remove tmw_501_19_respawn
tag @s add tmw_501_19_battle
tag @s add tmw_501_19_battle_first

playsound item.trident.thunder player @a ~ ~1 ~ 1 1 0
particle flash ~ ~1 ~ 0 0 0 0 1 force
particle electric_spark ~ ~1 ~ 2 2 2 1 100 force

scoreboard players set $count ui_temp 0