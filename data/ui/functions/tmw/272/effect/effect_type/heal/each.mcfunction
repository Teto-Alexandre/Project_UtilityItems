# 空腹の解除方法は回復
execute if score @s ui_tmw272_hunger matches 1.. run function ui:tmw/272/effect/effect_type/heal/hunger

# 回復する（回復回数を計算するテスト）
scoreboard players operation @s ui_tmw272_health += $var ui_temp
execute run tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"selector":"@s"},{"text":"のHPが"},{"score":{"name": "@s","objective": "ui_tmw272_health"}},{"text": "になりました"}]

execute run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"が"},{"score":{"name": "$var","objective": "ui_temp"}},{"text": "回復！"}]