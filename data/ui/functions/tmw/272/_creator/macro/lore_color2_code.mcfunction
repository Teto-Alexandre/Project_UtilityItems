data modify storage ui:macro temp.1 set from storage ui:temp temp.lore_new

$execute if data storage cg_custom: advanced_value[{id:"$(lore_code)"}].text.title run data modify storage ui:macro temp.2 set string storage cg_custom: advanced_value[{id:"$(lore_code)"}].text.title 1 -1
$execute if data storage ui:tmw272_text simple_value.$(lore_code).title run data modify storage ui:macro temp.2 set string storage ui:tmw272_text simple_value.$(lore_code).title 1 -1

data modify storage ui:temp temp.lore_list append from storage ui:macro temp.2

#tellraw @a [{"storage":"ui:macro","nbt":"temp.1"},{"text":" + "},{"storage":"ui:macro","nbt":"temp.2"}]
#function ui:tmw/272/_creator/macro/string_combine_block with storage ui:macro temp
#data modify storage ui:temp temp.lore_new set from storage ui:macro temp.NewString