# アフターエフェクト編集
execute as @s run function ui:tmw/272/reactive_effect/modify/each

#execute if data storage ui:temp temp.effect{effect_mode:"give"} run execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/modify_reactive_effect/each

execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[0].reactive_effect{effect_mode:"msg"} run tellraw @a[tag=ui_temp_players] ["",{"selector":"@s"},{"text":"の","color":"gray"},{"score":{"name": "$condition_checker_temp","objective": "ui_temp"}},{"text":"つの持続効果に干渉した！"}]

data remove storage ui:temp temp.reactive_effect
scoreboard players reset $reactive_effect_num ui_temp
scoreboard players reset $reactive_effect_success ui_temp

