#> ui:common/mob
#
# モブに干渉するコモン
#
# @input storage ui:common input
#   Mode: String
#       作動モードを入力
#
#   set_target -
#       ui_common_mob_target のタグが付いたエンティティを実行者がターゲッティングする
#
#   set_target_mult -
#       ui_common_mob_crowd のタグが付いた全てのエンティティが実行者がターゲッティングする
#
#   set_move_mult -
#       ui_common_mob_crowd のタグが付いたエンティティがそれぞれ独立して実行地点に移動する
#
# @public

# 分岐
    execute if data storage ui:common input{Mode:"set_target"} run function ui:common/mob/set_target/main
    execute if data storage ui:common input{Mode:"set_target_mult"} run function ui:common/mob/set_target_mult/main
    execute if data storage ui:common input{Mode:"set_move_mult"} run function ui:common/mob/set_move_mult/main
    execute if data storage ui:common input{Mode:"summon"} run function ui:common/mob/summon/main

# データ削除
    data remove storage ui:common input
    data remove storage ui:common temp