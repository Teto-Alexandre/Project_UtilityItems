tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":"MATCH_"},{"score":{"name": "@s","objective": "ui_is"}},{"text":"_5SEC が読み込まれました"}]

execute as @e[tag=ui_temp_players] run scoreboard players add @s ui_tmw272_mana_max 1
execute as @e[tag=ui_temp_players] run scoreboard players operation @s ui_tmw272_mana = @s ui_tmw272_mana_max
execute as @e[tag=ui_temp_players] run tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":"> ","color":"green"},{"text":"最大コスト+1 = "},{"score":{"name": "@s","objective": "ui_tmw272_mana_max"}},{"text":", コストを最大まで回復しました"}]