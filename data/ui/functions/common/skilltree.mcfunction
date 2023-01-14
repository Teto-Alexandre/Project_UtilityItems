#> ui:common/skilltree
#
# スキルツリーを構築する
#
# @input storage ui:common input
#   Mode: String
#       作動モードを入力
#
#   get -
#
# @public

# スコア化
    #data merge storage ui:common {input:{Mode:"add_offer",Offer:{buy:{id:"stone",Count:1},buyB:{id:"granite",Count:1},sell:{id:"polished_granite",Count:1},rewardExp:0b,maxUses:999,uses:0}}}

    #{buy:{id:"stone",Count:1},buyB:{id:"granite",Count:1},sell:{id:"diamond",Count:1},rewardExp:0b,maxUses:999,uses:0}

# 分岐
    execute if data storage ui:skill temp{Mode:"get"} run function ui:common/skilltree/get/main

# データ削除
    data remove storage ui:common input
    data remove storage ui:common temp