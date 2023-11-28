#
execute if score $is ui_temp matches 1 run playsound entity.minecart.inside player @a ~ ~ ~ 1 1
execute if score $is ui_temp matches 1 run particle large_smoke ~ ~ ~ 0.3 0.3 0.3 0.1 10 force

#
execute if score $is ui_temp matches 1.. run kill @s
