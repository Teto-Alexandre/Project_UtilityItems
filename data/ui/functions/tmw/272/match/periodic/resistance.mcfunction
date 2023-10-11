scoreboard players operation @s ui_tmw272_shield_next += @s ui_tmw272_resistance
particle block iron_bars ~ ~2 ~ 0.4 0 0.4 0 30 force
playsound item.armor.equip_chain player @a ~ ~ ~ 1 1 0
playsound item.armor.equip_chain player @a ~ ~ ~ 1 0.5 0
tellraw @a[tag=ui_temp_players] ["",{"text":"【耐性】","color":"blue"},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"のシールドが"},{"score":{"name": "@s","objective": "ui_tmw272_shield_next"}},{"text": "になった！"}]
scoreboard players remove @s ui_tmw272_resistance 1
tellraw @a[tag=ui_temp_players] ["",{"text":"【耐性】","color":"blue"},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"耐性","color":"blue"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_resistance"}},{"text": "になった！"}]
