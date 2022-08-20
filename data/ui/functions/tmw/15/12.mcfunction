effect give @s speed 15 1 false
effect give @s jump_boost 15 1 false
particle cloud ~ ~1 ~ 0.2 0.2 0.2 0.05 10 normal
playsound entity.bat.takeoff player @a ~ ~ ~ 0.8 1.2 0

# 発動成功
    scoreboard players set $success ui_temp 1