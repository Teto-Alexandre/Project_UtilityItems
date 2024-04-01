# id リストの数を見て target に渡す
data modify storage ui:temp temp.reactive_ids_temp set from storage ui:temp temp.card.reactive_ids
execute store result score $target_type_19_count ui_temp run data get storage ui:temp temp.reactive_ids_temp

execute if score $target_type_19_count ui_temp matches 1.. run function ui:tmw/272/effect/target_type/19/target

scoreboard players reset $target_type_19_id ui_temp
scoreboard players reset $target_type_19_count ui_temp
data remove storage ui:temp temp.reactive_ids_temp