# アフターエフェクト
function oh_my_dat:please

execute unless data storage ui:temp temp.effect.effect_mode run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects append from storage ui:temp temp.effect.cg
execute unless data storage ui:temp temp.effect.effect_mode run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[-1].target_ids set value []
execute unless data storage ui:temp temp.effect.effect_mode run execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/after_effect/append

execute if data storage ui:temp temp.effect{effect_mode:"give"} run execute store result storage ui:temp temp.target_ids_temp int 1 run scoreboard players get @s ui_obj_id
execute if data storage ui:temp temp.effect{effect_mode:"give"} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[-1].target_ids set value []
execute if data storage ui:temp temp.effect{effect_mode:"give"} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[-1].target_ids append from storage ui:temp temp.target_ids_temp
execute if data storage ui:temp temp.effect{effect_mode:"give"} run execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/after_effect/give

#execute as @e[tag=tmw272_temp_card_effect_target] run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"は","color":"gray"},{"selector":"@e[tag=ui_temp_player]"},{"text":"のAEの予約を受けた"}]

data remove storage ui:temp temp.target_ids_temp