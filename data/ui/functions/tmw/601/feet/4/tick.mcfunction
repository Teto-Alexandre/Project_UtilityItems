scoreboard players add @s ui_is 1
kill @e[type=item,distance=..4,nbt={Age:0s,Item:{id:"minecraft:slime_block"}}]
execute if score @s ui_is matches 10.. run fill ~-1 ~ ~-1 ~1 ~1 ~1 air replace slime_block
execute if score @s ui_is matches 10.. run kill @s