kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:stone"}},limit=1,sort=nearest,distance=..1]
kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:cobblestone"}},limit=1,sort=nearest,distance=..1]
kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:deepslate"}},limit=1,sort=nearest,distance=..1]
kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:cobbled_deepslate"}},limit=1,sort=nearest,distance=..1]
loot spawn ~ ~ ~ loot ui:block/alt.silver3
playsound block.amethyst_block.break block @a ~ ~ ~ 1 1.2

kill @s