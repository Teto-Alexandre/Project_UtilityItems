scoreboard players set $check_cost ui_temp 0

execute if score $cost ui_temp matches ..-1 run tellraw @s ["",{"text":"デバッグ用: マナコストが0を下回っています 0になりました","color":"red"}]
scoreboard players operation $cost ui_temp > #0 ui_num

execute if score $cost ui_temp <= @s ui_tmw272_mana run tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":"タイプ2解決: "},{"text":"SUCCESS","color": "green"},{"text":" : "},{"score":{"name": "$cost","objective": "ui_temp"}},{"text":"<="},{"score":{"name": "@s","objective": "ui_tmw272_mana"}}]
execute unless score $cost ui_temp <= @s ui_tmw272_mana run tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":"タイプ2解決: "},{"text":"FAILURE","color": "red"},{"text":" : "},{"score":{"name": "$cost","objective": "ui_temp"}},{"text":"!<="},{"score":{"name": "@s","objective": "ui_tmw272_mana"}}]

execute if score $cost ui_temp <= @s ui_tmw272_mana run scoreboard players set $check_cost ui_temp 1
execute if score $check_cost ui_temp matches 1 run scoreboard players operation @s ui_tmw272_mana -= $cost ui_temp

execute if score $check_cost ui_temp matches 0 run scoreboard players operation $cost ui_temp -= @s ui_tmw272_mana
execute if score $check_cost ui_temp matches 0 run tellraw @s ["",{"text":"> ","color":"gray","bold": true},{"text":"このカードの発動には "},{"score":{"name": "$cost","objective": "ui_temp"},"color": "gray"},{"text":" マナ足りません"}]