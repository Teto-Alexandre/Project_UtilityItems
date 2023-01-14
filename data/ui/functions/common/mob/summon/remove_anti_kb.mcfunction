
execute if score $is ui_temp matches 2 as @e[type=zombie,tag=ui_common_particle_-10006_knockback] run attribute @s generic.knockback_resistance base set 0
execute if score $is ui_temp matches 2 run tag @e[tag=ui_common_particle_-10006_knockback] remove ui_common_particle_-10006_knockback
