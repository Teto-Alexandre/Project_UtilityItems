#

#
execute if score $is ui_temp matches 1.. run particle block green_concrete ~ ~ ~ 0.4 0.4 0.4 0 30 force
execute if score $is ui_temp matches 1.. run playsound block.brewing_stand.brew player @a ~ ~ ~ 1 0.5 0

#
execute if score $is ui_temp matches 1.. run kill @s