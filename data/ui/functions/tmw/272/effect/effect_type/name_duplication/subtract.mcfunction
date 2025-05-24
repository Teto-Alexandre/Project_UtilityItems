execute store result score $name_condition_count ui_temp run data get storage ui:temp name_condition.list
scoreboard players set $name_condition_check ui_temp 3
scoreboard players set $name_condition_dup ui_temp 0

data modify storage ui:temp name_condition.name set from storage ui:temp name_condition.list2[0].tag.display.Name
#tellraw @s [{"storage":"ui:temp","nbt":"name_condition.name","interpret":true}]

execute if data storage ui:temp name_condition.list2[0].tag.display.Name run function ui:tmw/272/effect/effect_type/name_duplication/subtract_name

data remove storage ui:temp name_condition.list2[0]
execute unless data storage ui:temp name_condition.list2[0] run data modify storage ui:temp name_condition.temp_list_nop append from storage ui:temp name_condition.list[]
execute if data storage ui:temp name_condition.list2[0] run function ui:tmw/272/effect/effect_type/name_duplication/subtract