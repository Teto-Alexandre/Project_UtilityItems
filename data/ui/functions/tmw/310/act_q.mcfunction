#中身をストレージに出す
data modify storage ui:temp Items set from entity @s SelectedItem.tag.Items

#
data remove storage ui:temp Items[-1]
data modify storage ui:temp Items[8].tag.CustomModelData set value 120015
data modify storage ui:temp Items[-1].tag.CustomModelData set value 120015

#ホットバーを収納していく
execute unless data entity @s Inventory[{Slot:0b}] run data modify storage ui:temp Items append value {id:"gray_stained_glass_pane",Count:1b,tag:{CustomModelData:120003,ui:{ismenu:1}}}
execute unless data entity @s Inventory[{Slot:0b}] run data remove storage ui:temp Items[-1].Slot
execute if data entity @s Inventory[{Slot:0b}] run data modify storage ui:temp Items append from entity @s Inventory[{Slot:0b}]
execute if data entity @s Inventory[{Slot:0b}] run data remove storage ui:temp Items[-1].Slot
execute if data entity @s Inventory[{Slot:0b}] run item replace entity @s hotbar.0 with minecraft:air
execute unless data entity @s Inventory[{Slot:1b}] run data modify storage ui:temp Items append value {id:"gray_stained_glass_pane",Count:1b,tag:{CustomModelData:120003,ui:{ismenu:1}}}
execute unless data entity @s Inventory[{Slot:1b}] run data remove storage ui:temp Items[-1].Slot
execute if data entity @s Inventory[{Slot:1b}] run data modify storage ui:temp Items append from entity @s Inventory[{Slot:1b}]
execute if data entity @s Inventory[{Slot:1b}] run data remove storage ui:temp Items[-1].Slot
execute if data entity @s Inventory[{Slot:1b}] run item replace entity @s hotbar.1 with minecraft:air
execute unless data entity @s Inventory[{Slot:2b}] run data modify storage ui:temp Items append value {id:"gray_stained_glass_pane",Count:1b,tag:{CustomModelData:120003,ui:{ismenu:1}}}
execute unless data entity @s Inventory[{Slot:2b}] run data remove storage ui:temp Items[-1].Slot
execute if data entity @s Inventory[{Slot:2b}] run data modify storage ui:temp Items append from entity @s Inventory[{Slot:2b}]
execute if data entity @s Inventory[{Slot:2b}] run data remove storage ui:temp Items[-1].Slot
execute if data entity @s Inventory[{Slot:2b}] run item replace entity @s hotbar.2 with minecraft:air
execute unless data entity @s Inventory[{Slot:3b}] run data modify storage ui:temp Items append value {id:"gray_stained_glass_pane",Count:1b,tag:{CustomModelData:120003,ui:{ismenu:1}}}
execute unless data entity @s Inventory[{Slot:3b}] run data remove storage ui:temp Items[-1].Slot
execute if data entity @s Inventory[{Slot:3b}] run data modify storage ui:temp Items append from entity @s Inventory[{Slot:3b}]
execute if data entity @s Inventory[{Slot:3b}] run data remove storage ui:temp Items[-1].Slot
execute if data entity @s Inventory[{Slot:3b}] run item replace entity @s hotbar.3 with minecraft:air
execute unless data entity @s Inventory[{Slot:4b}] run data modify storage ui:temp Items append value {id:"gray_stained_glass_pane",Count:1b,tag:{CustomModelData:120003,ui:{ismenu:1}}}
execute unless data entity @s Inventory[{Slot:4b}] run data remove storage ui:temp Items[-1].Slot
execute if data entity @s Inventory[{Slot:4b}] run data modify storage ui:temp Items append from entity @s Inventory[{Slot:4b}]
execute if data entity @s Inventory[{Slot:4b}] run data remove storage ui:temp Items[-1].Slot
execute if data entity @s Inventory[{Slot:4b}] run item replace entity @s hotbar.4 with minecraft:air
execute unless data entity @s Inventory[{Slot:5b}] run data modify storage ui:temp Items append value {id:"gray_stained_glass_pane",Count:1b,tag:{CustomModelData:120003,ui:{ismenu:1}}}
execute unless data entity @s Inventory[{Slot:5b}] run data remove storage ui:temp Items[-1].Slot
execute if data entity @s Inventory[{Slot:5b}] run data modify storage ui:temp Items append from entity @s Inventory[{Slot:5b}]
execute if data entity @s Inventory[{Slot:5b}] run data remove storage ui:temp Items[-1].Slot
execute if data entity @s Inventory[{Slot:5b}] run item replace entity @s hotbar.5 with minecraft:air
execute unless data entity @s Inventory[{Slot:6b}] run data modify storage ui:temp Items append value {id:"gray_stained_glass_pane",Count:1b,tag:{CustomModelData:120003,ui:{ismenu:1}}}
execute unless data entity @s Inventory[{Slot:6b}] run data remove storage ui:temp Items[-1].Slot
execute if data entity @s Inventory[{Slot:6b}] run data modify storage ui:temp Items append from entity @s Inventory[{Slot:6b}]
execute if data entity @s Inventory[{Slot:6b}] run data remove storage ui:temp Items[-1].Slot
execute if data entity @s Inventory[{Slot:6b}] run item replace entity @s hotbar.6 with minecraft:air
execute unless data entity @s Inventory[{Slot:7b}] run data modify storage ui:temp Items append value {id:"gray_stained_glass_pane",Count:1b,tag:{CustomModelData:120003,ui:{ismenu:1}}}
execute unless data entity @s Inventory[{Slot:7b}] run data remove storage ui:temp Items[-1].Slot
execute if data entity @s Inventory[{Slot:7b}] run data modify storage ui:temp Items append from entity @s Inventory[{Slot:7b}]
execute if data entity @s Inventory[{Slot:7b}] run data remove storage ui:temp Items[-1].Slot
execute if data entity @s Inventory[{Slot:7b}] run item replace entity @s hotbar.7 with minecraft:air

