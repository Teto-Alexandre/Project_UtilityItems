scoreboard players operation @s ui_common_particle_target_obj1 = @e[tag=ui_particle_input_object1] ui_obj_id

execute if entity @e[tag=ui_particle_input_object2] run scoreboard players operation @s ui_common_particle_target_obj2 = @e[tag=ui_particle_input_object2] ui_obj_id

tag @e[tag=ui_particle_input_object1] remove ui_particle_input_object1
tag @e[tag=ui_particle_input_object2] remove ui_particle_input_object2