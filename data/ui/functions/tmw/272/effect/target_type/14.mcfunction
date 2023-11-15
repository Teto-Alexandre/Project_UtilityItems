#
scoreboard players operation $summoner_obj_id ui_temp = @s ui_tmw272_summoner_obj_id

# 召喚者をターゲットする
execute as @e[tag=ui_temp_players] if score @s ui_obj_id = $summoner_obj_id ui_temp run tag @s add tmw272_temp_card_effect_target

#
scoreboard players reset $summoner_obj_id ui_temp
