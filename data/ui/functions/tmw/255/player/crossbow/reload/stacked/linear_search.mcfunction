# インベントリの手前から順番に該当する弾を探す

# 該当するなら $num を切断して $slot に保存
    execute if data storage ui:temp temp[0].tag{tmw:{id:255,type:2}} run function ui:tmw/255/player/crossbow/reload/stacked/linear_search2

# インベントリが空になったら繰り返し中断
    execute unless score $num ui_temp matches -1 run data remove storage ui:temp temp[0]
    scoreboard players remove $num ui_temp 1
    execute if score $num ui_temp matches 1.. run function ui:tmw/255/player/crossbow/reload/stacked/linear_search