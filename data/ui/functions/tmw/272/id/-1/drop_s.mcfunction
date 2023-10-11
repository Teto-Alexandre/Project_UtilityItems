# デッキ編集機能

# 自分のデッキをアイテムから呼び出し
data modify storage ui:temp temp set from entity @s SelectedItem.tag.tmw
data modify storage ui:temp temp2.list set from storage ui:temp temp.cg.list

#
data modify storage ui:temp temp2.string set string entity @s SelectedItem.tag.display.Name 9 18

# このアイテムの名前の鍵付きドロッパーとドロッパーコアを召喚、同じid(obj_idではない)を付与する
execute if block ~ ~2 ~ #ui:nocol run summon marker ~ ~2 ~ {Tags:["tmw272_deck_dropper_core","tmw272_temp_unpower"]}
execute as @e[tag=tmw272_temp_unpower] at @s run setblock ~ ~ ~ dropper[facing=down]{Lock:"a",CustomName:'{"text":"Null"}',Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{ui:{ismenu:1}}},{Slot:1b,id:"minecraft:stone",Count:2b,tag:{ui:{ismenu:1}}},{Slot:2b,id:"minecraft:stone",Count:3b,tag:{ui:{ismenu:1}}},{Slot:3b,id:"minecraft:stone",Count:4b,tag:{ui:{ismenu:1}}},{Slot:4b,id:"minecraft:stone",Count:5b,tag:{ui:{ismenu:1}}},{Slot:5b,id:"minecraft:stone",Count:6b,tag:{ui:{ismenu:1}}},{Slot:6b,id:"minecraft:stone",Count:7b,tag:{ui:{ismenu:1}}},{Slot:7b,id:"minecraft:stone",Count:8b,tag:{ui:{ismenu:1}}},{Slot:8b,id:"minecraft:stone",Count:9b,tag:{ui:{ismenu:1}}}]}
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ CustomName set from entity @a[tag=ui_temp_player,limit=1] SelectedItem.tag.display.Name
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Lock set from storage ui:temp temp2.string
execute as @e[tag=tmw272_temp_unpower] at @s run scoreboard players operation @s ui_id = $id ui_temp

# ドロッパーの中に呼び出したデッキリストを入れる
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[8] set from storage ui:temp temp2.list[{Slot:8b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[7] set from storage ui:temp temp2.list[{Slot:7b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[6] set from storage ui:temp temp2.list[{Slot:6b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[5] set from storage ui:temp temp2.list[{Slot:5b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[4] set from storage ui:temp temp2.list[{Slot:4b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[3] set from storage ui:temp temp2.list[{Slot:3b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[2] set from storage ui:temp temp2.list[{Slot:2b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[1] set from storage ui:temp temp2.list[{Slot:1b}]
execute as @e[tag=tmw272_temp_unpower] at @s run data modify block ~ ~ ~ Items[0] set from storage ui:temp temp2.list[{Slot:0b}]
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.0 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.1 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ dropper{Items:[{Slot:2b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.2 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ dropper{Items:[{Slot:3b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.3 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ dropper{Items:[{Slot:4b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.4 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ dropper{Items:[{Slot:5b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.5 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ dropper{Items:[{Slot:6b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.6 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ dropper{Items:[{Slot:7b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.7 with air
execute as @e[tag=tmw272_temp_unpower] at @s if block ~ ~ ~ dropper{Items:[{Slot:8b,tag:{ui:{ismenu:1}}}]} run item replace block ~ ~ ~ container.8 with air

# デッキリストを空にする
data modify storage ui:temp temp.cg.list set value [{},{},{},{},{},{},{},{},{}]
item modify entity @s weapon.mainhand ui:gun/value/all

# リセット
tag @e[tag=tmw272_temp_unpower] remove tmw272_temp_unpower
data remove storage ui:temp temp
data remove storage ui:temp temp2