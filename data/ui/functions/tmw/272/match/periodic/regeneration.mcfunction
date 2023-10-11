scoreboard players operation @s ui_tmw272_health += @s ui_tmw272_regeneration
tellraw @a[tag=ui_temp_players] ["",{"text":"【再生】","color":"#ffcc66"},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"は"},{"score":{"name": "@s","objective": "ui_tmw272_regeneration"}},{"text": "回復！"}]
scoreboard players remove @s ui_tmw272_regeneration 1
tellraw @a[tag=ui_temp_players] ["",{"text":"【再生】","color":"#ffcc66"},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"再生","color":"#ffcc66"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_regeneration"}},{"text": "になった！"}]