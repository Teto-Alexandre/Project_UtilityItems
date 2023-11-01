execute store result score $mod_temp ui_temp run data get storage ui:temp temp.chest[0].Count
scoreboard players operation $mod ui_temp += $mod_temp ui_temp

data modify storage ui:temp temp.list append from storage ui:temp temp.chest[0]

data remove storage ui:temp temp.chest[0]
scoreboard players remove $loop ui_temp 1
execute if score $loop ui_temp matches 1.. run function ui:tmw/272/id/-3/sel.lp
