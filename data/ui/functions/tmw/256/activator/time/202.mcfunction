# ハイジャンプ

# 上昇キャンセル
    execute if score $time ui_temp matches 16 run effect clear @s levitation
    execute if score $time ui_temp matches 12 run particle firework ~ ~1 ~ 0.5 0.5 0.5 0.1 10 force
    execute if score $time ui_temp matches 12 run playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 1 1 0