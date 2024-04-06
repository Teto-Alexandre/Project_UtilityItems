# カードを捨てるテスト - エンティティ用
scoreboard players set $hand_check ui_temp 0
scoreboard players set $hand_success ui_temp 0
execute unless data storage ui:temp temp.effect.all unless data storage ui:temp temp.effect.only_one if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[0].tag{IsCG1:1} run scoreboard players set $hand_check ui_temp 1
execute unless data storage ui:temp temp.effect.all if data storage ui:temp temp.effect.only_one if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[0].tag{IsCG1:2} run scoreboard players set $hand_check ui_temp 1
execute if data storage ui:temp temp.effect.all if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[0].tag run scoreboard players set $hand_check ui_temp 1

execute if score $hand_check ui_temp matches 1.. run data modify storage ui:temp temp.discard set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[0]
$execute if score $hand_check ui_temp matches 1.. run execute store success score $hand_success ui_temp run data modify storage ui:temp temp.discard merge value {tag:{$(macro)}}
execute if score $hand_check ui_temp matches 1.. if score $hand_success ui_temp matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[0]
execute if score $hand_check ui_temp matches 1.. if score $hand_success ui_temp matches 0 run function ui:tmw/272/effect/effect_type/discard/entity/lp.success
execute if score $hand_check ui_temp matches 0 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[0]

data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[0]
scoreboard players remove $hand_count ui_temp 1
execute if score $var_temp ui_temp matches 1.. if score $hand_count ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/discard/entity/lp_macro with storage ui:temp temp.effect