scoreboard players operation @s ui_tmw272_bleed *= #2 ui_num
scoreboard players operation @s ui_tmw272_bleed /= #3 ui_num
tellraw @a[tag=ui_temp_players] ["",{"text":"【出血】","color":"dark_red"},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"出血","color":"dark_red"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_bleed"}},{"text": "になった！"}]