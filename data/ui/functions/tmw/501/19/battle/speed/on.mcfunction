#

#
execute if score @s ui_tmw501_19_stat_speed_type matches 1 run effect give @s speed 10 0 true
execute if score @s ui_tmw501_19_stat_speed_type matches 2 run effect give @s speed 10 1 true
execute if score @s ui_tmw501_19_stat_speed_type matches 3 run effect give @s speed 10 2 true
execute if score @s ui_tmw501_19_stat_speed_type matches 4 run effect give @s speed 10 3 true
execute if score @s ui_tmw501_19_stat_speed_type matches 5 run effect give @s speed 10 4 true
execute if score @s ui_tmw501_19_stat_speed_type matches 6 run effect give @s speed 10 5 true

#
function ui:tmw/501/19/functions/energy/speed_use
