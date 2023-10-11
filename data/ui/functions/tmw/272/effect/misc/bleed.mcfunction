scoreboard players operation @s ui_tmw272_health -= @s ui_tmw272_bleed
tellraw @a[tag=ui_temp_players] ["",{"text":"【出血】","color":"dark_red"},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"に"},{"score":{"name": "@s","objective": "ui_tmw272_bleed"}},{"text": "ダメージ！"}]
scoreboard players operation @s ui_tmw272_bleed *= #2 ui_num
scoreboard players operation @s ui_tmw272_bleed /= #3 ui_num
tellraw @a[tag=ui_temp_players] ["",{"text":"【出血】","color":"dark_red"},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"出血","color":"dark_red"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_bleed"}},{"text": "になった！"}]

particle block redstone_block ~ ~2 ~ 0.4 0 0.4 0 30 force
playsound entity.player.hurt player @a ~ ~ ~ 1 0.8 0