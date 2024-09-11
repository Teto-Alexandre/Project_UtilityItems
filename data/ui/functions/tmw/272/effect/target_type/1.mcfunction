# 目線の先にいる敵を対象に取る
execute if score $target_count ui_temp matches 1.. run tag @e[tag=tmw272_visual_input,tag=!ui_temp_players_no_target] add tmw272_temp_card_effect_target

execute if score $target_count ui_temp matches 1.. unless entity @e[tag=tmw272_temp_card_effect_target] if score @s ui_tmw272_surehit matches 1.. at @s as @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,sort=random,limit=1] run tag @s add tmw272_temp_card_effect_target
execute if score $target_count ui_temp matches 1.. unless entity @e[tag=tmw272_temp_card_effect_target] if score @s ui_tmw272_surehit matches ..0 at @s as @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,sort=random,limit=1] if score @s ui_tmw272_invisible matches 0 run tag @s add tmw272_temp_card_effect_target
execute if score $target_count ui_temp matches 1.. unless entity @e[tag=tmw272_temp_card_effect_target] if score @s ui_tmw272_surehit matches ..0 at @s as @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,sort=random,limit=1] if score @s ui_tmw272_invisible matches 1.. if score @s ui_tmw272_glowing matches 1.. run tag @s add tmw272_temp_card_effect_target
