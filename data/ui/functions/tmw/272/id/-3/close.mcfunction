#

#
particle dust 0.6 0 1 1 ~ ~ ~ 0.6 0.6 0.6 0 15 force



#
data modify storage ui:temp temp.pack set from entity @s Item
data modify storage ui:temp temp.list set from storage ui:temp temp.pack.tag.tmw.cg.list
data modify storage ui:temp temp.cards set from storage ui:temp temp.pack.tag.tmw.cg.cards
data remove storage ui:temp temp.pack.tag.tmw
setblock ~ ~ ~ chest
data modify storage ui:temp temp.chest set value []

execute store result score $loop ui_temp run data get storage ui:temp temp.list
data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 1.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 2.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 3.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 4.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 5.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 6.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 7.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 8.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 9.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 10.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 11.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 12.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 13.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 14.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 15.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 16.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 17.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 18.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 19.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 20.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 21.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 22.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 23.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 24.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]
execute if score $loop ui_temp matches 25.. run data remove storage ui:temp temp.pack.tag.display.Lore.[-1]

data modify storage ui:temp temp.chest append from storage ui:temp temp.list[0]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[1]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[2]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[3]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[4]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[5]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[6]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[7]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[8]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[9]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[10]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[11]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[12]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[13]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[14]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[15]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[16]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[17]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[18]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[19]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[20]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[21]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[22]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[23]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[24]
data modify storage ui:temp temp.chest append from storage ui:temp temp.list[25]

#
data modify storage ui:temp temp.item set value {id:"stone",Count:1,tag:{}}
data modify storage ui:temp temp.item set from storage ui:temp temp.pack
data modify storage ui:temp temp.item.Slot set value 26b
data modify storage ui:temp temp.item.Count set from storage ui:temp temp.cards
data modify storage ui:temp temp.chest append from storage ui:temp temp.item

#
data modify block ~ ~ ~ Items set from storage ui:temp temp.chest

#
data remove storage ui:temp temp



kill @s
