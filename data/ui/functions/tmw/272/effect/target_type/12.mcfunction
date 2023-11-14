# チーム
execute if score @s ui_team matches 1 run tag @e[tag=!tmw272_spectate,tag=ui_temp_players,scores={ui_team=1}] add tmw272_temp_card_effect_team
execute if score @s ui_team matches 2 run tag @e[tag=!tmw272_spectate,tag=ui_temp_players,scores={ui_team=2}] add tmw272_temp_card_effect_team
execute if score @s ui_team matches 3 run tag @e[tag=!tmw272_spectate,tag=ui_temp_players,scores={ui_team=3}] add tmw272_temp_card_effect_team
execute if score @s ui_team matches 4 run tag @e[tag=!tmw272_spectate,tag=ui_temp_players,scores={ui_team=4}] add tmw272_temp_card_effect_team

execute if score @s ui_team matches 6 run tag @e[tag=!tmw272_spectate,tag=ui_temp_players,scores={ui_team=6}] add tmw272_temp_card_effect_team

# 自分含む味方全員を対象に取る
tag @e[tag=!tmw272_spectate,tag=ui_temp_players,tag=!ui_temp_player,tag=tmw272_temp_card_effect_team] add tmw272_temp_card_effect_target

#
tag @e[tag=tmw272_temp_card_effect_team] remove tmw272_temp_card_effect_team
