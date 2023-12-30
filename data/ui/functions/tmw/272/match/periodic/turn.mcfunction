tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":"MATCH_"},{"score":{"name": "@s","objective": "ui_obj_id"}},{"text":"_5SEC が読み込まれました"}]

scoreboard players add @s ui_tmw272_match_round 1
scoreboard players add @s ui_tmw272_true_match_round 1
execute if score @s ui_tmw272_match_round = @s ui_tmw272_true_match_round run tellraw @a[tag=ui_temp_players] ["",{"score":{"name": "@s","objective": "ui_tmw272_match_round"}},{"text": "幕目"}]
execute unless score @s ui_tmw272_match_round = @s ui_tmw272_true_match_round run tellraw @a[tag=ui_temp_players] ["",{"score":{"name": "@s","objective": "ui_tmw272_match_round"}},{"text": "幕目 (真"},{"score":{"name": "@s","objective": "ui_tmw272_true_match_round"}},{"text": "幕目)"}]
scoreboard players set @s ui_is2 100
execute if score @s ui_tmw272_match_round matches 5.. run scoreboard players set @s ui_is2 140
execute if score @s ui_tmw272_match_round matches 5 run tellraw @a[tag=ui_temp_players] ["",{"text": "幕の長さが7秒に延長されました"}]
execute if score @s ui_tmw272_match_round matches 10.. run scoreboard players set @s ui_is2 200
execute if score @s ui_tmw272_match_round matches 10 run tellraw @a[tag=ui_temp_players] ["",{"text": "幕の長さが10秒に延長されました"}]

execute as @e[tag=ui_temp_players] at @s run function ui:tmw/272/match/periodic/turn.player