## リスポーン待ちはスぺに

# リスポーン待ち時

#
say 死んだ！
tellraw @a [{"selector":"@s"},{"text":"の残機は"},{"score":{"name": "@s","objective": "ui_tmw501_19_now_life"}}]

#
tag @s remove tmw_501_19_respawn_first
scoreboard players set @s ui_tmw501_19_now_respawn_time 200

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