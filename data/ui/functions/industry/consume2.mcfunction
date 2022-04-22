scoreboard players operation @s ui_i_supitem -= @s ui_i_conitem
execute store result block ~ ~ ~ Items[{Slot:10b}].Count byte 1 run scoreboard players get @s ui_i_supitem
scoreboard players operation @s ui_i_supitem2 -= @s ui_i_conitem2
execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players get @s ui_i_supitem2
