data modify storage ui:dimensional_search list_temp set from storage ui:dimensional_search list
scoreboard players operation $refresh_count ui_temp = @s ui_is3
scoreboard players remove $refresh_count ui_temp 1
execute if score $refresh_count ui_temp matches 1.. run function ui:ui/24/each/search_results/refresh2

data remove block ~ ~ ~ Items
item replace block ^ ^ ^1 container.0 with air
item replace block ^ ^ ^1 container.1 with air
item replace block ^ ^ ^1 container.2 with air
item replace block ^ ^ ^1 container.3 with air
item replace block ^ ^ ^1 container.4 with air
item replace block ^ ^ ^1 container.5 with air
item replace block ^ ^ ^1 container.6 with air
item replace block ^ ^ ^1 container.7 with air
item replace block ^ ^ ^1 container.8 with air


#tellraw @a [{"storage":"ui:dimensional_search","nbt":"list[0]"}]

execute if data storage ui:dimensional_search list_temp[0] run item replace block ~ ~ ~ container.0 with stone
execute if data storage ui:dimensional_search list_temp[1] run item replace block ~ ~ ~ container.1 with stone
execute if data storage ui:dimensional_search list_temp[2] run item replace block ~ ~ ~ container.2 with stone
execute if data storage ui:dimensional_search list_temp[3] run item replace block ~ ~ ~ container.3 with stone
execute if data storage ui:dimensional_search list_temp[4] run item replace block ~ ~ ~ container.4 with stone
execute if data storage ui:dimensional_search list_temp[5] run item replace block ~ ~ ~ container.5 with stone
execute if data storage ui:dimensional_search list_temp[6] run item replace block ~ ~ ~ container.6 with stone
execute if data storage ui:dimensional_search list_temp[7] run item replace block ~ ~ ~ container.7 with stone
execute if data storage ui:dimensional_search list_temp[8] run item replace block ~ ~ ~ container.8 with stone
execute if data storage ui:dimensional_search list_temp[9] run item replace block ~ ~ ~ container.9 with stone
execute if data storage ui:dimensional_search list_temp[10] run item replace block ~ ~ ~ container.10 with stone
execute if data storage ui:dimensional_search list_temp[11] run item replace block ~ ~ ~ container.11 with stone
execute if data storage ui:dimensional_search list_temp[12] run item replace block ~ ~ ~ container.12 with stone
execute if data storage ui:dimensional_search list_temp[13] run item replace block ~ ~ ~ container.13 with stone
execute if data storage ui:dimensional_search list_temp[14] run item replace block ~ ~ ~ container.14 with stone
execute if data storage ui:dimensional_search list_temp[15] run item replace block ~ ~ ~ container.15 with stone
execute if data storage ui:dimensional_search list_temp[16] run item replace block ~ ~ ~ container.16 with stone
execute if data storage ui:dimensional_search list_temp[17] run item replace block ~ ~ ~ container.17 with stone
execute if data storage ui:dimensional_search list_temp[18] run item replace block ~ ~ ~ container.18 with stone
execute if data storage ui:dimensional_search list_temp[19] run item replace block ~ ~ ~ container.19 with stone
execute if data storage ui:dimensional_search list_temp[20] run item replace block ~ ~ ~ container.20 with stone
execute if data storage ui:dimensional_search list_temp[21] run item replace block ~ ~ ~ container.21 with stone
execute if data storage ui:dimensional_search list_temp[22] run item replace block ~ ~ ~ container.22 with stone
execute if data storage ui:dimensional_search list_temp[23] run item replace block ~ ~ ~ container.23 with stone
execute if data storage ui:dimensional_search list_temp[24] run item replace block ~ ~ ~ container.24 with stone
execute if data storage ui:dimensional_search list_temp[25] run item replace block ~ ~ ~ container.25 with stone
execute if data storage ui:dimensional_search list_temp[26] run item replace block ~ ~ ~ container.26 with stone
execute if data storage ui:dimensional_search list_temp[27] run item replace block ^ ^ ^1 container.0 with stone
execute if data storage ui:dimensional_search list_temp[28] run item replace block ^ ^ ^1 container.1 with stone
execute if data storage ui:dimensional_search list_temp[29] run item replace block ^ ^ ^1 container.2 with stone
execute if data storage ui:dimensional_search list_temp[30] run item replace block ^ ^ ^1 container.3 with stone
execute if data storage ui:dimensional_search list_temp[31] run item replace block ^ ^ ^1 container.4 with stone
execute if data storage ui:dimensional_search list_temp[32] run item replace block ^ ^ ^1 container.5 with stone
execute if data storage ui:dimensional_search list_temp[33] run item replace block ^ ^ ^1 container.6 with stone
execute if data storage ui:dimensional_search list_temp[34] run item replace block ^ ^ ^1 container.7 with stone
execute if data storage ui:dimensional_search list_temp[35] run item replace block ^ ^ ^1 container.8 with stone

