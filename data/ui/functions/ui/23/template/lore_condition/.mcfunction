# 名前分解テスト
data modify storage ui:temp temp.effect.text set from entity @s SelectedItem.tag.text
execute store result score $name_condition_text_length ui_temp run data get storage ui:temp temp.effect.text

scoreboard players set $broadcast_type ui_temp 1

function ui:ui/23/template/lore_condition/each

scoreboard players reset $name_condition_inv ui_temp
scoreboard players reset $name_condition_rows ui_temp
scoreboard players reset $name_condition_check ui_temp
scoreboard players reset $name_condition_length ui_temp
scoreboard players reset $name_condition_length_temp ui_temp
data remove storage ui:temp name_condition
