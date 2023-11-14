# チーム
execute if score @s ui_team matches 1 run tag @e[tag=!tmw272_spectate,tag=ui_temp_players,scores={ui_team=1}] add tmw272_temp_card_effect_team
execute if score @s ui_team matches 2 run tag @e[tag=!tmw272_spectate,tag=ui_temp_players,scores={ui_team=2}] add tmw272_temp_card_effect_team
execute if score @s ui_team matches 3 run tag @e[tag=!tmw272_spectate,tag=ui_temp_players,scores={ui_team=3}] add tmw272_temp_card_effect_team
execute if score @s ui_team matches 4 run tag @e[tag=!tmw272_spectate,tag=ui_temp_players,scores={ui_team=4}] add tmw272_temp_card_effect_team

execute if score @s ui_team matches 6 run tag @e[tag=!tmw272_spectate,tag=ui_temp_players,scores={ui_team=6}] add tmw272_temp_card_effect_team

# 自分以外の全プレイヤーをランダムに対象に取る
execute unless data storage ui:temp temp.effect.target_count run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,sort=random,limit=1] add tmw272_temp_card_effect_target
execute if data storage ui:temp temp.effect{target_count:1} run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,sort=random,limit=1] add tmw272_temp_card_effect_target
execute if data storage ui:temp temp.effect{target_count:2} run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,sort=random,limit=2] add tmw272_temp_card_effect_target
execute if data storage ui:temp temp.effect{target_count:3} run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,sort=random,limit=3] add tmw272_temp_card_effect_target
execute if data storage ui:temp temp.effect{target_count:4} run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,sort=random,limit=4] add tmw272_temp_card_effect_target
execute if data storage ui:temp temp.effect{target_count:5} run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,sort=random,limit=5] add tmw272_temp_card_effect_target
execute if data storage ui:temp temp.effect{target_count:6} run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,sort=random,limit=6] add tmw272_temp_card_effect_target
execute if data storage ui:temp temp.effect{target_count:7} run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,sort=random,limit=7] add tmw272_temp_card_effect_target
execute if data storage ui:temp temp.effect{target_count:8} run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,sort=random,limit=8] add tmw272_temp_card_effect_target
execute if data storage ui:temp temp.effect{target_count:9} run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,sort=random,limit=9] add tmw272_temp_card_effect_target
execute if data storage ui:temp temp.effect{target_count:10} run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,sort=random,limit=10] add tmw272_temp_card_effect_target

#
tag @e[tag=tmw272_temp_card_effect_team] remove tmw272_temp_card_effect_team