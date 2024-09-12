scoreboard players set $name_condition_check ui_temp 1

execute store result score $name_condition_rows ui_temp run data get storage ui:temp name_condition.list[0].tag.display.Lore

execute if score $name_condition_rows ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/lore_condition/rows

scoreboard players remove $name_condition_count ui_temp 1
data remove storage ui:temp name_condition.list[0]

execute if score $name_condition_count ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/lore_condition/each
