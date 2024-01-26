# 軽量化のためストレージに書き出す
execute store result score $count_linear ui_temp run data get storage ui:temp temp.skill.function.first
execute if score $count_linear ui_temp matches 1.. run data modify storage ui:temp linear set from storage ui:temp temp.skill.function.first
execute if score $count_linear ui_temp matches 1.. run function ui:tmw/18/queue/linear
scoreboard players reset $count_linear ui_temp
data remove storage ui:temp skill
data remove storage ui:temp linear