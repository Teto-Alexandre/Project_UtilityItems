#

#
setblock ~ ~ ~ chest{Items:[{Slot:0b,id:"stone",Count:1b},{Slot:1b,id:"stone",Count:1b},{Slot:2b,id:"stone",Count:1b},{Slot:3b,id:"stone",Count:1b},{Slot:4b,id:"stone",Count:1b},{Slot:5b,id:"stone",Count:1b},{Slot:6b,id:"stone",Count:1b},{Slot:7b,id:"stone",Count:1b},{Slot:8b,id:"stone",Count:1b},{Slot:9b,id:"stone",Count:1b},{Slot:10b,id:"stone",Count:1b},{Slot:11b,id:"stone",Count:1b},{Slot:12b,id:"stone",Count:1b},{Slot:13b,id:"stone",Count:1b},{Slot:14b,id:"stone",Count:1b},{Slot:15b,id:"stone",Count:1b},{Slot:16b,id:"stone",Count:1b},{Slot:17b,id:"stone",Count:1b},{Slot:18b,id:"stone",Count:1b},{Slot:19b,id:"stone",Count:1b},{Slot:20b,id:"stone",Count:1b},{Slot:21b,id:"stone",Count:1b},{Slot:22b,id:"stone",Count:1b},{Slot:23b,id:"stone",Count:1b},{Slot:24b,id:"stone",Count:1b},{Slot:25b,id:"stone",Count:1b},{Slot:26b,id:"stone",Count:1b}]} destroy
data modify storage ui:common input.Offers set from entity @s Offers.Recipes
data modify storage ui:common input.Offers append value {buy:{id:"minecraft:air",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:air",Count:1b}}
data modify storage ui:common input.Offers append value {buy:{id:"minecraft:air",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:air",Count:1b}}
data modify storage ui:common input.Offers append value {buy:{id:"minecraft:air",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:air",Count:1b}}
data modify storage ui:common input.Offers append value {buy:{id:"minecraft:air",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:air",Count:1b}}
data modify storage ui:common input.Offers append value {buy:{id:"minecraft:air",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:air",Count:1b}}
data modify storage ui:common input.Offers append value {buy:{id:"minecraft:air",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:air",Count:1b}}
data modify storage ui:common input.Offers append value {buy:{id:"minecraft:air",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:air",Count:1b}}
data modify storage ui:common input.Offers append value {buy:{id:"minecraft:air",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:air",Count:1b}}
data modify storage ui:common input.Offers append value {buy:{id:"minecraft:air",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:air",Count:1b}}

#
data modify storage ui:common input.Item set from storage ui:common input.Offers[0].buy
data modify storage ui:common input.Item.Slot set value 0b
data modify block ~ ~ ~ Items[{Slot:0b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[0].buyB
data modify storage ui:common input.Item.Slot set value 9b
data modify block ~ ~ ~ Items[{Slot:9b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[0].sell
data modify storage ui:common input.Item.Slot set value 18b
data modify block ~ ~ ~ Items[{Slot:18b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[1].buy
data modify storage ui:common input.Item.Slot set value 1b
data modify block ~ ~ ~ Items[{Slot:1b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[1].buyB
data modify storage ui:common input.Item.Slot set value 10b
data modify block ~ ~ ~ Items[{Slot:10b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[1].sell
data modify storage ui:common input.Item.Slot set value 19b
data modify block ~ ~ ~ Items[{Slot:19b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[2].buy
data modify storage ui:common input.Item.Slot set value 2b
data modify block ~ ~ ~ Items[{Slot:2b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[2].buyB
data modify storage ui:common input.Item.Slot set value 11b
data modify block ~ ~ ~ Items[{Slot:11b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[2].sell
data modify storage ui:common input.Item.Slot set value 20b
data modify block ~ ~ ~ Items[{Slot:20b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[3].buy
data modify storage ui:common input.Item.Slot set value 3b
data modify block ~ ~ ~ Items[{Slot:3b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[3].buyB
data modify storage ui:common input.Item.Slot set value 12b
data modify block ~ ~ ~ Items[{Slot:12b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[3].sell
data modify storage ui:common input.Item.Slot set value 21b
data modify block ~ ~ ~ Items[{Slot:21b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[4].buy
data modify storage ui:common input.Item.Slot set value 4b
data modify block ~ ~ ~ Items[{Slot:4b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[4].buyB
data modify storage ui:common input.Item.Slot set value 13b
data modify block ~ ~ ~ Items[{Slot:13b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[4].sell
data modify storage ui:common input.Item.Slot set value 22b
data modify block ~ ~ ~ Items[{Slot:22b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[5].buy
data modify storage ui:common input.Item.Slot set value 5b
data modify block ~ ~ ~ Items[{Slot:5b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[5].buyB
data modify storage ui:common input.Item.Slot set value 14b
data modify block ~ ~ ~ Items[{Slot:14b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[5].sell
data modify storage ui:common input.Item.Slot set value 23b
data modify block ~ ~ ~ Items[{Slot:23b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[6].buy
data modify storage ui:common input.Item.Slot set value 6b
data modify block ~ ~ ~ Items[{Slot:6b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[6].buyB
data modify storage ui:common input.Item.Slot set value 15b
data modify block ~ ~ ~ Items[{Slot:15b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[6].sell
data modify storage ui:common input.Item.Slot set value 24b
data modify block ~ ~ ~ Items[{Slot:24b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[7].buy
data modify storage ui:common input.Item.Slot set value 7b
data modify block ~ ~ ~ Items[{Slot:7b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[7].buyB
data modify storage ui:common input.Item.Slot set value 16b
data modify block ~ ~ ~ Items[{Slot:16b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[7].sell
data modify storage ui:common input.Item.Slot set value 25b
data modify block ~ ~ ~ Items[{Slot:25b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[8].buy
data modify storage ui:common input.Item.Slot set value 8b
data modify block ~ ~ ~ Items[{Slot:8b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[8].buyB
data modify storage ui:common input.Item.Slot set value 17b
data modify block ~ ~ ~ Items[{Slot:17b}] set from storage ui:common input.Item
data modify storage ui:common input.Item set from storage ui:common input.Offers[8].sell
data modify storage ui:common input.Item.Slot set value 26b
data modify block ~ ~ ~ Items[{Slot:26b}] set from storage ui:common input.Item

data modify block ~ ~ ~ CustomName set from entity @s CustomName
