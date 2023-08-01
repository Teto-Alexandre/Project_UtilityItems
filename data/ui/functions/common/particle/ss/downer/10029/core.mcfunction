#
execute if entity @a[tag=ui_temp_player,scores={ui_tmw601_accessory=5001}] run tag @s add ui_temp_boost
scoreboard players operation $is ui_temp -= @s ui_is2

#
execute if score $is ui_temp matches 1 run function ui:common/particle/ss/downer/10029/flash

#
execute if score $is ui_temp matches 1.. run kill @e[tag=ui_temp_particle_10029_position]
execute if score $is ui_temp matches 1.. run kill @s
