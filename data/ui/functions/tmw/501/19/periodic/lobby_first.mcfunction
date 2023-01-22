## 死なない、満腹度常時回復、暗視

# ロビー

#
tag @s remove tmw_501_19_lobby_first

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
effect give @s resistance 1000000 127 true
effect give @s regeneration 1000000 0 true
effect give @s instant_health 10 10 true
effect give @s saturation 1000000 0 true
effect give @s weakness 1000000 127 true

#
gamemode adventure @s

#
function ui:tmw/501/19/functions/tag_score_reset
