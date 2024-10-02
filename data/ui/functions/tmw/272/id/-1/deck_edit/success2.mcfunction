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
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:0b}].tag.IsCG1 run item replace block ~ ~ ~ container.0 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:1b}].tag.IsCG1 run item replace block ~ ~ ~ container.1 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:2b}].tag.IsCG1 run item replace block ~ ~ ~ container.2 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:3b}].tag.IsCG1 run item replace block ~ ~ ~ container.3 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:4b}].tag.IsCG1 run item replace block ~ ~ ~ container.4 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:5b}].tag.IsCG1 run item replace block ~ ~ ~ container.5 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:6b}].tag.IsCG1 run item replace block ~ ~ ~ container.6 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:7b}].tag.IsCG1 run item replace block ~ ~ ~ container.7 with air
execute as @e[tag=tmw272_temp_unpower] at @s if data block ~ ~ ~ Items[{Slot:8b}].tag.IsCG1 run item replace block ~ ~ ~ container.8 with air
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[0] set from block ~ ~ ~ Items[0]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[1] set from block ~ ~ ~ Items[1]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[2] set from block ~ ~ ~ Items[2]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[3] set from block ~ ~ ~ Items[3]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[4] set from block ~ ~ ~ Items[4]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[5] set from block ~ ~ ~ Items[5]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[6] set from block ~ ~ ~ Items[6]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[7] set from block ~ ~ ~ Items[7]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify storage ui:temp temp.cg.list[8] set from block ~ ~ ~ Items[8]

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
