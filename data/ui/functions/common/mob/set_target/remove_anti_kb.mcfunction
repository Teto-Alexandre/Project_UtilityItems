#
execute as @e[tag=ui_common_mob_temp_antikb] run function ui:common/mob/set_target/remove_anti_kb_each
execute as @e[tag=ui_common_mob_movepoint] run function ui:common/mob/set_target/remove_movepoint

execute if entity @e[tag=ui_common_mob_movepoint] run schedule function ui:common/mob/set_target/remove_anti_kb 1t append
