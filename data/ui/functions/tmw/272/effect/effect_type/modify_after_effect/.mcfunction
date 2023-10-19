# アフターエフェクト編集
execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/modify_after_effect/each

#execute if data storage ui:temp temp.effect{effect_mode:"give"} run execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/modify_after_effect/each

#execute as @e[tag=tmw272_temp_card_effect_target] run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"は","color":"gray"},{"selector":"@e[tag=ui_temp_player]"},{"text":"のAEの予約を受けた"}]

data remove storage ui:temp temp.after_effect
scoreboard players reset $after_effect_num ui_temp
scoreboard players reset $after_effect_success ui_temp