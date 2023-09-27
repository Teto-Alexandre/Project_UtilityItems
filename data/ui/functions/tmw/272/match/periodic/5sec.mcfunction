tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":"MATCH_"},{"score":{"name": "@s","objective": "ui_obj_id"}},{"text":"_5SEC が読み込まれました"}]

execute as @e[tag=ui_temp_players] at @s run function ui:tmw/272/match/periodic/5sec.player