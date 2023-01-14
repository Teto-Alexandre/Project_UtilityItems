#
attribute @s generic.knockback_resistance modifier remove 0-0-0-0-1
attribute @s generic.follow_range modifier remove 0-0-0-0-2

execute store result score $temp ui_temp run data get entity @s HurtTime
execute if score $temp ui_temp matches ..8 run tag @s add ui_common_mob_set_target_fail
execute if score $temp ui_temp matches 9 run tag @s add ui_common_mob_set_target_success

execute store result score $obj_id ui_temp run scoreboard players get @s ui_common_mob_target_obj
#tellraw @a {"score":{"name": "$obj_id","objective": "ui_temp"}}

tag @s remove ui_common_mob_temp_antikb
