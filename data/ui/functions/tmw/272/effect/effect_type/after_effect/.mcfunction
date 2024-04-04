# アフターエフェクト
function oh_my_dat:please

execute unless data storage ui:temp temp.effect.effect_mode run function ui:tmw/272/effect/effect_type/after_effect/unless
execute if data storage ui:temp temp.effect{effect_mode:"give"} run function ui:tmw/272/effect/effect_type/after_effect/give

#execute as @e[tag=tmw272_temp_card_effect_target] run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"は","color":"gray"},{"selector":"@e[tag=ui_temp_player]"},{"text":"のAEの予約を受けた"}]

data remove storage ui:temp temp.target_ids_temp