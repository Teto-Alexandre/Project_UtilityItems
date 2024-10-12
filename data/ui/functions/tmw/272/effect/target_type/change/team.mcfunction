scoreboard players operation $tmw272_temp_card_effect_team ui_temp = @s ui_team
execute as @e[tag=!tmw272_spectate,tag=ui_temp_players] if score @s ui_team = $tmw272_temp_card_effect_team ui_temp run tag @s add tmw272_temp_card_effect_team
scoreboard players reset $tmw272_temp_card_effect_team ui_temp
