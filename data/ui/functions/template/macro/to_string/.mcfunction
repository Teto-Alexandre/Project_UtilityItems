data modify storage ui:macro temp.in set value '{"storage":"ui:macro","nbt":"temp.1"}'
summon item_frame 0 0 0 {Tags:["ui_template_macro_to_string_temp"],Item:{id:"stone",Count:1b}}
item modify entity @e[tag=ui_template_macro_to_string_temp,limit=1] container.0 ui:temp/name
execute as @e[tag=ui_template_macro_to_string_temp,limit=1] at @s run function ui:template/macro/to_string/2
function ui:template/macro/to_string/3 with storage ui:macro temp