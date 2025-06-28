#tellraw @s [{"storage":"ui:temp","nbt":"temp.lore_list","color":"yellow"}]

execute store result score $size ui_temp run data get storage ui:temp temp.lore_list

execute if data storage ui:temp temp.lore_list[0] run data modify storage ui:temp temp.lore_macro.0 set from storage ui:temp temp.lore_list[0]
execute if data storage ui:temp temp.lore_list[1] run data modify storage ui:temp temp.lore_macro.1 set from storage ui:temp temp.lore_list[1]
execute if data storage ui:temp temp.lore_list[2] run data modify storage ui:temp temp.lore_macro.2 set from storage ui:temp temp.lore_list[2]
execute if data storage ui:temp temp.lore_list[3] run data modify storage ui:temp temp.lore_macro.3 set from storage ui:temp temp.lore_list[3]
execute if data storage ui:temp temp.lore_list[4] run data modify storage ui:temp temp.lore_macro.4 set from storage ui:temp temp.lore_list[4]
execute if data storage ui:temp temp.lore_list[5] run data modify storage ui:temp temp.lore_macro.5 set from storage ui:temp temp.lore_list[5]
execute if data storage ui:temp temp.lore_list[6] run data modify storage ui:temp temp.lore_macro.6 set from storage ui:temp temp.lore_list[6]
execute if data storage ui:temp temp.lore_list[7] run data modify storage ui:temp temp.lore_macro.7 set from storage ui:temp temp.lore_list[7]
execute if data storage ui:temp temp.lore_list[8] run data modify storage ui:temp temp.lore_macro.8 set from storage ui:temp temp.lore_list[8]
execute if data storage ui:temp temp.lore_list[9] run data modify storage ui:temp temp.lore_macro.9 set from storage ui:temp temp.lore_list[9]

execute if score $size ui_temp matches 1 run function ui:tmw/272/_creator/macro/lore_re/0 with storage ui:temp temp.lore_macro
execute if score $size ui_temp matches 2 run function ui:tmw/272/_creator/macro/lore_re/1 with storage ui:temp temp.lore_macro
execute if score $size ui_temp matches 3 run function ui:tmw/272/_creator/macro/lore_re/2 with storage ui:temp temp.lore_macro
execute if score $size ui_temp matches 4 run function ui:tmw/272/_creator/macro/lore_re/3 with storage ui:temp temp.lore_macro
execute if score $size ui_temp matches 5 run function ui:tmw/272/_creator/macro/lore_re/4 with storage ui:temp temp.lore_macro
execute if score $size ui_temp matches 6 run function ui:tmw/272/_creator/macro/lore_re/5 with storage ui:temp temp.lore_macro
execute if score $size ui_temp matches 7 run function ui:tmw/272/_creator/macro/lore_re/6 with storage ui:temp temp.lore_macro
execute if score $size ui_temp matches 8 run function ui:tmw/272/_creator/macro/lore_re/7 with storage ui:temp temp.lore_macro
execute if score $size ui_temp matches 9 run function ui:tmw/272/_creator/macro/lore_re/8 with storage ui:temp temp.lore_macro
execute if score $size ui_temp matches 10 run function ui:tmw/272/_creator/macro/lore_re/9 with storage ui:temp temp.lore_macro

#tellraw @s [{"score":{"name":"$size","objective":"ui_temp"}},{"text":" "},{"storage":"ui:temp","nbt":"temp.lore_re","color":"green"}]