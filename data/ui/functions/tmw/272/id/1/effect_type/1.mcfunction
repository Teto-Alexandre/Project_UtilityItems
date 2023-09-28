# 体力を減らす（その回数を計算するテスト）
scoreboard players operation @e[tag=tmw272_temp_card_effect_target] ui_tmw272_health -= $var ui_temp
execute as @e[tag=tmw272_temp_card_effect_target] run tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"selector":"@s"},{"text":"のHPが"},{"score":{"name": "@s","objective": "ui_tmw272_health"}},{"text": "になりました"}]

execute as @e[tag=tmw272_temp_card_effect_target] run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"に"},{"score":{"name": "$var","objective": "ui_temp"}},{"text": "ダメージ！"}]