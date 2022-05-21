# スペシャルウェポン時間経過

# ノヴァ
    execute if score $sptype ui_temp matches 101 if score $sptime ui_temp matches 1 run execute if score $color ui_temp matches 1 run fill ~-9 ~-9 ~-9 ~9 ~9 ~9 light_blue_wool replace #ui:wools
    execute if score $sptype ui_temp matches 101 if score $sptime ui_temp matches 1 run execute if score $color ui_temp matches 2 run fill ~-9 ~-9 ~-9 ~9 ~9 ~9 pink_wool replace #ui:wools
    execute if score $sptype ui_temp matches 101 if score $sptime ui_temp matches 6 run execute if score $color ui_temp matches 1 run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 light_blue_wool replace #ui:wools
    execute if score $sptype ui_temp matches 101 if score $sptime ui_temp matches 6 run execute if score $color ui_temp matches 2 run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 pink_wool replace #ui:wools
    execute if score $sptype ui_temp matches 101 if score $sptime ui_temp matches 11 run execute if score $color ui_temp matches 1 run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 light_blue_wool replace #ui:wools
    execute if score $sptype ui_temp matches 101 if score $sptime ui_temp matches 11 run execute if score $color ui_temp matches 2 run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 pink_wool replace #ui:wools
    execute if score $sptype ui_temp matches 101 if score $sptime ui_temp matches 16 run execute if score $color ui_temp matches 1 run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 light_blue_wool replace #ui:wools
    execute if score $sptype ui_temp matches 101 if score $sptime ui_temp matches 16 run execute if score $color ui_temp matches 2 run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 pink_wool replace #ui:wools
    execute if score $sptype ui_temp matches 101 if score $sptime ui_temp matches 21 run execute if score $color ui_temp matches 1 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 light_blue_wool replace #ui:wools
    execute if score $sptype ui_temp matches 101 if score $sptime ui_temp matches 21 run execute if score $color ui_temp matches 2 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 pink_wool replace #ui:wools

# スーパースター

# サブラッシュ

# ヴァリアブル

# レーダー

# 時間減少
    scoreboard players set @s ui_paint 0
    scoreboard players remove $sptime ui_temp 1
    scoreboard players set $changed ui_temp 1