# 活性化
    playsound entity.wither.shoot player @a ~ ~ ~ 0.5 2 0
    effect give @e[distance=..8] blindness 5
    particle explosion ~ ~ ~ 3 3 3 0 50 force
    execute if entity @s[scores={ui_uses=..190}] run particle dust 1 1 1 10 ~ ~ ~ 2 2 2 0 10 force
    execute if entity @s[scores={ui_uses=..140}] run particle block_marker white_concrete ~ ~ ~ 2 2 2 0 3 force
    kill @s[scores={ui_uses=240..}]