scoreboard players set $success ui_temp 0

execute if entity @e[type=item,nbt={Age:0s,Item:{id:"minecraft:wheat_seeds"}},limit=1,sort=nearest,distance=..1] store success score $success ui_temp run setblock ~ ~ ~ wheat replace
execute if entity @e[type=item,nbt={Age:0s,Item:{id:"minecraft:carrot"}},limit=1,sort=nearest,distance=..1] store success score $success ui_temp run setblock ~ ~ ~ carrots replace
execute if entity @e[type=item,nbt={Age:0s,Item:{id:"minecraft:potato"}},limit=1,sort=nearest,distance=..1] store success score $success ui_temp run setblock ~ ~ ~ potatoes replace
execute if entity @e[type=item,nbt={Age:0s,Item:{id:"minecraft:beetroot_seeds"}},limit=1,sort=nearest,distance=..1] store success score $success ui_temp run setblock ~ ~ ~ beetroots replace

execute if score $success ui_temp matches 1 run kill @e[type=item,nbt={Age:0s},distance=..1]