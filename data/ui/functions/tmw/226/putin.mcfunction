# アイテム転置
data modify storage ui:temp Inventory set from entity @s Inventory
data modify storage ui:temp tag set from entity @s SelectedItem.tag
#data modify storage ui:temp tag.tmw.slot set from entity @s Inventory[{Slot:-106b}]
#data remove storage ui:temp tag.tmw.slot.Slot
#data modify storage ui:temp tag.tmw.amount set value 1

# 数値代入
execute store result score temp2 ui_temp run data get storage ui:temp tag.tmw.amount
execute store result score temp3 ui_temp run data get storage ui:temp tag.tmw.max

# 走査式ループ
execute if data storage ui:temp Inventory[0] unless score temp2 ui_temp = temp3 ui_temp run function ui:tmw/226/putin.lp

# 数値代入
execute store result storage ui:temp tag.tmw.amount int 1 run scoreboard players get temp2 ui_temp

# 書き込み
item modify entity @s weapon.mainhand ui:tempout
#item modify entity @s weapon.mainhand ui:displayout
function ui:tmw/226/calc
item modify entity @s weapon.mainhand ui:tmw226

# 始末
playsound minecraft:block.barrel.open player @a ~ ~ ~ 1 1.5 0
playsound minecraft:item.armor.equip_chain player @a ~ ~ ~ 1 1.2 0
tag @s add ui_temp_success

#say aa