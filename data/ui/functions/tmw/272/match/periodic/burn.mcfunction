scoreboard players operation @s ui_tmw272_health -= @s ui_tmw272_burn
particle block lava ~ ~2 ~ 0.4 0 0.4 0 30 force
playsound entity.player.hurt_on_fire player @a ~ ~ ~ 1 0.5 0
tellraw @a[tag=ui_temp_players] ["",{"text":"【燃焼】","color":"#ff6600"},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"に"},{"score":{"name": "@s","objective": "ui_tmw272_burn"}},{"text": "ダメージ！"}]
scoreboard players operation @s ui_tmw272_burn *= #2 ui_num
scoreboard players operation @s ui_tmw272_burn /= #3 ui_num
tellraw @a[tag=ui_temp_players] ["",{"text":"【燃焼】","color":"#ff6600"},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"燃焼","color":"#ff6600"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_burn"}},{"text": "になった！"}]