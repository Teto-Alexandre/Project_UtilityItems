# 発見した名前を次のリストに入れる

# リスト初期化
execute if data storage ui:temp temp.effect.list2.reset run data remove storage ui:temp card.list2

# 何もないならリスト作成
execute unless data storage ui:temp card.list2 run data modify storage ui:temp card.list2 set value []
