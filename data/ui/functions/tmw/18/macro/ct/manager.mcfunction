scoreboard players set $activation_checker ui_temp 0

$execute store result score $ct ui_temp run data get storage ui:skill temp.now.ct.$(type)
execute unless score $ct ui_temp matches 0 run function ui:tmw/18/macro/ct/passed_calc
execute if score $ct ui_temp matches 0 run function ui:tmw/18/macro/ct/pass

$execute if score $activation_checker ui_temp matches 1 run data modify storage ui:skill temp.now.ct.$(type) set value 0
$execute if score $activation_checker ui_temp matches 1 store result storage ui:skill temp.now.ct.$(type) int 1 run scoreboard players get $ct ui_temp
execute if score $activation_checker ui_temp matches 1 run scoreboard players set $changed ui_temp 1