execute if data storage ui:dimensional_search list_temp[0] run data modify block ~ ~ ~ Items[{Slot:0b}] merge from storage ui:dimensional_search list_temp[0]
execute if data storage ui:dimensional_search list_temp[1] run data modify block ~ ~ ~ Items[{Slot:1b}] merge from storage ui:dimensional_search list_temp[1]
execute if data storage ui:dimensional_search list_temp[2] run data modify block ~ ~ ~ Items[{Slot:2b}] merge from storage ui:dimensional_search list_temp[2]
execute if data storage ui:dimensional_search list_temp[3] run data modify block ~ ~ ~ Items[{Slot:3b}] merge from storage ui:dimensional_search list_temp[3]
execute if data storage ui:dimensional_search list_temp[4] run data modify block ~ ~ ~ Items[{Slot:4b}] merge from storage ui:dimensional_search list_temp[4]
execute if data storage ui:dimensional_search list_temp[5] run data modify block ~ ~ ~ Items[{Slot:5b}] merge from storage ui:dimensional_search list_temp[5]
execute if data storage ui:dimensional_search list_temp[6] run data modify block ~ ~ ~ Items[{Slot:6b}] merge from storage ui:dimensional_search list_temp[6]
execute if data storage ui:dimensional_search list_temp[7] run data modify block ~ ~ ~ Items[{Slot:7b}] merge from storage ui:dimensional_search list_temp[7]
execute if data storage ui:dimensional_search list_temp[8] run data modify block ~ ~ ~ Items[{Slot:8b}] merge from storage ui:dimensional_search list_temp[8]
execute if data storage ui:dimensional_search list_temp[9] run data modify block ~ ~ ~ Items[{Slot:9b}] merge from storage ui:dimensional_search list_temp[9]
execute if data storage ui:dimensional_search list_temp[10] run data modify block ~ ~ ~ Items[{Slot:10b}] merge from storage ui:dimensional_search list_temp[10]
execute if data storage ui:dimensional_search list_temp[11] run data modify block ~ ~ ~ Items[{Slot:11b}] merge from storage ui:dimensional_search list_temp[11]
execute if data storage ui:dimensional_search list_temp[12] run data modify block ~ ~ ~ Items[{Slot:12b}] merge from storage ui:dimensional_search list_temp[12]
execute if data storage ui:dimensional_search list_temp[13] run data modify block ~ ~ ~ Items[{Slot:13b}] merge from storage ui:dimensional_search list_temp[13]
execute if data storage ui:dimensional_search list_temp[14] run data modify block ~ ~ ~ Items[{Slot:14b}] merge from storage ui:dimensional_search list_temp[14]
execute if data storage ui:dimensional_search list_temp[15] run data modify block ~ ~ ~ Items[{Slot:15b}] merge from storage ui:dimensional_search list_temp[15]
execute if data storage ui:dimensional_search list_temp[16] run data modify block ~ ~ ~ Items[{Slot:16b}] merge from storage ui:dimensional_search list_temp[16]
execute if data storage ui:dimensional_search list_temp[17] run data modify block ~ ~ ~ Items[{Slot:17b}] merge from storage ui:dimensional_search list_temp[17]
execute if data storage ui:dimensional_search list_temp[18] run data modify block ~ ~ ~ Items[{Slot:18b}] merge from storage ui:dimensional_search list_temp[18]
execute if data storage ui:dimensional_search list_temp[19] run data modify block ~ ~ ~ Items[{Slot:19b}] merge from storage ui:dimensional_search list_temp[19]
execute if data storage ui:dimensional_search list_temp[20] run data modify block ~ ~ ~ Items[{Slot:20b}] merge from storage ui:dimensional_search list_temp[20]
execute if data storage ui:dimensional_search list_temp[21] run data modify block ~ ~ ~ Items[{Slot:21b}] merge from storage ui:dimensional_search list_temp[21]
execute if data storage ui:dimensional_search list_temp[22] run data modify block ~ ~ ~ Items[{Slot:22b}] merge from storage ui:dimensional_search list_temp[22]
execute if data storage ui:dimensional_search list_temp[23] run data modify block ~ ~ ~ Items[{Slot:23b}] merge from storage ui:dimensional_search list_temp[23]
execute if data storage ui:dimensional_search list_temp[24] run data modify block ~ ~ ~ Items[{Slot:24b}] merge from storage ui:dimensional_search list_temp[24]
execute if data storage ui:dimensional_search list_temp[25] run data modify block ~ ~ ~ Items[{Slot:25b}] merge from storage ui:dimensional_search list_temp[25]
execute if data storage ui:dimensional_search list_temp[26] run data modify block ~ ~ ~ Items[{Slot:26b}] merge from storage ui:dimensional_search list_temp[26]
execute if data storage ui:dimensional_search list_temp[27] run data modify block ^ ^ ^1 Items[{Slot:0b}] merge from storage ui:dimensional_search list_temp[27]
execute if data storage ui:dimensional_search list_temp[28] run data modify block ^ ^ ^1 Items[{Slot:1b}] merge from storage ui:dimensional_search list_temp[28]
execute if data storage ui:dimensional_search list_temp[29] run data modify block ^ ^ ^1 Items[{Slot:2b}] merge from storage ui:dimensional_search list_temp[29]
execute if data storage ui:dimensional_search list_temp[30] run data modify block ^ ^ ^1 Items[{Slot:3b}] merge from storage ui:dimensional_search list_temp[30]
execute if data storage ui:dimensional_search list_temp[31] run data modify block ^ ^ ^1 Items[{Slot:4b}] merge from storage ui:dimensional_search list_temp[31]
execute if data storage ui:dimensional_search list_temp[32] run data modify block ^ ^ ^1 Items[{Slot:5b}] merge from storage ui:dimensional_search list_temp[32]
execute if data storage ui:dimensional_search list_temp[33] run data modify block ^ ^ ^1 Items[{Slot:6b}] merge from storage ui:dimensional_search list_temp[33]
execute if data storage ui:dimensional_search list_temp[34] run data modify block ^ ^ ^1 Items[{Slot:7b}] merge from storage ui:dimensional_search list_temp[34]
execute if data storage ui:dimensional_search list_temp[35] run data modify block ^ ^ ^1 Items[{Slot:8b}] merge from storage ui:dimensional_search list_temp[35]

