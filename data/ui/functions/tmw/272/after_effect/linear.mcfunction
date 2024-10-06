# 軽量化のためストレージに書き出す
data modify storage ui:temp card set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0]

# コモンより、使用可能かどうかの判定を行う
function ui:tmw/272/common/check_after_effect/

# 使用可能だった場合
    execute if score $check_after_effect ui_temp matches 1.. if data storage ui:temp card.countdown run function ui:tmw/272/after_effect/countdown/
    execute if score $check_after_effect ui_temp matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects_Active append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0]
    #execute if score $check_after_effect ui_temp matches 1.. run tellraw @a ["",{"text":"> AE ","color":"gray","bold": true},{"storage":"ui:temp","nbt":"card"}]
    execute if score $check_after_effect ui_temp matches 1.. if data storage ui:temp card.repeat run function ui:tmw/272/after_effect/repeat

# キャッシュクリア
data remove storage ui:temp card
execute unless score $check_after_effect ui_temp matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0]
scoreboard players reset $check_after_effect ui_temp

# まだあるなら - 次のエフェクトに移動
scoreboard players remove $count ui_temp 1
execute if score $count ui_temp matches 1.. run function ui:tmw/272/after_effect/linear