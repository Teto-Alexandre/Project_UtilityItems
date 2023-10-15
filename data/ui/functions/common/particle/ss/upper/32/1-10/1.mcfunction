#

#
particle dust 1 1 1 1.5 ^ ^ ^0.0 0 0 0 0 1 force
particle dust 1 1 1 1.4 ^ ^ ^0.3 0 0 0 0 1 force
particle dust 1 1 1 1.3 ^ ^ ^0.6 0 0 0 0 1 force
particle dust 1 1 1 1.2 ^ ^ ^0.9 0 0 0 0 1 force
particle dust 1 1 1 1.1 ^ ^ ^1.2 0 0 0 0 1 force
particle dust 1 1 1 1.0 ^ ^ ^1.5 0 0 0 0 1 force

particle dust 1 1 1 1.4 ^ ^ ^-0.3 0 0 0 0 1 force
particle dust 1 1 1 1.3 ^ ^ ^-0.6 0 0 0 0 1 force
particle dust 1 1 1 1.2 ^ ^ ^-0.9 0 0 0 0 1 force
particle dust 1 1 1 1.1 ^ ^ ^-1.2 0 0 0 0 1 force
particle dust 1 1 1 1.0 ^ ^ ^-1.5 0 0 0 0 1 force

#
playsound entity.player.attack.crit player @a ~ ~ ~ 1 1 0

#
execute if score $is ui_temp matches 1.. run kill @s