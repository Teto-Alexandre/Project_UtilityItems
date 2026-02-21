scoreboard players set $name_condition_inv ui_temp 0
data modify storage ui:temp name_condition.name set from storage ui:ui23_template_answer temp[0].tag.tmw.cg.cost
execute if data storage ui:ui23_template_answer temp[0].tag.tmw.cg.cost.amount run data modify storage ui:temp name_condition.name set from storage ui:ui23_template_answer temp[0].tag.tmw.cg.cost.amount
execute store result score $name_condition_length ui_temp run data get storage ui:temp name_condition.name
execute unless data storage ui:ui23_template_answer temp[0].tag.tmw.cg.cost run scoreboard players set $name_condition_length ui_temp 0

#tellraw @a [{"score":{"name":"$name_condition_length","objective":"ui_temp"},"color":"aqua"},{"score":{"name":"$name_condition_text_length","objective":"ui_temp"},"color":"yellow"}]



# 一致チェック
#tellraw @a [{"storage":"ui:temp","nbt":"name_condition.text"},{"text":" = "},{"storage":"ui:temp","nbt":"temp.effect.text"}]
scoreboard players set $name_condition_check ui_temp 1
execute if score $name_condition_length ui_temp = $name_condition_text_length ui_temp run scoreboard players set $name_condition_check ui_temp 0
#tellraw @a [{"score":{"name":"$name_condition_check","objective":"ui_temp"},"color":"aqua"}]

# 一致すると
execute if score $name_condition_minus ui_temp matches 0 if score $name_condition_check ui_temp matches 0 run function ui:ui/23/template/condition_hub/correct



scoreboard players set $name_condition_rows ui_temp 0