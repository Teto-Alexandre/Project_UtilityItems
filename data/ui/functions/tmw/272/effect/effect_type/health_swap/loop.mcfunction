tag @e[tag=tmw272_temp_card_effect_target,sort=random,limit=1] add tmw272_temp_card_effect_target_one
tag @e[tag=tmw272_temp_card_effect_target,tag=!tmw272_temp_card_effect_target_one,sort=random,limit=1] add tmw272_temp_card_effect_target_two

scoreboard players operation $health_temp ui_temp = @e[tag=tmw272_temp_card_effect_target_one] ui_tmw272_health
scoreboard players operation @e[tag=tmw272_temp_card_effect_target_one] ui_tmw272_health = @e[tag=tmw272_temp_card_effect_target_two] ui_tmw272_health
scoreboard players operation @e[tag=tmw272_temp_card_effect_target_two] ui_tmw272_health = $health_temp ui_temp

tag @e[tag=tmw272_temp_card_effect_target_one] remove tmw272_temp_card_effect_target_one
tag @e[tag=tmw272_temp_card_effect_target_two] remove tmw272_temp_card_effect_target_two

scoreboard players remove $count_targets ui_temp 1
execute if score $count_targets ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/health_swap/loop