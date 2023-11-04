# 回復する

# 下限設定
execute unless data storage ui:temp temp.effect.under_zero run scoreboard players operation $var ui_temp > #0 ui_num

execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/heal/each
