execute store result score $target_type_7_id ui_temp run data get storage ui:temp temp.target_ids_temp[0]

execute as @e[tag=ui_temp_players,tag=!ui_temp_players_no_target] if score @s ui_obj_id = $target_type_7_id ui_temp run tag @s add tmw272_temp_card_effect_target

data remove storage ui:temp temp.target_ids_temp[0]
scoreboard players remove $target_type_7_count ui_temp 1
execute if score $target_type_7_count ui_temp matches 1.. run function ui:tmw/272/effect/target_type/7/target