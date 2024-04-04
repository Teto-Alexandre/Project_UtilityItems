# id リストの数を見て target に渡す
data modify storage ui:temp temp.reactive_target_ids_temp set from storage ui:temp temp.card.reactive_target_ids
execute store result score $target_type_20_count ui_temp run data get storage ui:temp temp.reactive_target_ids_temp

execute if score $target_type_20_count ui_temp matches 1.. run function ui:tmw/272/effect/target_type/20/target

scoreboard players reset $target_type_20_id ui_temp
scoreboard players reset $target_type_20_count ui_temp
data remove storage ui:temp temp.reactive_target_ids_temp