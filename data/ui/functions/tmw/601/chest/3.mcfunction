# 消音

# 装着時演出
execute if entity @s[tag=tmw601_changed] run particle dust 1 1 1 0.5 ~ ~1.1 ~ 0.5 0.2 0.5 0 25
execute if entity @s[tag=tmw601_changed] run playsound entity.bat.takeoff player @a ~ ~ ~ 0.5 2

#
stopsound @a[distance=..15] *