#scoreboard players operation @s[scores={ui_i_conitem2=1..}] ui_i_supitem2 -= @s ui_i_conitem2
#execute if entity @s[scores={ui_i_conitem2=1..}] store result block ~ ~ ~ Items[7].Count byte 1 run scoreboard players get @s ui_i_supitem2
scoreboard players operation @s ui_i_supitem -= @s ui_i_conitem
execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players get @s ui_i_supitem