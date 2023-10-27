data modify storage ui:temp init_manager.obj_ids set from entity @s item.tag.anti_rejoin
execute store result score $count ui_temp run data get storage ui:temp init_manager.obj_ids

execute if score $count ui_temp matches 1.. run function ui:tmw/272/id/-1/ng_filter/burn

scoreboard players reset $count ui_temp

#
execute if entity @e[tag=ui_temp_player,tag=ui_temp_ng_temp] run scoreboard players set $shot_type ui_temp 404
execute if entity @e[tag=ui_temp_target,tag=ui_temp_ng_temp,limit=1] run scoreboard players set $shot_type ui_temp 404

#
scoreboard players reset $obj_id_temp ui_temp