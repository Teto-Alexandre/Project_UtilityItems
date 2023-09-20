execute as @a if score @s ui_id = $id ui_temp run tag @s add ui_temp_listener

execute if score $hit_sound_type ui_temp matches 0 if score $hit_sound ui_temp matches 1 at @a[tag=ui_temp_listener] run playsound entity.snow_golem.shoot player @s ~ ~ ~ 0.7 2 0
execute if score $hit_sound_type ui_temp matches 0 if score $hit_sound ui_temp matches 2 at @a[tag=ui_temp_listener] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 2 0
execute if score $hit_sound_type ui_temp matches 0 if score $hit_sound ui_temp matches 3 at @a[tag=ui_temp_listener] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5 0

execute if score $hit_sound_type ui_temp matches 1 if score $hit_sound ui_temp matches 1 at @a[tag=ui_temp_listener] run playsound block.note_block.basedrum player @s ~ ~ ~ 0.7 1.5 0
execute if score $hit_sound_type ui_temp matches 1 if score $hit_sound ui_temp matches 2 at @a[tag=ui_temp_listener] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.7 2 0
execute if score $hit_sound_type ui_temp matches 1 if score $hit_sound ui_temp matches 3 at @a[tag=ui_temp_listener] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5 0

tag @a[tag=ui_temp_listener] remove ui_temp_listener