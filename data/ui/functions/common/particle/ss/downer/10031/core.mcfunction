#
execute if score $is ui_temp matches 1 run function ui:common/particle/ss/downer/10031/flash

#
execute if score $is ui_temp matches 1.. run kill @e[tag=ui_temp_particle_10031_position]
execute if score $is ui_temp matches 1.. run kill @s
