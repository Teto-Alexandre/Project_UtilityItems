tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":"MATCH_"},{"score":{"name": "@s","objective": "ui_obj_id"}},{"text":"_5SEC が読み込まれました"}]

scoreboard players add @s ui_tmw272_match_round 1
scoreboard players set @s ui_is2 100
execute if score @s ui_tmw272_match_round matches 5.. run scoreboard players set @s ui_is2 150
execute if score @s ui_tmw272_match_round matches 10.. run scoreboard players set @s ui_is2 200
tellraw @a[tag=ui_temp_players] ["",{"score":{"name": "@s","objective": "ui_tmw272_match_round"}},{"text": "ターン目"}]

execute as @e[tag=ui_temp_players] at @s run function ui:tmw/272/match/periodic/turn.player