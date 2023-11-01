execute store result score $temp ui_temp run data get storage ui:temp temp.list[0].Count
scoreboard players operation $rand ui_calc1 -= $temp ui_temp
execute if score $rand ui_calc1 matches ..-1 run function ui:tmw/272/oh/2/open/create_item

data modify storage ui:temp temp.list append from storage ui:temp temp.list[0]
data remove storage ui:temp temp.list[0]
execute if score $rand ui_calc1 matches 0.. run function ui:tmw/272/oh/2/open/mod
