# ダメージを与える
execute if data storage ui:temp temp.effect.reset_condition run scoreboard players set $condition_checker ui_temp 0
scoreboard players set $deathblow_checker ui_temp 0

# 攻撃側変数
execute unless data storage ui:temp temp.effect.indep run function ui:tmw/272/effect/effect_type/damage/attacker_mod_check

scoreboard players operation $var ui_temp > #0 ui_num

execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/damage/each

scoreboard players reset $deathblow_checker ui_temp
tag @e[tag=tmw272_temp_card_effect_damage_half] remove tmw272_temp_card_effect_damage_half
