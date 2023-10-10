function ui:tmw/272/common/draw/once
particle sweep_attack ~ ~0.5 ~ 0.5 0.1 0.5 0 30 force
playsound entity.bat.takeoff player @a ~ ~ ~ 0.8 0.5 0
tellraw @a[tag=ui_temp_players] ["",{"text":"【加速】","color":"#00ffaa"},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"が追加でドロー1"}]
scoreboard players remove @s ui_tmw272_speed 1
tellraw @a[tag=ui_temp_players] ["",{"text":"【加速】","color":"#00ffaa"},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"加速","color":"#00ffaa"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_speed"}},{"text": "になった！"}]