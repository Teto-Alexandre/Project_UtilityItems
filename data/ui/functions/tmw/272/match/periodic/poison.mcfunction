scoreboard players operation #poison ui_temp = @s ui_tmw272_health
scoreboard players operation #poison ui_temp /= #20 ui_num
scoreboard players operation @s ui_tmw272_health -= #poison ui_temp
particle block green_concrete ~ ~2 ~ 0.4 0 0.4 0 30 force
playsound block.brewing_stand.brew player @a ~ ~ ~ 1 0.5 0
tellraw @a[tag=ui_temp_players] ["",{"text":"【毒】","color":"#00aa00"},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"に"},{"score":{"name": "#poison","objective": "ui_temp"}},{"text": "ダメージ！"}]
scoreboard players remove @s ui_tmw272_poison 1
tellraw @a[tag=ui_temp_players] ["",{"text":"【毒】","color":"#00aa00"},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"毒","color":"#00aa00"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_poison"}},{"text": "になった！"}]

scoreboard players reset #poison ui_temp