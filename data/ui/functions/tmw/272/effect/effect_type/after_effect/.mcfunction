# アフターエフェクト
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects append from storage ui:temp temp.effect.cg
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects.target_ids set value []
execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/7/append

#execute as @e[tag=tmw272_temp_card_effect_target] run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"は","color":"gray"},{"selector":"@e[tag=ui_temp_player]"},{"text":"のAEの予約を受けた"}]

data remove storage ui:temp temp.target_ids_temp