#ストレージから出す
execute at @s run summon chest_minecart ~ 1000 ~ {Tags:["ui_temp_chest"]}
data modify storage ui:temp Items[0].Slot set value 0b
data modify storage ui:temp Items[1].Slot set value 1b
data modify storage ui:temp Items[2].Slot set value 2b
data modify storage ui:temp Items[3].Slot set value 3b
data modify storage ui:temp Items[4].Slot set value 4b
data modify storage ui:temp Items[5].Slot set value 5b
data modify storage ui:temp Items[6].Slot set value 6b
data modify storage ui:temp Items[7].Slot set value 7b
data modify entity @e[tag=ui_temp_chest,limit=1] Items append from storage ui:temp Items[0]
data modify entity @e[tag=ui_temp_chest,limit=1] Items append from storage ui:temp Items[1]
data modify entity @e[tag=ui_temp_chest,limit=1] Items append from storage ui:temp Items[2]
data modify entity @e[tag=ui_temp_chest,limit=1] Items append from storage ui:temp Items[3]
data modify entity @e[tag=ui_temp_chest,limit=1] Items append from storage ui:temp Items[4]
data modify entity @e[tag=ui_temp_chest,limit=1] Items append from storage ui:temp Items[5]
data modify entity @e[tag=ui_temp_chest,limit=1] Items append from storage ui:temp Items[6]
data modify entity @e[tag=ui_temp_chest,limit=1] Items append from storage ui:temp Items[7]
data remove storage ui:temp Items[0]
data remove storage ui:temp Items[0]
data remove storage ui:temp Items[0]
data remove storage ui:temp Items[0]
data remove storage ui:temp Items[0]
data remove storage ui:temp Items[0]
data remove storage ui:temp Items[0]
data remove storage ui:temp Items[0]
item replace entity @s hotbar.0 from entity @e[tag=ui_temp_chest,limit=1] container.0
item replace entity @s hotbar.1 from entity @e[tag=ui_temp_chest,limit=1] container.1
item replace entity @s hotbar.2 from entity @e[tag=ui_temp_chest,limit=1] container.2
item replace entity @s hotbar.3 from entity @e[tag=ui_temp_chest,limit=1] container.3
item replace entity @s hotbar.4 from entity @e[tag=ui_temp_chest,limit=1] container.4
item replace entity @s hotbar.5 from entity @e[tag=ui_temp_chest,limit=1] container.5
item replace entity @s hotbar.6 from entity @e[tag=ui_temp_chest,limit=1] container.6
item replace entity @s hotbar.7 from entity @e[tag=ui_temp_chest,limit=1] container.7
#tellraw @s [{"entity":"@e[tag=ui_temp_chest,limit=1]","nbt":"Items","color":"#ffffff"}]
teleport @e[tag=ui_temp_chest,limit=1] ~ -300 ~
kill @e[tag=ui_temp_chest,limit=1]

#
data modify storage ui:temp Items append value {id:"gray_stained_glass_pane",Count:1b,tag:{CustomModelData:120015,ui:{ismenu:1}}}
data modify storage ui:temp Items append value {id:"gray_stained_glass_pane",Count:1b,tag:{CustomModelData:120012,ui:{ismenu:1}}}
data remove storage ui:temp Items[0]
data modify storage ui:temp Items[8].tag.CustomModelData set value 120013
data modify storage ui:temp Items[-2].tag.CustomModelData set value 120014

#
#tellraw @s [{"storage":"ui:temp","nbt":"Items[0]","color":"#00ffff"}]
#tellraw @s [{"storage":"ui:temp","nbt":"Items[1]","color":"#11ffdd"}]
#tellraw @s [{"storage":"ui:temp","nbt":"Items[2]","color":"#33ffbb"}]
#tellraw @s [{"storage":"ui:temp","nbt":"Items[3]","color":"#55ff99"}]
#tellraw @s [{"storage":"ui:temp","nbt":"Items[4]","color":"#77ff77"}]
#tellraw @s [{"storage":"ui:temp","nbt":"Items[5]","color":"#99ff55"}]
#tellraw @s [{"storage":"ui:temp","nbt":"Items[6]","color":"#bbff33"}]
#tellraw @s [{"storage":"ui:temp","nbt":"Items[7]","color":"#ddff11"}]
#tellraw @s [{"storage":"ui:temp","nbt":"Items[8]","color":"#ffff00"}]
item modify entity @s weapon.mainhand ui:gun/value/items

#残存データ消去
data remove storage ui:temp Items
data remove storage ui:temp temp