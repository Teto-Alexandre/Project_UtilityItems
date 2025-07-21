#

#
execute if score $is ui_temp matches 1 run particle dust_color_transition 1 0.7 0.2 1.6 0.5 0.4 0.1 ^ ^ ^0.0 0 0 0 0 1 force
execute if score $is ui_temp matches 1 run particle dust_color_transition 1 0.7 0.2 1.5 0.5 0.4 0.1 ^ ^ ^0.3 0 0 0 0 1 force
execute if score $is ui_temp matches 2 run particle dust_color_transition 1 0.7 0.2 1.4 0.5 0.4 0.1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score $is ui_temp matches 2 run particle dust_color_transition 1 0.7 0.2 1.3 0.5 0.4 0.1 ^ ^ ^0.9 0 0 0 0 1 force
execute if score $is ui_temp matches 2 run particle dust_color_transition 1 0.7 0.2 1.2 0.5 0.4 0.1 ^ ^ ^1.2 0 0 0 0 1 force
execute if score $is ui_temp matches 2 run particle dust_color_transition 1 0.7 0.2 1.1 0.5 0.4 0.1 ^ ^ ^1.5 0 0 0 0 1 force
execute if score $is ui_temp matches 2 run particle dust_color_transition 1 0.7 0.2 1.0 0.5 0.4 0.1 ^ ^ ^1.8 0 0 0 0 1 force

execute if score $is ui_temp matches 1 run particle dust_color_transition 1 0.7 0.2 1.5 0.5 0.4 0.1 ^ ^ ^-0.3 0 0 0 0 1 force
execute if score $is ui_temp matches 2 run particle dust_color_transition 1 0.7 0.2 1.4 0.5 0.4 0.1 ^ ^ ^-0.6 0 0 0 0 1 force
execute if score $is ui_temp matches 2 run particle dust_color_transition 1 0.7 0.2 1.3 0.5 0.4 0.1 ^ ^ ^-0.9 0 0 0 0 1 force
execute if score $is ui_temp matches 2 run particle dust_color_transition 1 0.7 0.2 1.2 0.5 0.4 0.1 ^ ^ ^-1.2 0 0 0 0 1 force
execute if score $is ui_temp matches 2 run particle dust_color_transition 1 0.7 0.2 1.1 0.5 0.4 0.1 ^ ^ ^-1.5 0 0 0 0 1 force
execute if score $is ui_temp matches 2 run particle dust_color_transition 1 0.7 0.2 1.0 0.5 0.4 0.1 ^ ^ ^-1.8 0 0 0 0 1 force


#

#
execute if score $is ui_temp matches 2.. run kill @s