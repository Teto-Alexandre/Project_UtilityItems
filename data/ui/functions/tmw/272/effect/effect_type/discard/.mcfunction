# カードを捨てるテスト
execute unless data storage ui:temp temp.effect.no_condition unless data storage ui:temp temp.effect.add_condition run scoreboard players set $condition_checker ui_temp 0
execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/discard/2

data remove storage ui:temp temp.discard
