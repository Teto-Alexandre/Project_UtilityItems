scoreboard players set $mod ui_calc1 2
function ui:common/rand

execute if score $rand ui_calc1 matches 0 run kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:stone"}},limit=1,sort=nearest,distance=..1]
execute if score $rand ui_calc1 matches 0 run kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:cobblestone"}},limit=1,sort=nearest,distance=..1]
execute if score $rand ui_calc1 matches 0 run kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:deepslate"}},limit=1,sort=nearest,distance=..1]
execute if score $rand ui_calc1 matches 0 run kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:cobbled_deepslate"}},limit=1,sort=nearest,distance=..1]
execute if score $rand ui_calc1 matches 0 run loot spawn ~ ~ ~ loot ui:block/alt.silver2
execute if score $rand ui_calc1 matches 0 run playsound block.amethyst_block.break block @a ~ ~ ~ 1 1.2

kill @s