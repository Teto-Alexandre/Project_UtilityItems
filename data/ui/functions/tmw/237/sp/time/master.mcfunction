# スペシャルウェポン時間経過

# 計測タイマー隔離
    scoreboard players operation $time ui_temp = $sptime ui_temp

# ノヴァ
    execute if score $sptype ui_temp matches 251 run function ui:tmw/237/sp/time/251

# チャクチ
    execute if score $sptype ui_temp matches 256 run function ui:tmw/237/sp/time/256

# ミサイル
    execute if score $sptype ui_temp matches 452 run function ui:tmw/237/sp/time/452

# ハイドロポンプ
    execute if score $sptype ui_temp matches 454 run function ui:tmw/237/sp/time/454

# ジェットパック
    execute if score $sptype ui_temp matches 455 run function ui:tmw/237/sp/time/455

# 時間減少
    scoreboard players set @s ui_paint 0
    scoreboard players remove $sptime ui_temp 1
    scoreboard players set $changed ui_temp 1