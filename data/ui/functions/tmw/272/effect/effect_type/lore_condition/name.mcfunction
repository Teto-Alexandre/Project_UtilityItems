# スコアマクロ生成
scoreboard players operation $name_condition_length_temp ui_temp = $name_condition_inv ui_temp
execute store result storage ui:temp name_condition.macro.a int 1 run scoreboard players get $name_condition_length_temp ui_temp
execute store result storage ui:temp name_condition.macro.b int 1 run scoreboard players operation $name_condition_length_temp ui_temp += $name_condition_text_length ui_temp
function ui:tmw/272/effect/effect_type/lore_condition/macro with storage ui:temp name_condition.macro

# マクロ
#data modify storage ui:temp name_condition.text set string storage ui:temp name_condition.name a b

# 一致チェック
#tellraw @s [{"storage":"ui:temp","nbt":"name_condition.text"},{"text":" = "},{"storage":"ui:temp","nbt":"temp.effect.text"}]
execute store success score $name_condition_check ui_temp run data modify storage ui:temp name_condition.text set from storage ui:temp temp.effect.text
#tellraw @s [{"score":{"name":"$name_condition_check","objective":"ui_temp"},"color":"aqua"}]

# 一致すると
execute if score $name_condition_check ui_temp matches 0 run scoreboard players add $condition_checker ui_temp 1

scoreboard players add $name_condition_inv ui_temp 1
execute if score $name_condition_check ui_temp matches 1 if score $name_condition_inv ui_temp <= $name_condition_length ui_temp run function ui:tmw/272/effect/effect_type/lore_condition/name
