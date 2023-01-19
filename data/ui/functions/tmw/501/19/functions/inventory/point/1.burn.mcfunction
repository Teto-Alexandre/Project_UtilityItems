## Slot: 9bに到達するまでデータを切削する

execute store result score $temp ui_temp run data get storage ui:rob temp.Inventory[0].tag.tmw.501_19_parts.point
scoreboard players operation $point ui_temp -= $temp ui_temp

data remove storage ui:rob temp.Inventory[0]
scoreboard players remove $num ui_temp 1

execute if score $num ui_temp matches 1.. run function ui:tmw/501/19/functions/inventory/point/1.burn