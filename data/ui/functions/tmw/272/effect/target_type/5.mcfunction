# チーム
execute if score @s ui_team matches 1 run tag @e[tag=!tmw272_spectate,tag=ui_temp_players,scores={ui_team=1}] add tmw272_temp_card_effect_team
execute if score @s ui_team matches 2 run tag @e[tag=!tmw272_spectate,tag=ui_temp_players,scores={ui_team=2}] add tmw272_temp_card_effect_team
execute if score @s ui_team matches 3 run tag @e[tag=!tmw272_spectate,tag=ui_temp_players,scores={ui_team=3}] add tmw272_temp_card_effect_team
execute if score @s ui_team matches 4 run tag @e[tag=!tmw272_spectate,tag=ui_temp_players,scores={ui_team=4}] add tmw272_temp_card_effect_team

execute if score @s ui_team matches 6 run tag @e[tag=!tmw272_spectate,tag=ui_temp_players,scores={ui_team=6}] add tmw272_temp_card_effect_team
execute if score @s ui_team matches 7.. run function ui:tmw/272/effect/target_type/change/team

# yes_randomを優先して狙う
execute if score $target_count ui_temp matches 1 run tag @e[tag=ui_temp_players_yes_random,tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,tag=!ui_temp_players_no_target,sort=random,limit=1] add tmw272_temp_card_effect_target
execute if score $target_count ui_temp matches 2 run tag @e[tag=ui_temp_players_yes_random,tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,tag=!ui_temp_players_no_target,sort=random,limit=2] add tmw272_temp_card_effect_target
execute if score $target_count ui_temp matches 3 run tag @e[tag=ui_temp_players_yes_random,tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,tag=!ui_temp_players_no_target,sort=random,limit=3] add tmw272_temp_card_effect_target
execute if score $target_count ui_temp matches 4 run tag @e[tag=ui_temp_players_yes_random,tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,tag=!ui_temp_players_no_target,sort=random,limit=4] add tmw272_temp_card_effect_target
execute if score $target_count ui_temp matches 5 run tag @e[tag=ui_temp_players_yes_random,tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,tag=!ui_temp_players_no_target,sort=random,limit=5] add tmw272_temp_card_effect_target
execute if score $target_count ui_temp matches 6 run tag @e[tag=ui_temp_players_yes_random,tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,tag=!ui_temp_players_no_target,sort=random,limit=6] add tmw272_temp_card_effect_target
execute if score $target_count ui_temp matches 7 run tag @e[tag=ui_temp_players_yes_random,tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,tag=!ui_temp_players_no_target,sort=random,limit=7] add tmw272_temp_card_effect_target
execute if score $target_count ui_temp matches 8 run tag @e[tag=ui_temp_players_yes_random,tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,tag=!ui_temp_players_no_target,sort=random,limit=8] add tmw272_temp_card_effect_target
execute if score $target_count ui_temp matches 9 run tag @e[tag=ui_temp_players_yes_random,tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,tag=!ui_temp_players_no_target,sort=random,limit=9] add tmw272_temp_card_effect_target
execute if score $target_count ui_temp matches 10.. run tag @e[tag=ui_temp_players_yes_random,tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,tag=!ui_temp_players_no_target,sort=random,limit=10] add tmw272_temp_card_effect_target

execute as @e[tag=tmw272_temp_card_effect_target] run scoreboard players remove $target_count ui_temp 1

# 自分以外の全プレイヤーをランダムに対象に取る
execute if score $target_count ui_temp matches 1 run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,tag=!ui_temp_players_no_target,tag=!ui_temp_players_yes_random,sort=random,limit=1] add tmw272_temp_card_effect_target
execute if score $target_count ui_temp matches 2 run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,tag=!ui_temp_players_no_target,tag=!ui_temp_players_yes_random,sort=random,limit=2] add tmw272_temp_card_effect_target
execute if score $target_count ui_temp matches 3 run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,tag=!ui_temp_players_no_target,tag=!ui_temp_players_yes_random,sort=random,limit=3] add tmw272_temp_card_effect_target
execute if score $target_count ui_temp matches 4 run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,tag=!ui_temp_players_no_target,tag=!ui_temp_players_yes_random,sort=random,limit=4] add tmw272_temp_card_effect_target
execute if score $target_count ui_temp matches 5 run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,tag=!ui_temp_players_no_target,tag=!ui_temp_players_yes_random,sort=random,limit=5] add tmw272_temp_card_effect_target
execute if score $target_count ui_temp matches 6 run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,tag=!ui_temp_players_no_target,tag=!ui_temp_players_yes_random,sort=random,limit=6] add tmw272_temp_card_effect_target
execute if score $target_count ui_temp matches 7 run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,tag=!ui_temp_players_no_target,tag=!ui_temp_players_yes_random,sort=random,limit=7] add tmw272_temp_card_effect_target
execute if score $target_count ui_temp matches 8 run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,tag=!ui_temp_players_no_target,tag=!ui_temp_players_yes_random,sort=random,limit=8] add tmw272_temp_card_effect_target
execute if score $target_count ui_temp matches 9 run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,tag=!ui_temp_players_no_target,tag=!ui_temp_players_yes_random,sort=random,limit=9] add tmw272_temp_card_effect_target
execute if score $target_count ui_temp matches 10.. run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_players_no_random,tag=!tmw272_temp_card_effect_team,tag=!ui_temp_players_no_target,tag=!ui_temp_players_yes_random,sort=random,limit=10] add tmw272_temp_card_effect_target

#
tag @e[tag=tmw272_temp_card_effect_team] remove tmw272_temp_card_effect_team