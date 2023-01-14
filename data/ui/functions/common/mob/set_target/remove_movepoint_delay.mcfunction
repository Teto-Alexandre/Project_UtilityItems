#
scoreboard players set $success ui_temp 0
scoreboard players operation $obj_id ui_temp = @s ui_obj_id
execute as @e[scores={ui_common_mob_target_obj=1..}] if score @s ui_common_mob_target_obj = $obj_id ui_temp run scoreboard players set $success ui_temp 1
execute if score $success ui_temp matches 0 run function ui:common/mob/set_target/remove_movepoint_do

scoreboard players set @s ui_is 0
