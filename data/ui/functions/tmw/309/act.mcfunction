#選択しているスロットを返す
execute store result score $slot ui_temp run data get entity @s SelectedItemSlot 1

#中身をストレージに出す
data modify storage ui:temp Items set from entity @s SelectedItem.tag.tmw.slots
data modify storage ui:temp temp set from entity @s SelectedItem.tag.tmw
data remove storage ui:temp temp.slots

#ホットバーを収納していく
execute unless score $slot ui_temp matches 0 run data modify storage ui:temp temp.slots append from entity @s Inventory[{Slot:0b}]
execute unless score $slot ui_temp matches 0 run data remove storage ui:temp temp.slots[-1].Slot
execute unless score $slot ui_temp matches 0 run item replace entity @s hotbar.0 with minecraft:air
execute unless score $slot ui_temp matches 1 run data modify storage ui:temp temp.slots append from entity @s Inventory[{Slot:1b}]
execute unless score $slot ui_temp matches 1 run data remove storage ui:temp temp.slots[-1].Slot
execute unless score $slot ui_temp matches 1 run item replace entity @s hotbar.1 with minecraft:air
execute unless score $slot ui_temp matches 2 run data modify storage ui:temp temp.slots append from entity @s Inventory[{Slot:2b}]
execute unless score $slot ui_temp matches 2 run data remove storage ui:temp temp.slots[-1].Slot
execute unless score $slot ui_temp matches 2 run item replace entity @s hotbar.2 with minecraft:air
execute unless score $slot ui_temp matches 3 run data modify storage ui:temp temp.slots append from entity @s Inventory[{Slot:3b}]
execute unless score $slot ui_temp matches 3 run data remove storage ui:temp temp.slots[-1].Slot
execute unless score $slot ui_temp matches 3 run item replace entity @s hotbar.3 with minecraft:air
execute unless score $slot ui_temp matches 4 run data modify storage ui:temp temp.slots append from entity @s Inventory[{Slot:4b}]
execute unless score $slot ui_temp matches 4 run data remove storage ui:temp temp.slots[-1].Slot
execute unless score $slot ui_temp matches 4 run item replace entity @s hotbar.4 with minecraft:air
execute unless score $slot ui_temp matches 5 run data modify storage ui:temp temp.slots append from entity @s Inventory[{Slot:5b}]
execute unless score $slot ui_temp matches 5 run data remove storage ui:temp temp.slots[-1].Slot
execute unless score $slot ui_temp matches 5 run item replace entity @s hotbar.5 with minecraft:air
execute unless score $slot ui_temp matches 6 run data modify storage ui:temp temp.slots append from entity @s Inventory[{Slot:6b}]
execute unless score $slot ui_temp matches 6 run data remove storage ui:temp temp.slots[-1].Slot
execute unless score $slot ui_temp matches 6 run item replace entity @s hotbar.6 with minecraft:air
execute unless score $slot ui_temp matches 7 run data modify storage ui:temp temp.slots append from entity @s Inventory[{Slot:7b}]
execute unless score $slot ui_temp matches 7 run data remove storage ui:temp temp.slots[-1].Slot
execute unless score $slot ui_temp matches 7 run item replace entity @s hotbar.7 with minecraft:air
execute unless score $slot ui_temp matches 8 run data modify storage ui:temp temp.slots append from entity @s Inventory[{Slot:8b}]
execute unless score $slot ui_temp matches 8 run data remove storage ui:temp temp.slots[-1].Slot
execute unless score $slot ui_temp matches 8 run item replace entity @s hotbar.8 with minecraft:air

