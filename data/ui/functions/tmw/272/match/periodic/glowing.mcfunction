scoreboard players remove @s ui_tmw272_glowing 1
tellraw @a[tag=ui_temp_players] ["",{"text":"【発光】","color":"gold"},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"発光","color":"gold"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_glowing"}},{"text": "になった！"}]
