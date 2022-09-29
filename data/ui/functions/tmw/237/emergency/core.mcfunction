
execute unless entity @s[x_rotation=90] run tellraw @s ["",{"text":"system","color":"white"},{"text":"> ","color":"green"},{"text":"非常スイッチの使い方:インクMAXで下を向いてSneak+Q","color":"gray"}]
execute unless entity @s[x_rotation=90] run tellraw @s ["",{"text":"system","color":"white"},{"text":"> ","color":"green"},{"text":"ホットバー1 : その場で自爆","color":"gray"}]
execute unless entity @s[x_rotation=90] run tellraw @s ["",{"text":"system","color":"white"},{"text":"> ","color":"green"},{"text":"ホットバー2 : タイトル表示のon/off切り替え","color":"gray"}]
execute unless entity @s[x_rotation=90] run tellraw @s ["",{"text":"system","color":"white"},{"text":"> ","color":"green"},{"text":"ホットバー3 : レーザーポインターのon/off切り替え","color":"gray"}]
execute if entity @s[x_rotation=90] if score $ink ui_temp = $ink.max ui_temp run function ui:tmw/237/emergency/path