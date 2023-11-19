# 軽量化のためストレージに書き出す
data modify storage ui:temp card set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.DeathEffects[0]
execute if data storage ui:temp card.repeat run function ui:tmw/272/death_effect/repeat

#
scoreboard players set $broadcast_type ui_temp 2

# デバッグメッセージ
#tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> AE ","color":"gray","bold": true},{"storage":"ui:temp","nbt":"card.name","interpret":true},{"text":"の実行を試みます"}]

# コモンより、使用可能かどうかの判定を行う
function ui:tmw/272/common/check_cost/

# 足りなかった場合
    execute if score $check_cost ui_temp matches ..0 run function ui:tmw/272/death_effect/fail

# 使用可能だった場合
    execute if score $check_cost ui_temp matches 1.. run function ui:tmw/272/effect/success

# 他のプレイヤーの OMD かもしれないので呼び戻す
function oh_my_dat:please

# キャッシュクリア
scoreboard players reset $broadcast_type ui_temp
scoreboard players reset $check_cost ui_temp
data remove storage ui:temp card
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.DeathEffects[0]

# まだあるなら - 次のエフェクトに移動
scoreboard players remove $count_death_effects ui_temp 1
execute if score @s ui_tmw272_health <= @s ui_tmw272_lethal_range if score $count_death_effects ui_temp matches 1.. run function ui:tmw/272/death_effect/act