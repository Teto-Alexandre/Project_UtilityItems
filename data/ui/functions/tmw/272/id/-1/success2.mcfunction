# デッキ編集機能

# 自分のデッキをアイテムから呼び出し
data modify storage ui:temp temp set from entity @a[tag=ui_temp_player,limit=1] SelectedItem.tag.tmw

tag @s add tmw272_temp_unpower

# ドロッパーの中に呼び出したデッキリストを入れる
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
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4] merge value {ui:{cg1:{list:[]}}}
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list set from storage ui:temp temp.cg.list

# デッキリストを空にする
item modify entity @a[tag=ui_temp_player,limit=1] weapon.mainhand ui:gun/value/all

# リセット
setblock ~ ~ ~ air replace
kill @e[tag=tmw272_temp_unpower]
data remove storage ui:temp temp
