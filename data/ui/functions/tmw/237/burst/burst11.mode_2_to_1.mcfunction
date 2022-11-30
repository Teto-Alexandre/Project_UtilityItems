# 長射程→短射程
    scoreboard players set $shotmode ui_temp 1
    scoreboard players set $chargetime ui_temp 0

# 音
    playsound block.piston.extend player @a ~ ~ ~ 1 1.6 0

# パーティクル
    particle crit ~ ~1 ~ 0.2 0.2 0.2 1 10 normal