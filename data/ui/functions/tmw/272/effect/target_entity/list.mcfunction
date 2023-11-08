# 指定のエンティティ以外をターゲットから外す
execute store result score $target_list ui_temp run data get storage ui:temp temp.effect.target_entity.list
execute if score $target_list ui_temp matches 1.. run function ui:tmw/272/effect/target_entity/list.lp

execute unless data storage ui:temp temp.effect.target_entity.invert run tag @e[tag=ui_temp_players,tag=!tmw272_temp_card_effect_target_entity] remove tmw272_temp_card_effect_target
execute if data storage ui:temp temp.effect.target_entity.invert run tag @e[tag=ui_temp_players,tag=tmw272_temp_card_effect_target_entity] remove tmw272_temp_card_effect_target

tag @e[tag=ui_temp_players,tag=tmw272_temp_card_effect_target_entity] remove tmw272_temp_card_effect_target_entity

scoreboard players reset $target_list ui_temp
