execute store result score $name_condition_count ui_temp run data get storage ui:temp name_condition.list
scoreboard players set $name_condition_check ui_temp 2
scoreboard players set $name_condition_dup ui_temp 0

data modify storage ui:temp name_condition.name set from storage ui:temp name_condition.list[0].tag.display.Name
#tellraw @s [{"storage":"ui:temp","nbt":"name_condition.name","interpret":true}]

execute if data storage ui:temp name_condition.list[0].tag.display.Name run function ui:tmw/272/effect/effect_type/name_duplication/name

execute if score $name_condition_check ui_temp matches 2 run scoreboard players remove $name_condition_count ui_temp 1
execute if score $name_condition_check ui_temp matches 2 run data remove storage ui:temp name_condition.list[0]

execute if data storage ui:temp name_condition.list[0] run function ui:tmw/272/effect/effect_type/name_duplication/each