## temp の絶対値を取る
## 絶対値作成用テンプレート

execute if score $temp ui_temp matches ..-1 run scoreboard players operation $abs ui_temp = $temp ui_temp
execute if score $temp ui_temp matches ..-1 run scoreboard players operation $abs ui_temp *= #2 ui_num
execute if score $temp ui_temp matches ..-1 run scoreboard players operation $temp ui_temp -= $abs ui_temp