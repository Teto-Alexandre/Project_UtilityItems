scoreboard players set $success ui_temp 0

execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage cg_custom: advanced_value[{id:"$(lore_code)"}].text.title run data modify storage ui:temp temp.lore_list append string storage cg_custom: advanced_value[{id:"$(lore_code)"}].text.title 1 -1
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:tmw272_text simple_value.$(lore_code).title run data modify storage ui:temp temp.lore_list append string storage ui:tmw272_text simple_value.$(lore_code).title 1 -1
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"唯一"} run function ui:tmw/272/_creator/macro/lore_zip/only_one
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"準唯一"} run function ui:tmw/272/_creator/macro/lore_zip/only_two
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"永続"} run data modify storage ui:temp temp.lore_list append value {"text":"永続","color":"yellow","italic":false}
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"開幕"} run data modify storage ui:temp temp.lore_list append value {"text":"開幕","color":"green","italic":false}

#tellraw @a [{"storage":"ui:macro","nbt":"temp.1"},{"text":" + "},{"storage":"ui:macro","nbt":"temp.2"}]
#function ui:tmw/272/_creator/macro/string_combine_block with storage ui:macro temp
#data modify storage ui:temp temp.lore_new set from storage ui:macro temp.NewString