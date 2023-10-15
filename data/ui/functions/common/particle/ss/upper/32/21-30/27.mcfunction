#

#
execute if score $is ui_temp matches 1 run playsound entity.wither.shoot player @a ~ ~ ~ 1 2 0
execute if score $is ui_temp matches 1 run playsound entity.generic.explode player @a ~ ~ ~ 1 2 0

#
execute if score $is ui_temp matches 1.. run kill @s