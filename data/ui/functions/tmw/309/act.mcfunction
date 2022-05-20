#=======================================================================================================

#クリックで入れ替え
#入れ替え後に触媒と収納物のスロットが被ってたら一番左の空きスロットに触媒を移動
#被ってなかったらそのまま処理続行

#選択しているスロットを返す
execute store result score $slot ui_temp run data get entity @s SelectedItemSlot 1

#中身をストレージに出す
execute in overworld run item replace block 0 0 0 container.0 from entity @s weapon.mainhand
execute in overworld run data modify storage ui:temp Items set from block 0 0 0 Items[0].tag.tmw.slots
execute in overworld run data remove block 0 0 0 Items[0].tag.tmw.slots

#ホットバーを収納していく
execute unless score $slot ui_temp matches 0 in overworld run data modify block 0 0 0 Items[0].tag.tmw.slots prepend from entity @s Inventory[{Slot:0b}]
execute unless score $slot ui_temp matches 0 run item replace entity @s hotbar.0 with minecraft:air
execute unless score $slot ui_temp matches 1 in overworld run data modify block 0 0 0 Items[0].tag.tmw.slots prepend from entity @s Inventory[{Slot:1b}]
execute unless score $slot ui_temp matches 1 run item replace entity @s hotbar.1 with minecraft:air
execute unless score $slot ui_temp matches 2 in overworld run data modify block 0 0 0 Items[0].tag.tmw.slots prepend from entity @s Inventory[{Slot:2b}]
execute unless score $slot ui_temp matches 2 run item replace entity @s hotbar.2 with minecraft:air
execute unless score $slot ui_temp matches 3 in overworld run data modify block 0 0 0 Items[0].tag.tmw.slots prepend from entity @s Inventory[{Slot:3b}]
execute unless score $slot ui_temp matches 3 run item replace entity @s hotbar.3 with minecraft:air
execute unless score $slot ui_temp matches 4 in overworld run data modify block 0 0 0 Items[0].tag.tmw.slots prepend from entity @s Inventory[{Slot:4b}]
execute unless score $slot ui_temp matches 4 run item replace entity @s hotbar.4 with minecraft:air
execute unless score $slot ui_temp matches 5 in overworld run data modify block 0 0 0 Items[0].tag.tmw.slots prepend from entity @s Inventory[{Slot:5b}]
execute unless score $slot ui_temp matches 5 run item replace entity @s hotbar.5 with minecraft:air
execute unless score $slot ui_temp matches 6 in overworld run data modify block 0 0 0 Items[0].tag.tmw.slots prepend from entity @s Inventory[{Slot:6b}]
execute unless score $slot ui_temp matches 6 run item replace entity @s hotbar.6 with minecraft:air
execute unless score $slot ui_temp matches 7 in overworld run data modify block 0 0 0 Items[0].tag.tmw.slots prepend from entity @s Inventory[{Slot:7b}]
execute unless score $slot ui_temp matches 7 run item replace entity @s hotbar.7 with minecraft:air
execute unless score $slot ui_temp matches 8 in overworld run data modify block 0 0 0 Items[0].tag.tmw.slots prepend from entity @s Inventory[{Slot:8b}]
execute unless score $slot ui_temp matches 8 run item replace entity @s hotbar.8 with minecraft:air
execute in overworld run data modify storage ui:temp sloted set from block 0 0 0 Items[0]
item replace entity @s weapon.mainhand with minecraft:air

#ストレージから出す
execute in overworld run data remove block 0 0 0 Items
execute in overworld run data modify block 0 0 0 Items append from storage ui:temp Items[{Slot:0b}]
execute in overworld run data modify block 0 0 0 Items append from storage ui:temp Items[{Slot:1b}]
execute in overworld run data modify block 0 0 0 Items append from storage ui:temp Items[{Slot:2b}]
execute in overworld run data modify block 0 0 0 Items append from storage ui:temp Items[{Slot:3b}]
execute in overworld run data modify block 0 0 0 Items append from storage ui:temp Items[{Slot:4b}]
execute in overworld run data modify block 0 0 0 Items append from storage ui:temp Items[{Slot:5b}]
execute in overworld run data modify block 0 0 0 Items append from storage ui:temp Items[{Slot:6b}]
execute in overworld run data modify block 0 0 0 Items append from storage ui:temp Items[{Slot:7b}]
execute in overworld run data modify block 0 0 0 Items append from storage ui:temp Items[{Slot:8b}]
execute in overworld run item replace entity @s hotbar.0 from block 0 0 0 container.0
execute in overworld run item replace entity @s hotbar.1 from block 0 0 0 container.1
execute in overworld run item replace entity @s hotbar.2 from block 0 0 0 container.2
execute in overworld run item replace entity @s hotbar.3 from block 0 0 0 container.3
execute in overworld run item replace entity @s hotbar.4 from block 0 0 0 container.4
execute in overworld run item replace entity @s hotbar.5 from block 0 0 0 container.5
execute in overworld run item replace entity @s hotbar.6 from block 0 0 0 container.6
execute in overworld run item replace entity @s hotbar.7 from block 0 0 0 container.7
execute in overworld run item replace entity @s hotbar.8 from block 0 0 0 container.8
execute if data entity @s SelectedItem run summon item ~ ~ ~ {Tags:["tmw_putout"],Item:{id:"stone",Count:1b},PickupDelay:0s}
execute if data entity @s SelectedItem run data modify entity @e[tag=tmw_putout,limit=1] Item set from storage ui:temp sloted
execute if data entity @s SelectedItem run tag @e[tag=tmw_putout,sort=nearest,limit=1] remove tmw_putout
execute unless data entity @s SelectedItem run data merge storage ui:temp {sloted:{Slot:0b}}
execute unless data entity @s SelectedItem in overworld run data modify block 0 0 0 Items append from storage ui:temp sloted
execute unless data entity @s SelectedItem in overworld run item replace entity @s weapon.mainhand from block 0 0 0 container.0
execute in overworld run data merge block 0 0 0 {Items:[{Slot:0b,id:"minecraft:stone",Count:1b},{Slot:1b,id:"minecraft:stone",Count:1b},{Slot:2b,id:"minecraft:stone",Count:1b},{Slot:3b,id:"minecraft:stone",Count:1b},{Slot:4b,id:"minecraft:stone",Count:1b},{Slot:5b,id:"minecraft:stone",Count:1b},{Slot:6b,id:"minecraft:stone",Count:1b},{Slot:7b,id:"minecraft:stone",Count:1b},{Slot:8b,id:"minecraft:stone",Count:1b}]}

#残存データ消去
data remove storage ui:temp Items

#say
#say replaced!

#=======================================================================================================