#> ui:common/block_gravity/
#
# 砂のような重力・改を発生させるコモン
#
# @public

# スコア化
    #execute store result score $slot1 ui_temp run data get storage ui:common input.Slot1

# データコピー
    #data modify storage ui:common temp set from block ~ ~ ~ Items

# 分岐
    execute if data storage ui:common input{Mode:"here"} unless block ~ ~ ~ #ui:nocol unless entity @e[tag=ui_common_block_gravity,distance=..0.5] run function ui:common/block_gravity/here/main

# データ削除
    data remove storage ui:common input
    data remove storage ui:common temp