#

#
execute if score @s ui_tmw501_19_stat_jet_type matches 1 run effect give @s levitation 1 0 true
execute if score @s ui_tmw501_19_stat_jet_type matches 2 run effect give @s levitation 1 1 true
execute if score @s ui_tmw501_19_stat_jet_type matches 3 run effect give @s levitation 1 2 true
execute if score @s ui_tmw501_19_stat_jet_type matches 4 run effect give @s levitation 1 3 true
execute if score @s ui_tmw501_19_stat_jet_type matches 4 run effect give @s slow_falling 2 0 true

#
function ui:tmw/501/19/functions/energy/jet_use
