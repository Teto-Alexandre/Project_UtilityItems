execute if entity @e[type=item,nbt={Age:0s,Item:{id:"minecraft:wheat_seeds"}},limit=1,sort=nearest,distance=..1] run setblock ~ ~ ~ wheat replace
execute if entity @e[type=item,nbt={Age:0s,Item:{id:"minecraft:carrot"}},limit=1,sort=nearest,distance=..1] run setblock ~ ~ ~ carrots replace
execute if entity @e[type=item,nbt={Age:0s,Item:{id:"minecraft:potato"}},limit=1,sort=nearest,distance=..1] run setblock ~ ~ ~ potatoes replace
execute if entity @e[type=item,nbt={Age:0s,Item:{id:"minecraft:beetroot_seeds"}},limit=1,sort=nearest,distance=..1] run setblock ~ ~ ~ beetroots replace

kill @e[type=item,nbt={Age:0s},distance=..1]