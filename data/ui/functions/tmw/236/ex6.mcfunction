# 反重力
    playsound entity.generic.explode player @a ~ ~ ~ 2 0.7 0
    playsound entity.bat.takeoff player @a ~ ~ ~ 2 0.6 0
    effect give @e[distance=..6] levitation 1 127 true
    tag @e[distance=..6] add ui_temp_lev_jump
    schedule function ui:misc/act/lev.jump 1t
    particle cloud ~ ~ ~ 2 2 2 0.02 20 force
    particle explosion ~ ~ ~ 0 0 0 0 1 force
    particle dust 0.5 1 1 1.5 ~ ~ ~ 2.5 2.5 2.5 0 50 force
    kill @s