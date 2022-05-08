# ウィザー
    playsound entity.generic.explode player @a ~ ~ ~ 2 0.7 0
    playsound entity.wither.shoot player @a ~ ~ ~ 2 0.6 0
    effect give @e[distance=..8] wither 6 1 true
    particle explosion_emitter ~ ~ ~ 3 3 3 0 5 force
    particle dust 0.5 1 1 1.5 ~ ~ ~ 3 3 3 0 60 force
    particle large_smoke ~ ~ ~ 3 3 3 0.01 25 force
    kill @s