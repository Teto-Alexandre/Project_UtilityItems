scoreboard players add @s ui_is 1
execute if score @s ui_is matches 6.. run playsound block.note_block.snare block @a ~ ~ ~ 1 1 0
execute if score @s ui_is matches 6.. run particle dust 1 0 0 1 ~ ~ ~ 0.3 0.3 0.3 0 10 normal
execute if score @s ui_is matches 6.. run setblock ~ ~ ~ air
execute if score @s ui_is matches 6.. run kill @s