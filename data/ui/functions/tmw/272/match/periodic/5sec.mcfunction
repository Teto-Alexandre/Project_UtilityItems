tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":"MATCH_"},{"score":{"name": "@s","objective": "ui_obj_id"}},{"text":"_5SEC が読み込まれました"}]

scoreboard players add @s ui_tmw272_match_round 1
tellraw @a[tag=ui_temp_players] ["",{"score":{"name": "@s","objective": "ui_tmw272_match_round"}},{"text": "ターン目"}]

execute as @e[tag=ui_temp_players] at @s run function ui:tmw/272/match/periodic/5sec.player