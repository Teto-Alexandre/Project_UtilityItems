# 空中スコープスキル
effect give @s levitation 1 255 true
particle cloud ~ ~ ~ 0.5 0.1 0.5 0.05 5 force
particle end_rod ~ ~ ~ 0.3 0.3 0.3 0.1 5 force
playsound entity.bat.takeoff player @a ~ ~ ~ 1 1.6
scoreboard players set @s ui_ct 300