data modify storage ui:temp name_condition.text set from storage ui:temp name_condition.name

# 一致チェック
#tellraw @s [{"storage":"ui:temp","nbt":"name_condition.text"},{"text":" = "},{"storage":"ui:temp","nbt":"temp.effect.text"}]
execute store success score $name_condition_check ui_temp run data modify storage ui:temp name_condition.text set from storage ui:temp name_condition.list[0].tag.display.Name
execute unless data storage ui:temp name_condition.list[0].tag.display.Name run scoreboard players set $name_condition_check ui_temp 2
#tellraw @s [{"score":{"name":"$name_condition_check","objective":"ui_temp"},"color":"aqua"}]

#execute if score $name_condition_check ui_temp matches 0 run tellraw @s [{"text":" > "},{"text":"一致","color":"green"},{"text":" ← "},{"storage":"ui:temp","nbt":"name_condition.name","interpret":true},{"text":" = "},{"storage":"ui:temp","nbt":"name_condition.list[0].tag.display.Name","interpret":true}]
#execute if score $name_condition_check ui_temp matches 1 run tellraw @s [{"text":" > "},{"text":"不一致","color":"red"},{"text":" ← "},{"storage":"ui:temp","nbt":"name_condition.name","interpret":true},{"text":" = "},{"storage":"ui:temp","nbt":"name_condition.list[0].tag.display.Name","interpret":true}]
#execute if score $name_condition_check ui_temp matches 2 run tellraw @s [{"text":" > "},{"text":"参照x","color":"dark_gray"},{"text":" ← "},{"storage":"ui:temp","nbt":"name_condition.name","interpret":true},{"text":" = "},{"storage":"ui:temp","nbt":"name_condition.list[0].tag.display.Name","interpret":true}]

# 一致すると
execute if score $name_condition_check ui_temp matches 0 run scoreboard players add $condition_checker ui_temp 1
execute if score $name_condition_check ui_temp matches 0 run data modify storage ui:temp name_condition.temp_list_dup append from storage ui:temp name_condition.list[0]

execute if score $name_condition_check ui_temp matches 1 run data modify storage ui:temp name_condition.list append from storage ui:temp name_condition.list[0]
scoreboard players remove $name_condition_count ui_temp 1
data remove storage ui:temp name_condition.list[0]

execute if score $name_condition_count ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/name_duplication/subtract_name
