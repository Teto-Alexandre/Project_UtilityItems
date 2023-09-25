# 使用成功した場合
data modify storage ui:temp temp.card set from storage ui:temp card
execute store result score $count ui_temp run data get storage ui:temp temp.card.effects

execute if score $count ui_temp matches 1.. run function ui:tmw/272/id/1/burn

data remove storage ui:temp temp
scoreboard players reset $count ui_temp