data modify storage ui:temp name_condition.text set value ""

# スコアマクロ生成
scoreboard players operation $name_condition_length_temp ui_temp = $name_condition_inv ui_temp
execute store result storage ui:temp name_condition.macro.a int 1 run scoreboard players get $name_condition_length_temp ui_temp
execute store result storage ui:temp name_condition.macro.b int 1 run scoreboard players operation $name_condition_length_temp ui_temp += $name_condition_text_length ui_temp
function ui:ui/23/template/condition_hub/macro with storage ui:temp name_condition.macro

# マクロ
#data modify storage ui:temp name_condition.text set string storage ui:temp name_condition.name a b

# 一致チェック
#tellraw @a [{"storage":"ui:temp","nbt":"name_condition.text"},{"text":" = "},{"storage":"ui:temp","nbt":"temp.effect.text"}]
execute store success score $name_condition_check ui_temp run data modify storage ui:temp name_condition.text set from storage ui:temp temp.effect.text
#tellraw @a [{"score":{"name":"$name_condition_check","objective":"ui_temp"},"color":"aqua"}]
execute if score $name_condition_check ui_temp matches 0 run scoreboard players set $name_condition_check_all ui_temp 0

# 繰り返し進める
scoreboard players add $name_condition_inv ui_temp 1

# 一致すると
execute if score $name_condition_minus ui_temp matches 0 if score $name_condition_check ui_temp matches 0 run function ui:ui/23/template/condition_hub/correct

# 繰り返し
execute if score $name_condition_check_all ui_temp matches 1 if score $name_condition_inv ui_temp <= $name_condition_length ui_temp run function ui:ui/23/template/condition_hub/name
