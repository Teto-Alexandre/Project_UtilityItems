scoreboard players operation @s ui_tmw272_mana -= @s ui_tmw272_darkness
particle block sculk ~ ~2 ~ 0.4 0 0.4 0 30 force
playsound minecraft:block.sculk_shrieker.shriek player @a ~ ~ ~ 1 1 0
tellraw @a[tag=ui_temp_players] ["",{"text":"【暗闇】","color":"#0066cc"},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"のマナが"},{"score":{"name": "@s","objective": "ui_tmw272_mana"}},{"text": "になった！"}]
scoreboard players set @s ui_tmw272_darkness 0
tellraw @a[tag=ui_temp_players] ["",{"text":"【暗闇】","color":"#0066cc"},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"暗闇","color":"#0066cc"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_darkness"}},{"text": "になった！"}]
