scoreboard players set $check_after_effect ui_temp 0

# データの書き出し
##ディレイ計算の種類( 0:tick, 1:ターン開始からの時間 2:ターン終了までの時間 )
execute store result score $delay_type ui_temp run data get storage ui:temp card.delay_type
##ディレイ( タイプが0ならtick数 )
execute store result score $delay ui_temp run data get storage ui:temp card.delay

# ディレイタイプ別に参照
execute if score $delay_type ui_temp matches 0 run function ui:tmw/272/common/check_after_effect/delay_type/0
execute if score $delay_type ui_temp matches 1 run function ui:tmw/272/common/check_after_effect/delay_type/1
execute if score $delay_type ui_temp matches 2 run function ui:tmw/272/common/check_after_effect/delay_type/2

# 使用済みタグをつける
execute if score $delay_type ui_temp matches 1..2 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects{ae_turn:1} run scoreboard players set $check_after_effect ui_temp 0
execute if score $delay_type ui_temp matches 1..2 if score $check_after_effect ui_temp matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects.ae_turn set value 1

# キャッシュクリア
scoreboard players reset $delay_type ui_temp
scoreboard players reset $delay ui_temp