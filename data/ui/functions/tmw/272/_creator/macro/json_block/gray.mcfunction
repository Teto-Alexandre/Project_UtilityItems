tellraw @s [{"storage":"ui:temp","nbt":"temp.lore_new","color":"aqua"}]
$data modify storage ui:temp temp.lore_new set value '{"text":"$(lore_new)","color":"gray"}'
data modify storage ui:temp temp.lore_list append from storage ui:temp temp.lore_new