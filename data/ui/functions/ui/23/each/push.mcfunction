data modify storage ui:temp temp2 set value [[],[]]

data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:0b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:1b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:2b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:3b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:4b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:5b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:6b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:7b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:8b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:9b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:10b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:11b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:12b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:13b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:14b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:15b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:16b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:17b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:18b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:19b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:20b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:21b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:22b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:23b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:24b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:25b}]
data modify storage ui:temp temp2[0] append from block ~ ~ ~ Items[{Slot:26b}]
data modify storage ui:temp temp2[1] append from block ^ ^ ^1 Items[{Slot:0b}]
data modify storage ui:temp temp2[1] append from block ^ ^ ^1 Items[{Slot:1b}]
data modify storage ui:temp temp2[1] append from block ^ ^ ^1 Items[{Slot:2b}]
data modify storage ui:temp temp2[1] append from block ^ ^ ^1 Items[{Slot:3b}]
data modify storage ui:temp temp2[1] append from block ^ ^ ^1 Items[{Slot:4b}]
data modify storage ui:temp temp2[1] append from block ^ ^ ^1 Items[{Slot:5b}]
data modify storage ui:temp temp2[1] append from block ^ ^ ^1 Items[{Slot:6b}]
data modify storage ui:temp temp2[1] append from block ^ ^ ^1 Items[{Slot:7b}]
data modify storage ui:temp temp2[1] append from block ^ ^ ^1 Items[{Slot:8b}]
data modify storage ui:temp temp2[1] append from block ^ ^ ^1 Items[{Slot:9b}]
data modify storage ui:temp temp2[1] append from block ^ ^ ^1 Items[{Slot:10b}]
data modify storage ui:temp temp2[1] append from block ^ ^ ^1 Items[{Slot:11b}]
data modify storage ui:temp temp2[1] append from block ^ ^ ^1 Items[{Slot:12b}]
data modify storage ui:temp temp2[1] append from block ^ ^ ^1 Items[{Slot:13b}]
data modify storage ui:temp temp2[1] append from block ^ ^ ^1 Items[{Slot:14b}]
data modify storage ui:temp temp2[1] append from block ^ ^ ^1 Items[{Slot:15b}]
data modify storage ui:temp temp2[1] append from block ^ ^ ^1 Items[{Slot:16b}]
data modify storage ui:temp temp2[1] append from block ^ ^ ^1 Items[{Slot:17b}]

#tellraw @a [{"storage":"ui:temp","nbt":"temp2"}]

