# 軽量化のためストレージに書き出す
data modify storage ui:temp card set from entity @s SelectedItem.tag.tmw.cg

# デバッグメッセージ
tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":"内部名"},{"storage":"ui:temp","nbt":"card.name"},{"text":"の実行を試みます"}]

# コモンより、使用可能かどうかの判定を行う
function ui:tmw/272/common/check_cost/

# 足りなかった場合
    execute if score $check_cost ui_temp matches ..0 run function ui:tmw/272/id/1/fail

# 使用可能だった場合
    execute if score $check_cost ui_temp matches 1.. run function ui:tmw/272/id/1/success

# キャッシュクリア
scoreboard players reset $check_cost ui_temp
data remove storage ui:temp card