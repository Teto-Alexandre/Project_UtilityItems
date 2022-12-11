# メガホンの出る部分

# 弾を出す
execute if score $team ui_temp matches 1 run particle dust 0.5 1 1 0.6 ~ ~ ~ 0.8 0.8 0.8 0 50 force
execute if score $team ui_temp matches 2 run particle dust 1 0.5 1 0.6 ~ ~ ~ 0.8 0.8 0.8 0 50 force
execute if score $team ui_temp matches 3 run particle dust 1 1 0.5 0.6 ~ ~ ~ 0.8 0.8 0.8 0 50 force
execute if score $team ui_temp matches 4 run particle dust 0.5 1 0.5 0.6 ~ ~ ~ 0.8 0.8 0.8 0 50 force