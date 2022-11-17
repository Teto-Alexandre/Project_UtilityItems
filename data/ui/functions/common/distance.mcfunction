#> ui:common/distance
#
# エンチェスに干渉するコモン
#
# @input storage ui:common input
#   Mode: String
#       作動モードを入力
#   Var : int
#       数値がいるときに使う
#
# sqrt - 平方根
# dist - 実行地点と発動者の距離を算出する
#
# @output $Return ui_temp - ここに結果を出力
#
# @public

# 初期化
    scoreboard players set $Return ui_temp 0

# 分岐
    execute if data storage ui:common input{Mode:"sqrt"} run function ui:common/distance/sqrt/main
    execute if data storage ui:common input{Mode:"dist"} run function ui:common/distance/dist/main
    execute if data storage ui:common input{Mode:"dist_point"} run function ui:common/distance/dist_point/main

# 入力
    scoreboard players operation $Return ui_temp = $result ui_temp

# データ削除
    data remove storage ui:common input
    data remove storage ui:common temp