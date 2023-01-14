# @s の現在の移動目標を消す

#
scoreboard players operation $obj_id ui_temp = @s ui_common_mob_target_obj
execute as @e[tag=ui_common_mob_movepoint] if score @s ui_obj_id = $obj_id ui_temp run function ui:common/mob/set_target/movepoint_kill2