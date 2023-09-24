scoreboard players operation @s ui_tmw271_id = $base ui_tmw271_id
scoreboard players add $base ui_tmw271_id 1
tellraw @s [{"text":"PLAYER_ID: "},{"score":{"name": "@s","objective": "ui_tmw271_id"}}]