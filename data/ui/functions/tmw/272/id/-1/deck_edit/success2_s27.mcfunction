# デッキ編集機能

# 自分のデッキをアイテムから呼び出し
data modify storage ui:temp temp set from entity @a[tag=ui_temp_player,limit=1] SelectedItem.tag.tmw

tag @s add tmw272_temp_unpower

# ドロッパーの中に呼び出したデッキリストを入れる
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:0b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:1b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:2b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:3b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:4b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:5b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:6b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:7b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:8b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:9b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:10b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:11b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:12b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:13b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:14b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:15b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:16b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:17b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:18b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:19b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:20b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:21b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:22b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:23b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:24b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:25b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:26b}].tag.IsCG1 run tellraw @p [{"text":"警告 不正なカード> 投入したカードが空想化しています","color":"red","bold": true}]
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:0b}].tag.IsCG1 run item replace block ~ ~ ~ container.0 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:1b}].tag.IsCG1 run item replace block ~ ~ ~ container.1 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:2b}].tag.IsCG1 run item replace block ~ ~ ~ container.2 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:3b}].tag.IsCG1 run item replace block ~ ~ ~ container.3 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:4b}].tag.IsCG1 run item replace block ~ ~ ~ container.4 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:5b}].tag.IsCG1 run item replace block ~ ~ ~ container.5 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:6b}].tag.IsCG1 run item replace block ~ ~ ~ container.6 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:7b}].tag.IsCG1 run item replace block ~ ~ ~ container.7 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:8b}].tag.IsCG1 run item replace block ~ ~ ~ container.8 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:9b}].tag.IsCG1 run item replace block ~ ~ ~ container.9 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:10b}].tag.IsCG1 run item replace block ~ ~ ~ container.10 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:11b}].tag.IsCG1 run item replace block ~ ~ ~ container.11 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:12b}].tag.IsCG1 run item replace block ~ ~ ~ container.12 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:13b}].tag.IsCG1 run item replace block ~ ~ ~ container.13 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:14b}].tag.IsCG1 run item replace block ~ ~ ~ container.14 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:15b}].tag.IsCG1 run item replace block ~ ~ ~ container.15 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:16b}].tag.IsCG1 run item replace block ~ ~ ~ container.16 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:17b}].tag.IsCG1 run item replace block ~ ~ ~ container.17 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:18b}].tag.IsCG1 run item replace block ~ ~ ~ container.18 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:19b}].tag.IsCG1 run item replace block ~ ~ ~ container.19 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:20b}].tag.IsCG1 run item replace block ~ ~ ~ container.20 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:21b}].tag.IsCG1 run item replace block ~ ~ ~ container.21 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:22b}].tag.IsCG1 run item replace block ~ ~ ~ container.22 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:23b}].tag.IsCG1 run item replace block ~ ~ ~ container.23 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:24b}].tag.IsCG1 run item replace block ~ ~ ~ container.24 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:25b}].tag.IsCG1 run item replace block ~ ~ ~ container.25 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:26b}].tag.IsCG1 run item replace block ~ ~ ~ container.26 with air
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[0] set from block ~ ~ ~ Items[0]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[1] set from block ~ ~ ~ Items[1]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[2] set from block ~ ~ ~ Items[2]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[3] set from block ~ ~ ~ Items[3]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[4] set from block ~ ~ ~ Items[4]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[5] set from block ~ ~ ~ Items[5]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[6] set from block ~ ~ ~ Items[6]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[7] set from block ~ ~ ~ Items[7]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[8] set from block ~ ~ ~ Items[8]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[9] set from block ~ ~ ~ Items[9]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[10] set from block ~ ~ ~ Items[10]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[11] set from block ~ ~ ~ Items[11]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[12] set from block ~ ~ ~ Items[12]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[13] set from block ~ ~ ~ Items[13]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[14] set from block ~ ~ ~ Items[14]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[15] set from block ~ ~ ~ Items[15]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[16] set from block ~ ~ ~ Items[16]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[17] set from block ~ ~ ~ Items[17]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[18] set from block ~ ~ ~ Items[18]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[19] set from block ~ ~ ~ Items[19]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[20] set from block ~ ~ ~ Items[20]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[21] set from block ~ ~ ~ Items[21]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[22] set from block ~ ~ ~ Items[22]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[23] set from block ~ ~ ~ Items[23]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[24] set from block ~ ~ ~ Items[24]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[25] set from block ~ ~ ~ Items[25]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[26] set from block ~ ~ ~ Items[26]

# OMD に書き込み
function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4] merge value {ui:{cg1:{list_origin:[]}}}
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin set from storage ui:temp temp.cg.list

# デッキリストを入力する
data remove storage ui:temp temp.cg.editing
item modify entity @a[tag=ui_temp_player,limit=1] weapon.mainhand ui:gun/value/all

# リセット
setblock ~ ~ ~ air replace
kill @e[tag=tmw272_temp_unpower]
data remove storage ui:temp temp
