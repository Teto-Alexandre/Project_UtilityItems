# 指定のエンティティ以外をターゲットから外す
data modify storage ui:temp temp.temp.target_entity set from storage ui:temp temp.effect.target_entity

function ui:tmw/272/effect/target_entity/macro with storage ui:temp temp.temp

data remove storage ui:temp temp.temp

execute unless data storage ui:temp temp.temp.invert run tag @e[tag=ui_temp_players,tag=!tmw272_temp_card_effect_target_entity] add ui_temp_players_no_target
execute if data storage ui:temp temp.temp.invert run tag @e[tag=ui_temp_players,tag=tmw272_temp_card_effect_target_entity] add ui_temp_players_no_target

tag @e[tag=ui_temp_players,tag=tmw272_temp_card_effect_target_entity] remove tmw272_temp_card_effect_target_entity