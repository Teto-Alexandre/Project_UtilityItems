#> ui:common/villager
#
# 村人に干渉するコモン
#
# @input storage ui:common input
#   Mode: String
#       作動モードを入力
#
#   add -
#      Slot1: {}
#          第一対象スロットを入力、一個の場合はこちらを優先
#      Slot2: {}
#          第二対象スロットを入力
#      ResSlot: {}
#          第三対象スロットを入力、主に出力側
#         id: String
#             必要ならアイテムidを入力
#         Count: int
#             必要ならアイテム数を入力
#         tag: {nbt}
#             必要ならアイテムnbtを入力
#
# @public

# スコア化
    data merge storage ui:common {input:{}}

# データコピー
    data modify storage ui:common temp set from entity @s EnderItems

# 分岐
    execute if data storage ui:common input{Mode:"dropall"} run function ui:common/ender/dropall/main
    execute if data storage ui:common input{Mode:"check"} run function ui:common/ender/check/main

# データ削除
    data remove storage ui:common input
    data remove storage ui:common temp