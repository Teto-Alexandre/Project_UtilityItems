scoreboard players set $name_condition_inv ui_temp 0
data modify storage ui:temp name_condition.name set from storage ui:temp name_condition.list[0].tag.display.Lore[0]
execute store result score $name_condition_length ui_temp run data get storage ui:temp name_condition.name
scoreboard players operation $name_condition_length ui_temp -= $name_condition_text_length ui_temp

function ui:tmw/272/effect/effect_type/lore_condition/name

scoreboard players remove $name_condition_rows ui_temp 1
data remove storage ui:temp name_condition.list[0].tag.display.Lore[0]

execute if score $name_condition_check ui_temp matches 1 if score $name_condition_rows ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/lore_condition/rows
