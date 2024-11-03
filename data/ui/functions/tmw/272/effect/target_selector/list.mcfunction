# 指定のエンティティ以外をターゲットから外す
execute store result score $target_list ui_temp run data get storage ui:temp temp.effect.target_selector.list
execute if score $target_list ui_temp matches 1.. run function ui:tmw/272/effect/target_selector/list.lp

execute unless data storage ui:temp temp.effect.target_selector.invert run tag @e[tag=ui_temp_players,tag=!tmw272_temp_card_effect_target_selector] add ui_temp_players_no_target
execute if data storage ui:temp temp.effect.target_selector.invert run tag @e[tag=ui_temp_players,tag=tmw272_temp_card_effect_target_selector] add ui_temp_players_no_target

tag @e[tag=ui_temp_players,tag=tmw272_temp_card_effect_target_selector] remove tmw272_temp_card_effect_target_selector

scoreboard players reset $target_list ui_temp
