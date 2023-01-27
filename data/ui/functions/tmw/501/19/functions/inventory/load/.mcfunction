##PDAからパーツ性能読み取ってプレイヤーに加算する
##必ず初期値のある状態で設定すること

#declare storage ui:rob

# データ隔離
data modify storage ui:rob temp.Inventory set from entity @e[tag=ui_temp_pda,limit=1] ArmorItems[0].tag.PDA.Inventory

# 成功検知
scoreboard players set $check ui_temp 0

# 第一列
execute if data storage ui:rob temp.Inventory[0].tag.tmw.501_19_parts{pos:"head"} if data storage ui:rob temp.Inventory[1].tag.tmw.501_19_parts{pos:"chest"} if data storage ui:rob temp.Inventory[2].tag.tmw.501_19_parts{pos:"legs"} if data storage ui:rob temp.Inventory[3].tag.tmw.501_19_parts{pos:"feet"} run scoreboard players set $check ui_temp 1
execute if score $check ui_temp matches 1.. run function ui:tmw/501/19/functions/inventory/load/1.check_reader
execute if score $check ui_temp matches 1.. run function ui:tmw/501/19/functions/inventory/load/1.check_reader
execute if score $check ui_temp matches 1.. run function ui:tmw/501/19/functions/inventory/load/1.check_reader
execute if score $check ui_temp matches 1.. run function ui:tmw/501/19/functions/inventory/load/1.check_reader
execute if score $check ui_temp matches 0 run function ui:tmw/501/19/functions/inventory/load/3.unarmed

# 拡張パーツ
execute store result score $length ui_temp run data get storage ui:rob temp.Inventory
tellraw @s [{"text": "拡張パーツ数: "},{"score":{"name": "$length","objective": "ui_temp"}}]
function ui:tmw/501/19/functions/inventory/load/2.burn

# 成功かどうか
#execute if score $check ui_temp matches 0 run kill @s

# 最後に
data remove storage ui:rob temp
