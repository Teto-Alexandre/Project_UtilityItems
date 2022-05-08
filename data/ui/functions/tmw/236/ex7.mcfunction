# 活性化
    playsound entity.chicken.egg player @a ~ ~ ~ 1 0.5 0
    playsound entity.ghast.scream player @a ~ ~ ~ 1 1.6 0
    effect give @e[distance=..5] strength 10 0 true
    effect give @e[distance=..5] speed 10 4 true
    effect give @e[distance=..5] jump_boost 10 3 true
    effect give @e[distance=..5] haste 10 0 true
    effect give @e[distance=..5] glowing 10 0 false
    particle angry_villager ~ ~ ~ 2 2 2 0 30 force
    particle dust 0.5 1 1 1.5 ~ ~ ~ 2 2 2 0 30 force
    kill @s