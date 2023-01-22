## 死んだあとはスぺに

# 死亡時

#
tag @s remove tmw_501_19_dead_first

#
attribute @s generic.movement_speed modifier remove 1-501-19-0-0
attribute @s generic.movement_speed modifier remove 1-501-19-0-1
attribute @s generic.movement_speed modifier remove 1-501-19-0-2
attribute @s generic.movement_speed modifier remove 1-501-19-0-3
attribute @s generic.movement_speed modifier remove 1-501-19-0-4
attribute @s generic.movement_speed modifier remove 1-501-19-0-5
attribute @s generic.movement_speed modifier remove 1-501-19-0-6

#
clear @s
effect clear @s

#
gamemode spectator @s

#
function ui:tmw/501/19/functions/tag_score_reset