# 銃タイプ取得
execute store result score $temp ui_temp run data get entity @s SelectedItem.tag.tmw.gun.type

# アイテム転置
data modify storage ui:temp tag set from entity @s SelectedItem.tag

# 走査方式で銃タイプが合うスロットを探す
scoreboard players reset $temp3 ui_temp
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:35b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 35
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:34b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 34
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:33b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 33
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:32b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 32
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:31b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 31
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:30b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 30
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:29b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 29
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:28b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 28
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:27b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 27
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:26b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 26
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:25b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 25
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:24b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 24
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:23b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 23
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:22b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 22
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:21b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 21
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:20b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 20
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:19b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 19
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:18b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 18
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:17b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 17
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:16b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 16
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:15b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 15
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:14b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 14
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:13b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 13
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:12b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 12
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:11b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 11
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:10b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 10
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:9b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 9
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:8b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 8
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:7b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 7
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:6b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 6
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:5b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 5
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:4b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 4
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:3b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 3
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:2b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 2
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:1b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 1
execute store result score $temp2 ui_temp run data get entity @s Inventory[{Slot:0b}].tag.tmw.ammo.type
execute if score $temp ui_temp = $temp2 ui_temp run scoreboard players set $temp3 ui_temp 0

# 装填
execute if score $temp3 ui_temp matches 0 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:0b}]
execute if score $temp3 ui_temp matches 0 run item replace entity @s container.0 with air
execute if score $temp3 ui_temp matches 1 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:1b}]
execute if score $temp3 ui_temp matches 1 run item replace entity @s container.1 with air
execute if score $temp3 ui_temp matches 2 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:2b}]
execute if score $temp3 ui_temp matches 2 run item replace entity @s container.2 with air
execute if score $temp3 ui_temp matches 3 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:3b}]
execute if score $temp3 ui_temp matches 3 run item replace entity @s container.3 with air
execute if score $temp3 ui_temp matches 4 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:4b}]
execute if score $temp3 ui_temp matches 4 run item replace entity @s container.4 with air
execute if score $temp3 ui_temp matches 5 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:5b}]
execute if score $temp3 ui_temp matches 5 run item replace entity @s container.5 with air
execute if score $temp3 ui_temp matches 6 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:6b}]
execute if score $temp3 ui_temp matches 6 run item replace entity @s container.6 with air
execute if score $temp3 ui_temp matches 7 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:7b}]
execute if score $temp3 ui_temp matches 7 run item replace entity @s container.7 with air
execute if score $temp3 ui_temp matches 8 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:8b}]
execute if score $temp3 ui_temp matches 8 run item replace entity @s container.8 with air
execute if score $temp3 ui_temp matches 9 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:9b}]
execute if score $temp3 ui_temp matches 9 run item replace entity @s container.9 with air
execute if score $temp3 ui_temp matches 10 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:10b}]
execute if score $temp3 ui_temp matches 10 run item replace entity @s container.10 with air
execute if score $temp3 ui_temp matches 11 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:11b}]
execute if score $temp3 ui_temp matches 11 run item replace entity @s container.11 with air
execute if score $temp3 ui_temp matches 12 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:12b}]
execute if score $temp3 ui_temp matches 12 run item replace entity @s container.12 with air
execute if score $temp3 ui_temp matches 13 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:13b}]
execute if score $temp3 ui_temp matches 13 run item replace entity @s container.13 with air
execute if score $temp3 ui_temp matches 14 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:14b}]
execute if score $temp3 ui_temp matches 14 run item replace entity @s container.14 with air
execute if score $temp3 ui_temp matches 15 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:15b}]
execute if score $temp3 ui_temp matches 15 run item replace entity @s container.15 with air
execute if score $temp3 ui_temp matches 16 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:16b}]
execute if score $temp3 ui_temp matches 16 run item replace entity @s container.16 with air
execute if score $temp3 ui_temp matches 17 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:17b}]
execute if score $temp3 ui_temp matches 17 run item replace entity @s container.17 with air
execute if score $temp3 ui_temp matches 18 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:18b}]
execute if score $temp3 ui_temp matches 18 run item replace entity @s container.18 with air
execute if score $temp3 ui_temp matches 19 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:19b}]
execute if score $temp3 ui_temp matches 19 run item replace entity @s container.19 with air
execute if score $temp3 ui_temp matches 20 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:20b}]
execute if score $temp3 ui_temp matches 20 run item replace entity @s container.20 with air
execute if score $temp3 ui_temp matches 21 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:21b}]
execute if score $temp3 ui_temp matches 21 run item replace entity @s container.21 with air
execute if score $temp3 ui_temp matches 22 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:22b}]
execute if score $temp3 ui_temp matches 22 run item replace entity @s container.22 with air
execute if score $temp3 ui_temp matches 23 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:23b}]
execute if score $temp3 ui_temp matches 23 run item replace entity @s container.23 with air
execute if score $temp3 ui_temp matches 24 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:24b}]
execute if score $temp3 ui_temp matches 24 run item replace entity @s container.24 with air
execute if score $temp3 ui_temp matches 25 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:25b}]
execute if score $temp3 ui_temp matches 25 run item replace entity @s container.25 with air
execute if score $temp3 ui_temp matches 26 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:26b}]
execute if score $temp3 ui_temp matches 26 run item replace entity @s container.26 with air
execute if score $temp3 ui_temp matches 27 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:27b}]
execute if score $temp3 ui_temp matches 27 run item replace entity @s container.27 with air
execute if score $temp3 ui_temp matches 28 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:28b}]
execute if score $temp3 ui_temp matches 28 run item replace entity @s container.28 with air
execute if score $temp3 ui_temp matches 29 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:29b}]
execute if score $temp3 ui_temp matches 29 run item replace entity @s container.29 with air
execute if score $temp3 ui_temp matches 30 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:30b}]
execute if score $temp3 ui_temp matches 30 run item replace entity @s container.30 with air
execute if score $temp3 ui_temp matches 31 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:31b}]
execute if score $temp3 ui_temp matches 31 run item replace entity @s container.31 with air
execute if score $temp3 ui_temp matches 32 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:32b}]
execute if score $temp3 ui_temp matches 32 run item replace entity @s container.32 with air
execute if score $temp3 ui_temp matches 33 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:33b}]
execute if score $temp3 ui_temp matches 33 run item replace entity @s container.33 with air
execute if score $temp3 ui_temp matches 34 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:34b}]
execute if score $temp3 ui_temp matches 34 run item replace entity @s container.34 with air
execute if score $temp3 ui_temp matches 35 run data modify storage ui:temp tag.tmw.slots append from entity @s Inventory[{Slot:35b}]
execute if score $temp3 ui_temp matches 35 run item replace entity @s container.35 with air

# 終了
execute if score $temp3 ui_temp matches 0..35 run scoreboard players add $now_ammo ui_temp 1
execute store result storage ui:temp tag.tmw.gun.now int 1 run scoreboard players get $now_ammo ui_temp
item modify entity @s weapon.mainhand ui:tempout