# 短射程→長射程
    scoreboard players set $shotmode ui_temp 2
    scoreboard players set $shottime ui_temp 0

# 音
    playsound block.piston.contract player @a ~ ~ ~ 1 1.6 0

# パーティクル
    particle crit ~ ~1 ~ 0.2 0.2 0.2 1 10 normal