execute if score @s ui_is2 matches 0 run data modify storage ui:temp temp_trim[0] set from storage ui:temp temp2
execute if score @s ui_is2 matches 1 run data modify storage ui:temp temp_trim[1] set from storage ui:temp temp2
execute if score @s ui_is2 matches 2 run data modify storage ui:temp temp_trim[2] set from storage ui:temp temp2
execute if score @s ui_is2 matches 3 run data modify storage ui:temp temp_trim[3] set from storage ui:temp temp2
execute if score @s ui_is2 matches 4 run data modify storage ui:temp temp_trim[4] set from storage ui:temp temp2
execute if score @s ui_is2 matches 5 run data modify storage ui:temp temp_trim[5] set from storage ui:temp temp2
execute if score @s ui_is2 matches 6 run data modify storage ui:temp temp_trim[6] set from storage ui:temp temp2
execute if score @s ui_is2 matches 7 run data modify storage ui:temp temp_trim[7] set from storage ui:temp temp2
execute if score @s ui_is2 matches 8 run data modify storage ui:temp temp_trim[8] set from storage ui:temp temp2
execute if score @s ui_is2 matches 9 run data modify storage ui:temp temp_trim[9] set from storage ui:temp temp2
execute if score @s ui_is2 matches 10 run data modify storage ui:temp temp_trim[10] set from storage ui:temp temp2
execute if score @s ui_is2 matches 11 run data modify storage ui:temp temp_trim[11] set from storage ui:temp temp2
execute if score @s ui_is2 matches 12 run data modify storage ui:temp temp_trim[12] set from storage ui:temp temp2
execute if score @s ui_is2 matches 13 run data modify storage ui:temp temp_trim[13] set from storage ui:temp temp2
execute if score @s ui_is2 matches 14 run data modify storage ui:temp temp_trim[14] set from storage ui:temp temp2
execute if score @s ui_is2 matches 15 run data modify storage ui:temp temp_trim[15] set from storage ui:temp temp2
execute if score @s ui_is2 matches 16 run data modify storage ui:temp temp_trim[16] set from storage ui:temp temp2
execute if score @s ui_is2 matches 17 run data modify storage ui:temp temp_trim[17] set from storage ui:temp temp2
execute if score @s ui_is2 matches 18 run data modify storage ui:temp temp_trim[18] set from storage ui:temp temp2
execute if score @s ui_is2 matches 19 run data modify storage ui:temp temp_trim[19] set from storage ui:temp temp2
execute if score @s ui_is2 matches 20 run data modify storage ui:temp temp_trim[20] set from storage ui:temp temp2
execute if score @s ui_is2 matches 21 run data modify storage ui:temp temp_trim[21] set from storage ui:temp temp2
execute if score @s ui_is2 matches 22 run data modify storage ui:temp temp_trim[22] set from storage ui:temp temp2
execute if score @s ui_is2 matches 23 run data modify storage ui:temp temp_trim[23] set from storage ui:temp temp2
execute if score @s ui_is2 matches 24 run data modify storage ui:temp temp_trim[24] set from storage ui:temp temp2
execute if score @s ui_is2 matches 25 run data modify storage ui:temp temp_trim[25] set from storage ui:temp temp2
execute if score @s ui_is2 matches 26 run data modify storage ui:temp temp_trim[26] set from storage ui:temp temp2
execute if score @s ui_is2 matches 27 run data modify storage ui:temp temp_trim[27] set from storage ui:temp temp2
execute if score @s ui_is2 matches 28 run data modify storage ui:temp temp_trim[28] set from storage ui:temp temp2
execute if score @s ui_is2 matches 29 run data modify storage ui:temp temp_trim[29] set from storage ui:temp temp2
execute if score @s ui_is2 matches 30 run data modify storage ui:temp temp_trim[30] set from storage ui:temp temp2
execute if score @s ui_is2 matches 31 run data modify storage ui:temp temp_trim[31] set from storage ui:temp temp2
execute if score @s ui_is2 matches 32 run data modify storage ui:temp temp_trim[32] set from storage ui:temp temp2
execute if score @s ui_is2 matches 33 run data modify storage ui:temp temp_trim[33] set from storage ui:temp temp2
execute if score @s ui_is2 matches 34 run data modify storage ui:temp temp_trim[34] set from storage ui:temp temp2
execute if score @s ui_is2 matches 35 run data modify storage ui:temp temp_trim[35] set from storage ui:temp temp2
execute if score @s ui_is2 matches 36 run data modify storage ui:temp temp_trim[36] set from storage ui:temp temp2
execute if score @s ui_is2 matches 37 run data modify storage ui:temp temp_trim[37] set from storage ui:temp temp2
execute if score @s ui_is2 matches 38 run data modify storage ui:temp temp_trim[38] set from storage ui:temp temp2
execute if score @s ui_is2 matches 39 run data modify storage ui:temp temp_trim[39] set from storage ui:temp temp2
execute if score @s ui_is2 matches 40 run data modify storage ui:temp temp_trim[40] set from storage ui:temp temp2
execute if score @s ui_is2 matches 41 run data modify storage ui:temp temp_trim[41] set from storage ui:temp temp2
execute if score @s ui_is2 matches 42 run data modify storage ui:temp temp_trim[42] set from storage ui:temp temp2
execute if score @s ui_is2 matches 43 run data modify storage ui:temp temp_trim[43] set from storage ui:temp temp2
execute if score @s ui_is2 matches 44 run data modify storage ui:temp temp_trim[44] set from storage ui:temp temp2

#tellraw @a [{"storage":"ui:temp","nbt":"temp_trim"}]

execute if score @s ui_is matches 1 run data modify storage ui:dimensional_chest Items[0] set from storage ui:temp temp_trim
execute if score @s ui_is matches 2 run data modify storage ui:dimensional_chest Items[1] set from storage ui:temp temp_trim
execute if score @s ui_is matches 3 run data modify storage ui:dimensional_chest Items[2] set from storage ui:temp temp_trim
execute if score @s ui_is matches 4 run data modify storage ui:dimensional_chest Items[3] set from storage ui:temp temp_trim
execute if score @s ui_is matches 5 run data modify storage ui:dimensional_chest Items[4] set from storage ui:temp temp_trim
execute if score @s ui_is matches 6 run data modify storage ui:dimensional_chest Items[5] set from storage ui:temp temp_trim
execute if score @s ui_is matches 7 run data modify storage ui:dimensional_chest Items[6] set from storage ui:temp temp_trim
execute if score @s ui_is matches 8 run data modify storage ui:dimensional_chest Items[7] set from storage ui:temp temp_trim
execute if score @s ui_is matches 9 run data modify storage ui:dimensional_chest Items[8] set from storage ui:temp temp_trim

#tellraw @a [{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].Items"}]