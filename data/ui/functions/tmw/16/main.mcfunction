data modify storage ui:temp temp.text set from entity @s SelectedItem.tag.tmw.textboards
execute store result score $count ui_temp run data get storage ui:temp temp.text
tellraw @a {"score":{"name": "$count","objective": "ui_temp"}}

execute at @s positioned ~ ~0.3 ~ run function ui:tmw/16/text_output

data remove storage ui:temp temp