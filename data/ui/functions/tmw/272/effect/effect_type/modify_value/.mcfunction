execute as @e[tag=tmw272_temp_card_effect_target,tag=!ui_temp_player] if score @s ui_tmw272_hexproof matches 1.. run tag @s remove tmw272_temp_card_effect_target

# 数値を入れる
#execute unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players set $condition_checker ui_temp 0

execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/modify_value/each

#scoreboard players reset $tmw272_get_value ui_temp