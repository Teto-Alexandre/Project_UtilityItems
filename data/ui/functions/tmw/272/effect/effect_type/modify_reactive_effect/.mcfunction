# アフターエフェクト編集
execute unless data storage ui:temp temp.effect.condition_continue run scoreboard players set $condition_checker_temp ui_temp 0

execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/modify_reactive_effect/each

#execute if data storage ui:temp temp.effect{effect_mode:"give"} run execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/modify_reactive_effect/each

execute if data storage ui:temp temp.effect{effect_mode:"msg"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"が","color":"gray"},{"selector":"@e[tag=tmw272_temp_card_effect_target]"},{"text":"の","color":"gray"},{"score":{"name": "$condition_checker_temp","objective": "ui_temp"}},{"text":"つの持続効果に干渉した！"}]
execute if data storage ui:temp temp.effect.export_condition run scoreboard players operation $condition_checker ui_temp += $condition_checker_temp ui_temp

data remove storage ui:temp temp.reactive_effect
scoreboard players reset $reactive_effect_num ui_temp
scoreboard players reset $reactive_effect_success ui_temp