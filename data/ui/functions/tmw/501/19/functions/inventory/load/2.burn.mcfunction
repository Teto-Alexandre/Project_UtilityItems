## 拡張パーツの拡張 id を読み込む

# データ隔離
data modify storage ui:rob temp.Front set from storage ui:rob temp.Inventory[0].tag.tmw.501_19_parts
#tellraw @s {"storage":"ui:rob","nbt":"temp.Inventory[0]","interpret":false}

# スコア化
execute store result score $add_id ui_temp run data get storage ui:rob temp.Front.add_id
execute if data storage ui:rob temp.Front{pos:"add"} run function ui:tmw/501/19/functions/inventory/load/add/id

data remove storage ui:rob temp.Inventory[0]
scoreboard players remove $length ui_temp 1

execute if score $length ui_temp matches 1.. run function ui:tmw/501/19/functions/inventory/load/2.burn