# 軽量化のためストレージに書き出す
data modify storage ui:temp card set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[0]

# コモンより、使用可能かどうかの判定を行う
function ui:tmw/272/common/check_reactive_effect/

# キャッシュクリア
data remove storage ui:temp card
execute unless score $check_reactive_effect ui_temp matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[0]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[0]
scoreboard players reset $check_reactive_effect ui_temp

# まだあるなら - 次のエフェクトに移動
scoreboard players remove $count ui_temp 1
execute if score $count ui_temp matches 1.. run function ui:tmw/272/reactive_effect/time_limit/linear