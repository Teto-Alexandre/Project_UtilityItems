# スペシャルウェポン時間経過

# ノヴァ
    execute if score $sptype ui_temp matches 101 if score $sptime ui_temp matches 5 run execute if score $color ui_temp matches 1 run fill ~-6 ~-6 ~-6 ~6 ~6 ~6 light_blue_wool replace #ui:wools
    execute if score $sptype ui_temp matches 101 if score $sptime ui_temp matches 5 run execute if score $color ui_temp matches 2 run fill ~-6 ~-6 ~-6 ~6 ~6 ~6 pink_wool replace #ui:wools
    execute if score $sptype ui_temp matches 101 if score $sptime ui_temp matches 10 run execute if score $color ui_temp matches 1 run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 light_blue_wool replace #ui:wools
    execute if score $sptype ui_temp matches 101 if score $sptime ui_temp matches 10 run execute if score $color ui_temp matches 2 run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 pink_wool replace #ui:wools
    execute if score $sptype ui_temp matches 101 if score $sptime ui_temp matches 15 run execute if score $color ui_temp matches 1 run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 light_blue_wool replace #ui:wools
    execute if score $sptype ui_temp matches 101 if score $sptime ui_temp matches 15 run execute if score $color ui_temp matches 2 run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 pink_wool replace #ui:wools
    execute if score $sptype ui_temp matches 101 if score $sptime ui_temp matches 20 run execute if score $color ui_temp matches 1 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 light_blue_wool replace #ui:wools
    execute if score $sptype ui_temp matches 101 if score $sptime ui_temp matches 20 run execute if score $color ui_temp matches 2 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 pink_wool replace #ui:wools

# スーパースター

# サブラッシュ

# ヴァリアブル

# レーダー

# 時間減少
    scoreboard players set @s ui_paint 0
    scoreboard players remove $sptime ui_temp 1
    scoreboard players set $changed ui_temp 1