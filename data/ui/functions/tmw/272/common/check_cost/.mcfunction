scoreboard players set $check_cost ui_temp 0

# データの書き出し
##コスト計算の種類( 0:そのまま, 1:条件付き軽減等 )
execute store result score $cost_type ui_temp run data get storage ui:temp card.cost_type
##コスト( タイプが0ならマナコスト )
execute store result score $cost ui_temp run data get storage ui:temp card.cost

# コストタイプ別に参照
execute

# キャッシュクリア
scoreboard players reset $cost_type ui_temp
scoreboard players reset $cost ui_temp