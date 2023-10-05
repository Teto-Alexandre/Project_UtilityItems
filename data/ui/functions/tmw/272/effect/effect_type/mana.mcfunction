# 回復する（回復回数を計算するテスト）
scoreboard players operation @e[tag=tmw272_temp_card_effect_target] ui_tmw272_mana += $var ui_temp
execute unless data storage ui:temp temp.effect{effect_mode:"="} run scoreboard players operation @e[tag=tmw272_temp_card_effect_target] ui_tmw272_mana = $var ui_temp
