# デバッグメッセ
#execute if score $time_limit_turn ui_temp <= @s ui_tmw272_mana run tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":"タイプ0解決: "},{"text":"SUCCESS","color": "green"},{"text":" : "},{"score":{"name": "$time_limit_turn","objective": "ui_temp"}},{"text":"<="},{"score":{"name": "@s","objective": "ui_tmw272_mana"}}]
#execute unless score $time_limit_turn ui_temp <= @s ui_tmw272_mana run tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":"タイプ0解決: "},{"text":"FAILURE","color": "red"},{"text":" : "},{"score":{"name": "$time_limit_turn","objective": "ui_temp"}},{"text":"!<="},{"score":{"name": "@s","objective": "ui_tmw272_mana"}}]

execute if score $time_limit_turn ui_temp matches ..1 run scoreboard players set $check_after_effect ui_temp 1

execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0].time_limit_turn int 1 run scoreboard players remove $time_limit_turn ui_temp 1