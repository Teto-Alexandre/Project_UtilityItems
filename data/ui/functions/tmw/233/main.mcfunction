#=======================================================================================================

tag @s[tag=tmw_drop_s] add tmw_drop_n

#time比較
execute store result score $temp ui_temp run data get entity @s SelectedItem.tag.tmw.ct
execute store result score $temp2 ui_temp run time query gametime
execute if score $temp2 ui_temp >= $temp ui_temp run item modify entity @s weapon.mainhand ui:temp/tmw.ct.0
execute if score $temp2 ui_temp >= $temp ui_temp run scoreboard players set $temp2 ui_temp 0

#temp取得
execute store result score $temp ui_temp run data get entity @s SelectedItem.tag.tmw.temp

#アイテム生成
execute if score $temp ui_temp matches 1.. if score $temp2 ui_temp matches 0 at @s run function ui:tmw/233/item

#ドロップでtempに入力
execute if score $temp ui_temp matches 0 if score $temp2 ui_temp matches 0 as @s[tag=tmw_drop_n] at @s run function ui:tmw/233/drop

# インベントリ内に矢があるなら
execute store success score $success ui_temp run clear @s arrow{tmw:{id:233,temp:-1}} 0
execute if score $success ui_temp matches 1 at @s run function ui:tmw/233/arrow

#=======================================================================================================
