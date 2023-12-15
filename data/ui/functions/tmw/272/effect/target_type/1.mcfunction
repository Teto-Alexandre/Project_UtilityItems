# 目線の先にいる敵を対象に取る
execute if score $target_count ui_temp matches 1.. run tag @e[tag=tmw272_visual_input,tag=!ui_temp_players_no_target] add tmw272_temp_card_effect_target