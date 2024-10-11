# アフターエフェクト
function oh_my_dat:please

scoreboard players set $after_effect ui_temp 0
execute if data storage ui:temp temp.effect{effect_type:"after_effect"} run scoreboard players set $after_effect ui_temp 1
execute if data storage ui:temp temp.effect{effect_type:"death_effect"} run scoreboard players set $after_effect ui_temp 2
execute if data storage ui:temp temp.effect{effect_type:"reactive_effect"} run scoreboard players set $after_effect ui_temp 3
execute if data storage ui:temp temp.effect{effect_type:"intercept_command"} run scoreboard players set $after_effect ui_temp 4

execute if data storage ui:temp temp.effect.time_limit_turn run data modify storage ui:temp temp.effect.cg.time_limit_turn set from storage ui:temp temp.effect.time_limit_turn
execute if data storage ui:temp temp.effect.copy_display run data modify storage ui:temp temp.effect.cg.name set from storage ui:temp card.name
execute if data storage ui:temp temp.effect.copy_display run data modify storage ui:temp temp.effect.cg.lore set from storage ui:temp card.lore
execute if data storage ui:temp temp.effect.copy_list run data modify storage ui:temp temp.effect.cg.list set from storage ui:temp card.list

execute if score $after_effect ui_temp matches 3..4 run function ui:tmw/272/effect/effect_type/after_effect/reactive_init

execute unless data storage ui:temp temp.effect.effect_mode run function ui:tmw/272/effect/effect_type/after_effect/unless
execute if data storage ui:temp temp.effect{effect_mode:"give"} run function ui:tmw/272/effect/effect_type/after_effect/give

#execute as @e[tag=tmw272_temp_card_effect_target] run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"は","color":"gray"},{"selector":"@e[tag=ui_temp_player]"},{"text":"のAEの予約を受けた"}]

data remove storage ui:temp temp.target_ids_temp