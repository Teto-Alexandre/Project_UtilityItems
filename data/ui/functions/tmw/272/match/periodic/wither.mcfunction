scoreboard players operation #wither ui_temp = @s ui_tmw272_health
scoreboard players operation #wither ui_temp /= #20 ui_num
scoreboard players operation #wither ui_temp += @s ui_tmw272_wither
scoreboard players operation @s ui_tmw272_health -= #wither ui_temp
particle block black_concrete ~ ~2 ~ 0.4 0 0.4 0 30 force
playsound entity.wither.shoot player @a ~ ~ ~ 1 2 0
tellraw @a[tag=ui_temp_players] ["",{"text":"【枯渇】","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"に"},{"score":{"name": "#wither","objective": "ui_temp"}},{"text": "ダメージ！"}]
scoreboard players remove @s ui_tmw272_wither 1
tellraw @a[tag=ui_temp_players] ["",{"text":"【枯渇】","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"枯渇","color":"dark_gray"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_wither"}},{"text": "になった！"}]

scoreboard players reset #wither ui_temp