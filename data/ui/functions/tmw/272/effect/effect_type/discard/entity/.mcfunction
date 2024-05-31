# カードを捨てるテスト - エンティティ用
function oh_my_dat:please
execute store result score $hand_count ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand

execute unless data storage ui:temp temp.effect.macro if score $var_temp ui_temp matches 1.. if score $hand_count ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/discard/entity/lp
execute if data storage ui:temp temp.effect.macro if score $var_temp ui_temp matches 1.. if score $hand_count ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/discard/entity/lp_macro with storage ui:temp temp.effect

scoreboard players set $var_temp ui_temp 0

scoreboard players reset $hand_check ui_temp
scoreboard players reset $hand_success ui_temp
scoreboard players reset $hand_count ui_temp