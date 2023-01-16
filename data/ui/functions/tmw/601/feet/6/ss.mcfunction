#
execute as @e[tag=tmw601_feet_6] at @s run function ui:tmw/601/feet/6/tick

#
execute if entity @e[tag=tmw601_feet_6] run schedule function ui:tmw/601/feet/6/ss 1t append