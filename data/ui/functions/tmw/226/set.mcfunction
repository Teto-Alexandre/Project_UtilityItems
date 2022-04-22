# アイテム転置
data modify storage ui:temp tag set from entity @s SelectedItem.tag
data modify storage ui:temp tag.tmw.slot set from entity @s Inventory[{Slot:-106b}]
data remove storage ui:temp tag.tmw.slot.Slot
data modify storage ui:temp tag.tmw.amount set value 1

item modify entity @s weapon.mainhand ui:tempout
item modify entity @s weapon.mainhand ui:ubreak.de
#item modify entity @s weapon.mainhand ui:displayout
function ui:tmw/226/calc
item modify entity @s weapon.mainhand ui:tmw226

item replace entity @s weapon.offhand with air

playsound minecraft:block.wooden_trapdoor.open player @a ~ ~ ~ 1.2 1.3 0
playsound minecraft:block.wooden_trapdoor.close player @a ~ ~ ~ 1.2 0.7 0

tag @s add ui_temp_success