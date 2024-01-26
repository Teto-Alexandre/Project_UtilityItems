execute store result score $time ui_temp run time query gametime
execute if score $ct ui_temp <= $time ui_temp run scoreboard players set $ct ui_temp 0
execute unless data storage ui:temp skill.mute if score $ct ui_temp > $time ui_temp run function ui:tmw/18/macro/ct/tellraw