#
execute as @e[tag=tmw601_feet_4] at @s run function ui:tmw/601/feet/4/tick

#
execute if entity @e[tag=tmw601_feet_4] run schedule function ui:tmw/601/feet/4/ss 1t append