# 敵インクを踏んだ時

# スーパースター発動中を検知
    scoreboard players set $temp ui_temp 0
    execute if score $sptype ui_temp matches 252 if score $sptime ui_temp matches 1.. run scoreboard players set $temp ui_temp 1

# スーパースターの時足元を塗りつぶす
    execute if score $team ui_temp matches 1 if score $temp ui_temp matches 1 run fill ~ ~-0.3 ~ ~ ~-0.3 ~ light_blue_wool replace #ui:wools
    execute if score $team ui_temp matches 2 if score $temp ui_temp matches 1 run fill ~ ~-0.3 ~ ~ ~-0.3 ~ pink_wool replace #ui:wools
    execute if score $team ui_temp matches 3 if score $temp ui_temp matches 1 run fill ~ ~-0.3 ~ ~ ~-0.3 ~ yellow_wool replace #ui:wools
    execute if score $team ui_temp matches 4 if score $temp ui_temp matches 1 run fill ~ ~-0.3 ~ ~ ~-0.3 ~ lime_wool replace #ui:wools

# それ以外ならダメージを受ける
    execute if score $temp ui_temp matches 0 run function ui:tmw/237/constant/floor