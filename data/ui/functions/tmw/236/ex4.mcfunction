# 回復
    playsound entity.chicken.egg player @a ~ ~ ~ 1 0.5 0
    playsound entity.player.levelup player @a ~ ~ ~ 1 1.8 0
    effect give @e[distance=..5] regeneration 1 4 true
    particle happy_villager ~ ~ ~ 2 2 2 0 30 force
    particle dust 0.5 1 1 1.5 ~ ~ ~ 2 2 2 0 30 force
    kill @s