#ストレージから出す
execute at @s run summon chest_minecart ~ ~ ~ {Tags:["ui_temp_chest"]}
data modify storage ui:temp Items[0].Slot set value 0b
data modify storage ui:temp Items[1].Slot set value 1b
data modify storage ui:temp Items[2].Slot set value 2b
data modify storage ui:temp Items[3].Slot set value 3b
data modify storage ui:temp Items[4].Slot set value 4b
data modify storage ui:temp Items[5].Slot set value 5b
data modify storage ui:temp Items[6].Slot set value 6b
data modify storage ui:temp Items[7].Slot set value 7b
execute if score $slot ui_temp matches ..0 run data modify storage ui:temp Items[0].Slot set value 1b
execute if score $slot ui_temp matches ..1 run data modify storage ui:temp Items[1].Slot set value 2b
execute if score $slot ui_temp matches ..2 run data modify storage ui:temp Items[2].Slot set value 3b
execute if score $slot ui_temp matches ..3 run data modify storage ui:temp Items[3].Slot set value 4b
execute if score $slot ui_temp matches ..4 run data modify storage ui:temp Items[4].Slot set value 5b
execute if score $slot ui_temp matches ..5 run data modify storage ui:temp Items[5].Slot set value 6b
execute if score $slot ui_temp matches ..6 run data modify storage ui:temp Items[6].Slot set value 7b
execute if score $slot ui_temp matches ..7 run data modify storage ui:temp Items[7].Slot set value 8b
data modify entity @e[tag=ui_temp_chest,limit=1] Items append from storage ui:temp Items[0]
data modify entity @e[tag=ui_temp_chest,limit=1] Items append from storage ui:temp Items[1]
data modify entity @e[tag=ui_temp_chest,limit=1] Items append from storage ui:temp Items[2]
data modify entity @e[tag=ui_temp_chest,limit=1] Items append from storage ui:temp Items[3]
data modify entity @e[tag=ui_temp_chest,limit=1] Items append from storage ui:temp Items[4]
data modify entity @e[tag=ui_temp_chest,limit=1] Items append from storage ui:temp Items[5]
data modify entity @e[tag=ui_temp_chest,limit=1] Items append from storage ui:temp Items[6]
data modify entity @e[tag=ui_temp_chest,limit=1] Items append from storage ui:temp Items[7]
data modify entity @e[tag=ui_temp_chest,limit=1] Items append from storage ui:temp Items[8]
execute unless score $slot ui_temp matches 0 run item replace entity @s hotbar.0 from entity @e[tag=ui_temp_chest,limit=1] container.0
execute unless score $slot ui_temp matches 1 run item replace entity @s hotbar.1 from entity @e[tag=ui_temp_chest,limit=1] container.1
execute unless score $slot ui_temp matches 2 run item replace entity @s hotbar.2 from entity @e[tag=ui_temp_chest,limit=1] container.2
execute unless score $slot ui_temp matches 3 run item replace entity @s hotbar.3 from entity @e[tag=ui_temp_chest,limit=1] container.3
execute unless score $slot ui_temp matches 4 run item replace entity @s hotbar.4 from entity @e[tag=ui_temp_chest,limit=1] container.4
execute unless score $slot ui_temp matches 5 run item replace entity @s hotbar.5 from entity @e[tag=ui_temp_chest,limit=1] container.5
execute unless score $slot ui_temp matches 6 run item replace entity @s hotbar.6 from entity @e[tag=ui_temp_chest,limit=1] container.6
execute unless score $slot ui_temp matches 7 run item replace entity @s hotbar.7 from entity @e[tag=ui_temp_chest,limit=1] container.7
execute unless score $slot ui_temp matches 8 run item replace entity @s hotbar.8 from entity @e[tag=ui_temp_chest,limit=1] container.8
#tellraw @s [{"entity":"@e[tag=ui_temp_chest,limit=1]","nbt":"Items","color":"#ffffff"}]
teleport @e[tag=ui_temp_chest,limit=1] ~ -300 ~
kill @e[tag=ui_temp_chest,limit=1]

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
item modify entity @s weapon.mainhand ui:gun/value/all

#残存データ消去
data remove storage ui:temp Items
data remove storage ui:temp temp