scoreboard players set $activation_checker ui_temp 1
execute if data storage ui:temp skill.ct run function ui:tmw/18/macro/ct/manager with storage ui:temp skill

execute if score $activation_checker ui_temp matches 1 if data storage ui:temp skill.path run function ui:tmw/18/macro/function
execute if score $activation_checker ui_temp matches 1 if data storage ui:temp skill.list run function ui:tmw/18/macro/list

scoreboard players reset $activation_checker ui_temp