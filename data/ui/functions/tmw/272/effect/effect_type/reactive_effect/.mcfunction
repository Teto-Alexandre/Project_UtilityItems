# アフターエフェクト
function oh_my_dat:please

execute unless data storage ui:temp temp.effect.cg.reactive_effect run data modify storage ui:temp temp.effect.cg.reactive_effect set value {}
execute if data storage ui:temp temp.effect.merge_checker run data modify storage ui:temp temp.effect.cg.reactive_effect.merge_checker set from storage ui:temp temp.effect.merge_checker
execute if data storage ui:temp temp.effect.var_checker run data modify storage ui:temp temp.effect.cg.reactive_effect.var_checker set from storage ui:temp temp.effect.var_checker
execute if data storage ui:temp temp.effect.from_self run data modify storage ui:temp temp.effect.cg.reactive_effect.from_self set from storage ui:temp temp.effect.from_self
execute if data storage ui:temp temp.effect.get_node run data modify storage ui:temp temp.effect.cg.reactive_effect.get_node set from storage ui:temp temp.effect.get_node
execute if data storage ui:temp temp.effect.no_other run data modify storage ui:temp temp.effect.cg.reactive_effect.no_other set from storage ui:temp temp.effect.no_other
execute if data storage ui:temp temp.effect.no_self run data modify storage ui:temp temp.effect.cg.reactive_effect.no_self set from storage ui:temp temp.effect.no_self
execute if data storage ui:temp temp.effect.invert run data modify storage ui:temp temp.effect.cg.reactive_effect.invert set from storage ui:temp temp.effect.invert
execute if data storage ui:temp temp.effect.mute run data modify storage ui:temp temp.effect.cg.reactive_effect.mute set from storage ui:temp temp.effect.mute

execute unless data storage ui:temp temp.effect.effect_mode run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects append from storage ui:temp temp.effect.cg
execute unless data storage ui:temp temp.effect.effect_mode run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[-1].target_ids set value []
execute unless data storage ui:temp temp.effect.effect_mode run execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/reactive_effect/append

execute if data storage ui:temp temp.effect{effect_mode:"give"} run execute store result storage ui:temp temp.target_ids_temp int 1 run scoreboard players get @s ui_obj_id
execute if data storage ui:temp temp.effect{effect_mode:"give"} run execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/reactive_effect/give

#execute as @e[tag=tmw272_temp_card_effect_target] run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"は","color":"gray"},{"selector":"@e[tag=ui_temp_player]"},{"text":"のAEの予約を受けた"}]

data remove storage ui:temp temp.target_ids_temp