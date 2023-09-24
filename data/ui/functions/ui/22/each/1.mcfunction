data remove block ~ ~ ~ Items
data remove block ^ ^ ^1 Items

#tellraw @a [{"storage":"ui:temp","nbt":"temp[0][0]"}]

execute if data storage ui:temp temp[0][0][0][{Slot:0b}] run item replace block ~ ~ ~ container.0 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:1b}] run item replace block ~ ~ ~ container.1 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:2b}] run item replace block ~ ~ ~ container.2 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:3b}] run item replace block ~ ~ ~ container.3 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:4b}] run item replace block ~ ~ ~ container.4 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:5b}] run item replace block ~ ~ ~ container.5 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:6b}] run item replace block ~ ~ ~ container.6 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:7b}] run item replace block ~ ~ ~ container.7 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:8b}] run item replace block ~ ~ ~ container.8 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:9b}] run item replace block ~ ~ ~ container.9 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:10b}] run item replace block ~ ~ ~ container.10 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:11b}] run item replace block ~ ~ ~ container.11 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:12b}] run item replace block ~ ~ ~ container.12 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:13b}] run item replace block ~ ~ ~ container.13 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:14b}] run item replace block ~ ~ ~ container.14 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:15b}] run item replace block ~ ~ ~ container.15 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:16b}] run item replace block ~ ~ ~ container.16 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:17b}] run item replace block ~ ~ ~ container.17 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:18b}] run item replace block ~ ~ ~ container.18 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:19b}] run item replace block ~ ~ ~ container.19 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:20b}] run item replace block ~ ~ ~ container.20 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:21b}] run item replace block ~ ~ ~ container.21 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:22b}] run item replace block ~ ~ ~ container.22 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:23b}] run item replace block ~ ~ ~ container.23 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:24b}] run item replace block ~ ~ ~ container.24 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:25b}] run item replace block ~ ~ ~ container.25 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:26b}] run item replace block ~ ~ ~ container.26 with stone
execute if data storage ui:temp temp[0][0][1][{Slot:0b}] run item replace block ^ ^ ^1 container.0 with stone
execute if data storage ui:temp temp[0][0][1][{Slot:1b}] run item replace block ^ ^ ^1 container.1 with stone
execute if data storage ui:temp temp[0][0][1][{Slot:2b}] run item replace block ^ ^ ^1 container.2 with stone
execute if data storage ui:temp temp[0][0][1][{Slot:3b}] run item replace block ^ ^ ^1 container.3 with stone
execute if data storage ui:temp temp[0][0][1][{Slot:4b}] run item replace block ^ ^ ^1 container.4 with stone
execute if data storage ui:temp temp[0][0][1][{Slot:5b}] run item replace block ^ ^ ^1 container.5 with stone
execute if data storage ui:temp temp[0][0][1][{Slot:6b}] run item replace block ^ ^ ^1 container.6 with stone
execute if data storage ui:temp temp[0][0][1][{Slot:7b}] run item replace block ^ ^ ^1 container.7 with stone
execute if data storage ui:temp temp[0][0][1][{Slot:8b}] run item replace block ^ ^ ^1 container.8 with stone
execute if data storage ui:temp temp[0][0][1][{Slot:9b}] run item replace block ^ ^ ^1 container.9 with stone
execute if data storage ui:temp temp[0][0][1][{Slot:10b}] run item replace block ^ ^ ^1 container.10 with stone
execute if data storage ui:temp temp[0][0][1][{Slot:11b}] run item replace block ^ ^ ^1 container.11 with stone
execute if data storage ui:temp temp[0][0][1][{Slot:12b}] run item replace block ^ ^ ^1 container.12 with stone
execute if data storage ui:temp temp[0][0][1][{Slot:13b}] run item replace block ^ ^ ^1 container.13 with stone
execute if data storage ui:temp temp[0][0][1][{Slot:14b}] run item replace block ^ ^ ^1 container.14 with stone
execute if data storage ui:temp temp[0][0][1][{Slot:15b}] run item replace block ^ ^ ^1 container.15 with stone
execute if data storage ui:temp temp[0][0][1][{Slot:16b}] run item replace block ^ ^ ^1 container.16 with stone
execute if data storage ui:temp temp[0][0][1][{Slot:17b}] run item replace block ^ ^ ^1 container.17 with stone
execute if data storage ui:temp temp[0][0][0][{Slot:0b}] run data modify block ~ ~ ~ Items[0] set from storage ui:temp temp[0][0][0][{Slot:0b}]
execute if data storage ui:temp temp[0][0][0][{Slot:1b}] run data modify block ~ ~ ~ Items[1] set from storage ui:temp temp[0][0][0][{Slot:1b}]
execute if data storage ui:temp temp[0][0][0][{Slot:2b}] run data modify block ~ ~ ~ Items[2] set from storage ui:temp temp[0][0][0][{Slot:2b}]
execute if data storage ui:temp temp[0][0][0][{Slot:3b}] run data modify block ~ ~ ~ Items[3] set from storage ui:temp temp[0][0][0][{Slot:3b}]
execute if data storage ui:temp temp[0][0][0][{Slot:4b}] run data modify block ~ ~ ~ Items[4] set from storage ui:temp temp[0][0][0][{Slot:4b}]
execute if data storage ui:temp temp[0][0][0][{Slot:5b}] run data modify block ~ ~ ~ Items[5] set from storage ui:temp temp[0][0][0][{Slot:5b}]
execute if data storage ui:temp temp[0][0][0][{Slot:6b}] run data modify block ~ ~ ~ Items[6] set from storage ui:temp temp[0][0][0][{Slot:6b}]
execute if data storage ui:temp temp[0][0][0][{Slot:7b}] run data modify block ~ ~ ~ Items[7] set from storage ui:temp temp[0][0][0][{Slot:7b}]
execute if data storage ui:temp temp[0][0][0][{Slot:8b}] run data modify block ~ ~ ~ Items[8] set from storage ui:temp temp[0][0][0][{Slot:8b}]
execute if data storage ui:temp temp[0][0][0][{Slot:9b}] run data modify block ~ ~ ~ Items[9] set from storage ui:temp temp[0][0][0][{Slot:9b}]
execute if data storage ui:temp temp[0][0][0][{Slot:10b}] run data modify block ~ ~ ~ Items[10] set from storage ui:temp temp[0][0][0][{Slot:10b}]
execute if data storage ui:temp temp[0][0][0][{Slot:11b}] run data modify block ~ ~ ~ Items[11] set from storage ui:temp temp[0][0][0][{Slot:11b}]
execute if data storage ui:temp temp[0][0][0][{Slot:12b}] run data modify block ~ ~ ~ Items[12] set from storage ui:temp temp[0][0][0][{Slot:12b}]
execute if data storage ui:temp temp[0][0][0][{Slot:13b}] run data modify block ~ ~ ~ Items[13] set from storage ui:temp temp[0][0][0][{Slot:13b}]
execute if data storage ui:temp temp[0][0][0][{Slot:14b}] run data modify block ~ ~ ~ Items[14] set from storage ui:temp temp[0][0][0][{Slot:14b}]
execute if data storage ui:temp temp[0][0][0][{Slot:15b}] run data modify block ~ ~ ~ Items[15] set from storage ui:temp temp[0][0][0][{Slot:15b}]
execute if data storage ui:temp temp[0][0][0][{Slot:16b}] run data modify block ~ ~ ~ Items[16] set from storage ui:temp temp[0][0][0][{Slot:16b}]
execute if data storage ui:temp temp[0][0][0][{Slot:17b}] run data modify block ~ ~ ~ Items[17] set from storage ui:temp temp[0][0][0][{Slot:17b}]
execute if data storage ui:temp temp[0][0][0][{Slot:18b}] run data modify block ~ ~ ~ Items[18] set from storage ui:temp temp[0][0][0][{Slot:18b}]
execute if data storage ui:temp temp[0][0][0][{Slot:19b}] run data modify block ~ ~ ~ Items[19] set from storage ui:temp temp[0][0][0][{Slot:19b}]
execute if data storage ui:temp temp[0][0][0][{Slot:20b}] run data modify block ~ ~ ~ Items[20] set from storage ui:temp temp[0][0][0][{Slot:20b}]
execute if data storage ui:temp temp[0][0][0][{Slot:21b}] run data modify block ~ ~ ~ Items[21] set from storage ui:temp temp[0][0][0][{Slot:21b}]
execute if data storage ui:temp temp[0][0][0][{Slot:22b}] run data modify block ~ ~ ~ Items[22] set from storage ui:temp temp[0][0][0][{Slot:22b}]
execute if data storage ui:temp temp[0][0][0][{Slot:23b}] run data modify block ~ ~ ~ Items[23] set from storage ui:temp temp[0][0][0][{Slot:23b}]
execute if data storage ui:temp temp[0][0][0][{Slot:24b}] run data modify block ~ ~ ~ Items[24] set from storage ui:temp temp[0][0][0][{Slot:24b}]
execute if data storage ui:temp temp[0][0][0][{Slot:25b}] run data modify block ~ ~ ~ Items[25] set from storage ui:temp temp[0][0][0][{Slot:25b}]
execute if data storage ui:temp temp[0][0][0][{Slot:26b}] run data modify block ~ ~ ~ Items[26] set from storage ui:temp temp[0][0][0][{Slot:26b}]
execute if data storage ui:temp temp[0][0][1][{Slot:0b}] run data modify block ^ ^ ^1 Items[0] set from storage ui:temp temp[0][0][1][{Slot:0b}]
execute if data storage ui:temp temp[0][0][1][{Slot:1b}] run data modify block ^ ^ ^1 Items[1] set from storage ui:temp temp[0][0][1][{Slot:1b}]
execute if data storage ui:temp temp[0][0][1][{Slot:2b}] run data modify block ^ ^ ^1 Items[2] set from storage ui:temp temp[0][0][1][{Slot:2b}]
execute if data storage ui:temp temp[0][0][1][{Slot:3b}] run data modify block ^ ^ ^1 Items[3] set from storage ui:temp temp[0][0][1][{Slot:3b}]
execute if data storage ui:temp temp[0][0][1][{Slot:4b}] run data modify block ^ ^ ^1 Items[4] set from storage ui:temp temp[0][0][1][{Slot:4b}]
execute if data storage ui:temp temp[0][0][1][{Slot:5b}] run data modify block ^ ^ ^1 Items[5] set from storage ui:temp temp[0][0][1][{Slot:5b}]
execute if data storage ui:temp temp[0][0][1][{Slot:6b}] run data modify block ^ ^ ^1 Items[6] set from storage ui:temp temp[0][0][1][{Slot:6b}]
execute if data storage ui:temp temp[0][0][1][{Slot:7b}] run data modify block ^ ^ ^1 Items[7] set from storage ui:temp temp[0][0][1][{Slot:7b}]
execute if data storage ui:temp temp[0][0][1][{Slot:8b}] run data modify block ^ ^ ^1 Items[8] set from storage ui:temp temp[0][0][1][{Slot:8b}]
execute if data storage ui:temp temp[0][0][1][{Slot:9b}] run data modify block ^ ^ ^1 Items[9] set from storage ui:temp temp[0][0][1][{Slot:9b}]
execute if data storage ui:temp temp[0][0][1][{Slot:10b}] run data modify block ^ ^ ^1 Items[10] set from storage ui:temp temp[0][0][1][{Slot:10b}]
execute if data storage ui:temp temp[0][0][1][{Slot:11b}] run data modify block ^ ^ ^1 Items[11] set from storage ui:temp temp[0][0][1][{Slot:11b}]
execute if data storage ui:temp temp[0][0][1][{Slot:12b}] run data modify block ^ ^ ^1 Items[12] set from storage ui:temp temp[0][0][1][{Slot:12b}]
execute if data storage ui:temp temp[0][0][1][{Slot:13b}] run data modify block ^ ^ ^1 Items[13] set from storage ui:temp temp[0][0][1][{Slot:13b}]
execute if data storage ui:temp temp[0][0][1][{Slot:14b}] run data modify block ^ ^ ^1 Items[14] set from storage ui:temp temp[0][0][1][{Slot:14b}]
execute if data storage ui:temp temp[0][0][1][{Slot:15b}] run data modify block ^ ^ ^1 Items[15] set from storage ui:temp temp[0][0][1][{Slot:15b}]
execute if data storage ui:temp temp[0][0][1][{Slot:16b}] run data modify block ^ ^ ^1 Items[16] set from storage ui:temp temp[0][0][1][{Slot:16b}]
execute if data storage ui:temp temp[0][0][1][{Slot:17b}] run data modify block ^ ^ ^1 Items[17] set from storage ui:temp temp[0][0][1][{Slot:17b}]

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