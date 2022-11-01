#> ui:common/mine_square
#
# マインスイーパーで遊べる
#
# @input storage ui:common input
#   Mode: String
#       作動モードを入力
#
#   generate -
#      Size: int
#          大きさを指定
#      Bomb: int
#          爆弾数を指定
#
#   add -
#      Slot1: {}
#          第一対象スロットを入力、一個の場合はこちらを優先
#      Slot2: {}
#          第二対象スロットを入力
#      ResSlot: {}
#          第三対象スロットを入力、主に出力側
#
#   job -
#      Num: int
#
# @public

# スコア化
    #data merge storage ui:common {input:{Mode:"add_offer",Offer:{buy:{id:"stone",Count:1},buyB:{id:"granite",Count:1},sell:{id:"polished_granite",Count:1},rewardExp:0b,maxUses:999,uses:0}}}

    #{buy:{id:"stone",Count:1},buyB:{id:"granite",Count:1},sell:{id:"diamond",Count:1},rewardExp:0b,maxUses:999,uses:0}

# 分岐
    execute if data storage ui:common input{Mode:"generate"} run function ui:common/mine_square/generate/main

# データ削除
    data remove storage ui:common input
    data remove storage ui:common temp