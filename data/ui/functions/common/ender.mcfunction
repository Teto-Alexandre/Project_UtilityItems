#> ui:common/ender
#
# エンチェスに干渉するコモン
#
# @input storage ui:common input
#   Mode: String
#       作動モードを入力
#   Slot1: int
#       第一対象スロットを入力、主に入力側、一個の場合はこちらを優先
#   Slot2: int
#       第二対象スロットを入力、主に出力側
#   ItemID: String
#       必要ならアイテムidを入力
#   ItemCount: int
#       必要ならアイテム数を入力
#   ItemTag: {nbt}
#       必要ならアイテムnbtを入力
#
# dropall - アイテムとしてその場にドロップする
# check - $slot ui_temp に空白のスロットを返す
#
# @public

# スコア化
    #execute store result score $slot1 ui_temp run data get storage ui:common input.Slot1

# データコピー
    data modify storage ui:common temp set from entity @s EnderItems

# 分岐
    execute if data storage ui:common input{Mode:"dropall"} run function ui:common/ender/dropall/main
    execute if data storage ui:common input{Mode:"check"} run function ui:common/ender/check/main

# データ削除
    data remove storage ui:common input
    data remove storage ui:common temp