# デッキ編集機能

# 自分のデッキをアイテムから呼び出し
data modify storage ui:temp temp set from entity @s SelectedItem.tag.tmw
data modify storage ui:temp temp2.list set from storage ui:temp temp.cg.list

#
#data modify storage ui:temp temp2.string set string entity @s SelectedItem.tag.display.Name 9 -2
##data modify storage ui:temp temp2.string set string entity @s SelectedItem.tag.display.Name 1 -1

# このアイテムの名前の鍵付きドロッパーとドロッパーコアを召喚、同じid(obj_idではない)を付与する
execute if block ~ ~2 ~ #ui:nocol run summon marker ~ ~2 ~ {Tags:["tmw272_deck_dropper_core","tmw272_temp_unpower"]}
execute as @e[tag=tmw272_temp_unpower] at @s run setblock ~ ~ ~ barrel[facing=down]{CustomName:'{"text":"Null"}',Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{ui:{ismenu:1}}},{Slot:1b,id:"minecraft:stone",Count:2b,tag:{ui:{ismenu:1}}},{Slot:2b,id:"minecraft:stone",Count:3b,tag:{ui:{ismenu:1}}},{Slot:3b,id:"minecraft:stone",Count:4b,tag:{ui:{ismenu:1}}},{Slot:4b,id:"minecraft:stone",Count:5b,tag:{ui:{ismenu:1}}},{Slot:5b,id:"minecraft:stone",Count:6b,tag:{ui:{ismenu:1}}},{Slot:6b,id:"minecraft:stone",Count:7b,tag:{ui:{ismenu:1}}},{Slot:7b,id:"minecraft:stone",Count:8b,tag:{ui:{ismenu:1}}},{Slot:8b,id:"minecraft:stone",Count:9b,tag:{ui:{ismenu:1}}},{Slot:9b,id:"minecraft:stone",Count:10b,tag:{ui:{ismenu:1}}},{Slot:10b,id:"minecraft:stone",Count:11b,tag:{ui:{ismenu:1}}},{Slot:11b,id:"minecraft:stone",Count:12b,tag:{ui:{ismenu:1}}},{Slot:12b,id:"minecraft:stone",Count:13b,tag:{ui:{ismenu:1}}},{Slot:13b,id:"minecraft:stone",Count:14b,tag:{ui:{ismenu:1}}},{Slot:14b,id:"minecraft:stone",Count:15b,tag:{ui:{ismenu:1}}},{Slot:15b,id:"minecraft:stone",Count:16b,tag:{ui:{ismenu:1}}},{Slot:16b,id:"minecraft:stone",Count:17b,tag:{ui:{ismenu:1}}},{Slot:17b,id:"minecraft:stone",Count:18b,tag:{ui:{ismenu:1}}},{Slot:18b,id:"minecraft:stone",Count:19b,tag:{ui:{ismenu:1}}},{Slot:19b,id:"minecraft:stone",Count:20b,tag:{ui:{ismenu:1}}},{Slot:20b,id:"minecraft:stone",Count:21b,tag:{ui:{ismenu:1}}},{Slot:21b,id:"minecraft:stone",Count:22b,tag:{ui:{ismenu:1}}},{Slot:22b,id:"minecraft:stone",Count:23b,tag:{ui:{ismenu:1}}},{Slot:23b,id:"minecraft:stone",Count:24b,tag:{ui:{ismenu:1}}},{Slot:24b,id:"minecraft:stone",Count:25b,tag:{ui:{ismenu:1}}},{Slot:25b,id:"minecraft:stone",Count:26b,tag:{ui:{ismenu:1}}},{Slot:26b,id:"minecraft:stone",Count:27b,tag:{ui:{ismenu:1}}}]}
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ CustomName set from entity @a[tag=ui_temp_player,limit=1] SelectedItem.tag.display.Name
#execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Lock set from storage ui:temp temp2.string
execute as @e[tag=tmw272_temp_unpower] at @s run scoreboard players operation @s ui_id = $id ui_temp

# ドロッパーの中に呼び出したデッキリストを入れる
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[26] set from storage ui:temp temp2.list[{Slot:26b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[25] set from storage ui:temp temp2.list[{Slot:25b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[24] set from storage ui:temp temp2.list[{Slot:24b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[23] set from storage ui:temp temp2.list[{Slot:23b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[22] set from storage ui:temp temp2.list[{Slot:22b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[21] set from storage ui:temp temp2.list[{Slot:21b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[20] set from storage ui:temp temp2.list[{Slot:20b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[19] set from storage ui:temp temp2.list[{Slot:19b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[18] set from storage ui:temp temp2.list[{Slot:18b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[17] set from storage ui:temp temp2.list[{Slot:17b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[16] set from storage ui:temp temp2.list[{Slot:16b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[15] set from storage ui:temp temp2.list[{Slot:15b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[14] set from storage ui:temp temp2.list[{Slot:14b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[13] set from storage ui:temp temp2.list[{Slot:13b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[12] set from storage ui:temp temp2.list[{Slot:12b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[11] set from storage ui:temp temp2.list[{Slot:11b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[10] set from storage ui:temp temp2.list[{Slot:10b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[9] set from storage ui:temp temp2.list[{Slot:9b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[8] set from storage ui:temp temp2.list[{Slot:8b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[7] set from storage ui:temp temp2.list[{Slot:7b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[6] set from storage ui:temp temp2.list[{Slot:6b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[5] set from storage ui:temp temp2.list[{Slot:5b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[4] set from storage ui:temp temp2.list[{Slot:4b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[3] set from storage ui:temp temp2.list[{Slot:3b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[2] set from storage ui:temp temp2.list[{Slot:2b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[1] set from storage ui:temp temp2.list[{Slot:1b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[0] set from storage ui:temp temp2.list[{Slot:0b}]
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:0b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.0 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:1b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.1 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:2b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.2 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.3 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:4b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.4 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:5b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.5 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:6b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.6 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:7b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.7 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:8b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.8 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.9 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.10 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:11b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.11 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:12b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.12 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:13b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.13 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:14b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.14 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:15b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.15 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:16b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.16 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.17 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:18b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.18 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:19b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.19 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:20b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.20 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:21b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.21 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:22b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.22 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:23b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.23 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:24b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.24 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:25b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.25 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ barrel{Items:[{Slot:26b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.26 with air

# デッキリストを空にする
data modify storage ui:temp temp.cg.list set value [{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}]
item modify entity @s weapon.mainhand ui:gun/value/all

# リセット
tag @e[tag=tmw272_temp_unpower] remove tmw272_temp_unpower
data remove storage ui:temp temp
data remove storage ui:temp temp2