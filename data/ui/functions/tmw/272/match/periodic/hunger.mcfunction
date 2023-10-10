scoreboard players operation @s ui_tmw272_health -= @s ui_tmw272_hunger
particle block sand ~ ~2 ~ 0.4 0 0.4 0 30 force
playsound block.sand.break player @a ~ ~ ~ 1 0.8 0
tellraw @a[tag=ui_temp_players] ["",{"text":"【空腹】","color":"#aa6600"},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"に"},{"score":{"name": "@s","objective": "ui_tmw272_hunger"}},{"text": "ダメージ！"}]