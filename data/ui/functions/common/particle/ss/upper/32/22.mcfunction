#

#
execute if score $is ui_temp matches 9 run particle sonic_boom ~ ~ ~ 0.8 0.8 0.8 1 1 force
execute if score $is ui_temp matches 11 run particle sonic_boom ~ ~ ~ 0.8 0.8 0.8 1 1 force
execute if score $is ui_temp matches 13 run particle sonic_boom ~ ~ ~ 0.8 0.8 0.8 1 1 force
execute if score $is ui_temp matches 15 run particle sonic_boom ~ ~ ~ 0.8 0.8 0.8 1 1 force
execute if score $is ui_temp matches 17 run particle sonic_boom ~ ~ ~ 0.8 0.8 0.8 1 1 force
execute if score $is ui_temp matches 19 run particle sonic_boom ~ ~ ~ 0.8 0.8 0.8 1 1 force

execute if score $is ui_temp matches 1 run playsound entity.warden.sonic_charge player @a ~ ~ ~ 0.9 1 0

#
execute if score $is ui_temp matches 19.. run kill @s