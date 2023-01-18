## 死なない、満腹度常時回復、暗視

# ロビー

#
tag @s remove tmw_501_19_lobby_first

#
effect clear @s

#
effect give @s resistance 1000000 127 true
effect give @s regeneration 1000000 0 true
effect give @s saturation 1000000 0 true
effect give @s weakness 1000000 127 true

#
gamemode adventure @s

#
function ui:tmw/501/19/functions/tag_score_reset
