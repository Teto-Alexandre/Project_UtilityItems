# 回復する（回復回数を計算するテスト）
scoreboard players operation @e[tag=tmw272_temp_card_effect_target] ui_tmw272_mana_max += $var ui_temp

execute as @e[tag=tmw272_temp_card_effect_target] run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"のマナ最大値が"},{"score":{"name": "@s","objective": "ui_tmw272_mana_max"}},{"text": "になった！"}]