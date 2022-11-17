#> ui:common/item
#
# strage上のItemデータに干渉するコモン
#
# @input storage ui:common input
#
#   Item: Item
#       アイテム
#   Mode: String
#       作動モードを入力
#   Num: int
#       とりあえず数値
#   Text: String
#       アイテムidとか用
#
# give - その場にアイテムをドロップする
# give - その場にアイテムをドロップする
#
#   enableDurability:1
#
# @public

# スコア化
    execute store result score $num ui_temp run data get storage ui:common input.Num

# 分岐
    execute if data storage ui:common input{Mode:"id"} run function ui:common/item/id/main
    execute if data storage ui:common input{Mode:"get"} run function ui:common/item/get/main
    execute if data storage ui:common input{Mode:"give"} run function ui:common/item/give/main
    execute if data storage ui:common input{Mode:"count"} run function ui:common/item/count/main
    execute if data storage ui:common input{Mode:"damage"} run function ui:common/item/damage/main
    execute if data storage ui:common input{Mode:"replace"} run function ui:common/item/replace/main

# 戻り
    data modify storage ui:common_result temp set from storage ui:common input.Item

# データ削除
    data remove storage ui:common input
    data remove storage ui:common temp