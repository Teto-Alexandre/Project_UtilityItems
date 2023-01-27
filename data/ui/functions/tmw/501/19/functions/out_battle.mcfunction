# システムダウン
execute if score @s ui_tmw501_19_now_life matches ..0 run tag @s[tag=tmw_501_19_battle] add tmw_501_19_dead
execute if score @s ui_tmw501_19_now_life matches ..0 run tag @s[tag=tmw_501_19_battle] add tmw_501_19_dead_first
execute if score @s ui_tmw501_19_now_life matches 1.. run tag @s[tag=tmw_501_19_battle] add tmw_501_19_respawn
execute if score @s ui_tmw501_19_now_life matches 1.. run tag @s[tag=tmw_501_19_battle] add tmw_501_19_respawn_first
execute if score @s ui_tmw501_19_now_life matches 1.. run scoreboard players remove @s[tag=tmw_501_19_battle] ui_tmw501_19_now_life 1
tag @s[tag=tmw_501_19_battle] remove tmw_501_19_battle