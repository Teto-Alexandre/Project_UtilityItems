# フラッシュ
    playsound entity.generic.explode player @a ~ ~ ~ 2 0.7 0
    playsound block.anvil.land player @a ~ ~ ~ 2 1.2 0
    effect give @e[distance=..10] blindness 5 0 true
    effect give @e[distance=..10] slowness 5 4 true
    effect give @e[distance=..10] jump_boost 5 129 true
    particle flash ~ ~ ~ 4.5 4.5 4.5 0 8 force
    particle explosion ~ ~ ~ 0 0 0 0 1 force
    particle dust 0.5 1 1 1.5 ~ ~ ~ 2.5 2.5 2.5 0 60 force
    kill @s