item replace block ^ ^ ^1 container.18 with black_wool{display:{Name:'{"text":"Page 1","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.19 with black_wool{display:{Name:'{"text":"Page 2","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.20 with black_wool{display:{Name:'{"text":"Page 3","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.21 with black_wool{display:{Name:'{"text":"Page 4","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.22 with black_wool{display:{Name:'{"text":"Page 5","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.23 with black_wool{display:{Name:'{"text":"Page 6","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.24 with black_wool{display:{Name:'{"text":"Page 7","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.25 with black_wool{display:{Name:'{"text":"Page 8","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.26 with black_wool{display:{Name:'{"text":"Page 9","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
execute if score @s ui_is matches 1 run item replace block ^ ^ ^1 container.18 with white_wool{display:{Name:'{"text":"Page 1","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
execute if score @s ui_is matches 2 run item replace block ^ ^ ^1 container.19 with white_wool{display:{Name:'{"text":"Page 2","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
execute if score @s ui_is matches 3 run item replace block ^ ^ ^1 container.20 with white_wool{display:{Name:'{"text":"Page 3","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
execute if score @s ui_is matches 4 run item replace block ^ ^ ^1 container.21 with white_wool{display:{Name:'{"text":"Page 4","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
execute if score @s ui_is matches 5 run item replace block ^ ^ ^1 container.22 with white_wool{display:{Name:'{"text":"Page 5","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
execute if score @s ui_is matches 6 run item replace block ^ ^ ^1 container.23 with white_wool{display:{Name:'{"text":"Page 6","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
execute if score @s ui_is matches 7 run item replace block ^ ^ ^1 container.24 with white_wool{display:{Name:'{"text":"Page 7","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
execute if score @s ui_is matches 8 run item replace block ^ ^ ^1 container.25 with white_wool{display:{Name:'{"text":"Page 8","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
execute if score @s ui_is matches 9 run item replace block ^ ^ ^1 container.26 with white_wool{display:{Name:'{"text":"Page 9","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}