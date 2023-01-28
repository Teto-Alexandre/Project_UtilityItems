#> ui:common/villager/
#
# 村人に干渉するコモン
#
# @input storage ui:common input
#   Mode: String
#       作動モードを入力
#
#   add_offer -
#      Offer: {}
#          オファー内容を指定
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

# データコピー
    #data modify storage ui:common temp set from entity @s EnderItems

# 分岐
    execute if data storage ui:common input{Mode:"add_offer"} run function ui:common/villager/add_offer/main
    execute if data storage ui:common input{Mode:"add"} run function ui:common/villager/add/main
    execute if data storage ui:common input{Mode:"from_chest"} run function ui:common/villager/from_chest/main
    execute if data storage ui:common input{Mode:"to_egg"} run function ui:common/villager/to_egg/main
    execute if data storage ui:common input{Mode:"to_chest"} run function ui:common/villager/to_chest/main
    execute if data storage ui:common input{Mode:"job"} run function ui:common/villager/job/main

# データ削除
    data remove storage ui:common input
    data remove storage ui:common temp