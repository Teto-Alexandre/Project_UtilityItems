##パーツの各ポイントを読み取る

# データ隔離
data modify storage ui:rob temp.Inventory set from entity @s Inventory

#
data remove storage ui:rob temp.Inventory[{Slot:0b}]
data remove storage ui:rob temp.Inventory[{Slot:1b}]
data remove storage ui:rob temp.Inventory[{Slot:2b}]
data remove storage ui:rob temp.Inventory[{Slot:3b}]
data remove storage ui:rob temp.Inventory[{Slot:4b}]
data remove storage ui:rob temp.Inventory[{Slot:5b}]
data remove storage ui:rob temp.Inventory[{Slot:6b}]
data remove storage ui:rob temp.Inventory[{Slot:7b}]
data remove storage ui:rob temp.Inventory[{Slot:8b}]
data remove storage ui:rob temp.Inventory[{Slot:9b}]
data remove storage ui:rob temp.Inventory[{Slot:11b}]
data remove storage ui:rob temp.Inventory[{Slot:13b}]
data remove storage ui:rob temp.Inventory[{Slot:15b}]
data remove storage ui:rob temp.Inventory[{Slot:17b}]
data remove storage ui:rob temp.Inventory[{Slot:18b}]
data remove storage ui:rob temp.Inventory[{Slot:26b}]
data remove storage ui:rob temp.Inventory[{Slot:27b}]
data remove storage ui:rob temp.Inventory[{Slot:35b}]
data remove storage ui:rob temp.Inventory[{Slot:100b}]
data remove storage ui:rob temp.Inventory[{Slot:101b}]
data remove storage ui:rob temp.Inventory[{Slot:102b}]
data remove storage ui:rob temp.Inventory[{Slot:103b}]
data remove storage ui:rob temp.Inventory[{Slot:-106b}]

# カウント
execute store result score $num ui_temp run data get storage ui:rob temp.Inventory
scoreboard players operation $point ui_temp = $point ui_tmw501_19_world

# 第一列
#tellraw @s [{"text": "スロット: "},{"score":{"name": "$num","objective": "ui_temp"}}]
execute if score $num ui_temp matches 1.. run function ui:tmw/501/19/functions/inventory/point/1.burn

# 成功かどうか
execute if score $point ui_temp matches 0.. run item replace entity @s hotbar.4 with minecraft:emerald
execute if score $point ui_temp matches 0.. run item modify entity @s hotbar.4 ui:tmw501_19/point_plus
execute if score $point ui_temp matches ..-1 run item replace entity @s hotbar.4 with minecraft:red_stained_glass_pane
execute if score $point ui_temp matches ..-1 run item modify entity @s hotbar.4 ui:tmw501_19/point_over

# 最後に
data remove storage ui:rob temp
