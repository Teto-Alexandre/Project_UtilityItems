scoreboard players remove @s ui_tmw272_flying 1
tellraw @a[tag=ui_temp_players] ["",{"text":"【飛行】","color":"#0099ff"},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"飛行","color":"#0099ff"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_flying"}},{"text": "になった！"}]