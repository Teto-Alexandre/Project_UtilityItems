#> ui:common/formation/
#
# 特定の配置の通りにマーカーを整列生成するコモン
# ui_isで生成順を示す
# また、次の生成によって自動的に消滅する
#
# @input storage ui:common input
#   Mode: String
#       作動モードを入力
#   Num: int
#       生成数を指定
#   RotX: int
#       旋回角
#   RotY: int
#       仰俯角
#   Offset: int
#       オフセット
#
# orbit - 任意の角度を持った公転軌道上に等間隔にマーカーを配置する
#
# @public

# スコア化
    #execute store result score $num ui_temp run data get storage ui:common input.Num

# 分岐
    execute if data storage ui:common input{Mode:"orbit"} run function ui:common/formation/orbit/main

# データ削除
    data remove storage ui:common input
    data remove storage ui:common temp