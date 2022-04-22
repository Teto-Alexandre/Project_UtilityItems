scoreboard players operation @s ui_i_item += @s ui_i_resitem

playsound minecraft:entity.chicken.egg block @a ~ ~0.5 ~ 0.5 0.5

function ui:industry/consume
scoreboard players reset @s ui_i_ct
tag @s remove ui_i_crafted