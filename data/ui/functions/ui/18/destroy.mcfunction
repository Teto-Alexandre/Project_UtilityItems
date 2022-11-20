#=======================================================================================================

kill @e[type=item,nbt={Age:0s,Item:{tag:{ui:{ismenu:1}}}}]
kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:barrel"}}]
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:6b}}
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:redstone",Count:1b}}
kill @s

#=======================================================================================================