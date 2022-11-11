# インベントリの手前から順番に該当する弾を探す

# 該当するなら $num を切断して $slot に保存
    execute store result score $temp ui_temp run data get storage ui:temp temp[0].Count
    scoreboard players operation $check ui_temp += $temp ui_temp

# インベントリが空になったら繰り返し中断
    data remove storage ui:temp temp[0]
    scoreboard players remove $num ui_temp 1
    execute if score $num ui_temp matches 1.. run function ui:tmw/255/player/crossbow/reload/linear_count