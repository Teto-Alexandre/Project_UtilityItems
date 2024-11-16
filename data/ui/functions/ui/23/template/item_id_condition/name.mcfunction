# スコアマクロ生成
scoreboard players operation $item_id_condition_length_temp ui_temp = $item_id_condition_inv ui_temp
execute store result storage ui:temp item_id_condition.macro.a int 1 run scoreboard players get $item_id_condition_length_temp ui_temp
execute store result storage ui:temp item_id_condition.macro.b int 1 run scoreboard players operation $item_id_condition_length_temp ui_temp += $item_id_condition_text_length ui_temp
function ui:ui/23/template/item_id_condition/macro with storage ui:temp item_id_condition.macro

# マクロ
#data modify storage ui:temp item_id_condition.text set string storage ui:temp item_id_condition.name a b

# 一致チェック
#tellraw @s [{"storage":"ui:temp","nbt":"item_id_condition.text"},{"text":" = "},{"storage":"ui:temp","nbt":"temp.effect.text"}]
execute store success score $item_id_condition_check ui_temp run data modify storage ui:temp item_id_condition.text set from storage ui:temp temp.effect.text
#tellraw @s [{"score":{"name":"$item_id_condition_check","objective":"ui_temp"},"color":"aqua"}]

# 一致すると
execute if score $item_id_condition_check ui_temp matches 0 run data modify storage ui:temp card set from storage ui:ui23_template_answer_temp _.tag.display
execute if score $item_id_condition_check ui_temp matches 0 run function ui:tmw/272/effect/broadcast/
execute if score $item_id_condition_check ui_temp matches 0 run data modify storage ui:dimensional_search list append from storage ui:ui23_template_answer_temp _
execute if score $item_id_condition_check ui_temp matches 0 run data remove storage ui:dimensional_search list[-1].Slot
execute if score $item_id_condition_check ui_temp matches 0 at @a run tag @e[tag=ui_24_1,distance=..5] add force_refresh

scoreboard players add $item_id_condition_inv ui_temp 1
execute if score $item_id_condition_check ui_temp matches 1 if score $item_id_condition_inv ui_temp <= $item_id_condition_length ui_temp run function ui:ui/23/template/item_id_condition/name
