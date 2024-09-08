# 名前分解テスト
execute store result score $name_condition_count ui_temp run data get storage ui:temp card.list
data modify storage ui:temp name_condition.list set from storage ui:temp card.list
execute store result score $name_condition_text_length ui_temp run data get storage ui:temp temp.effect.text

execute if score $name_condition_count ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/lore_condition/each

scoreboard players reset $name_condition_inv ui_temp
scoreboard players reset $name_condition_rows ui_temp
scoreboard players reset $name_condition_check ui_temp
scoreboard players reset $name_condition_count ui_temp
scoreboard players reset $name_condition_length ui_temp
scoreboard players reset $name_condition_length_temp ui_temp
data remove storage ui:temp name_condition
