# 軽量化のためストレージに書き出す
data modify storage ui:temp card set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[0].tag.tmw.cg
data modify storage ui:temp card.name set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[0].tag.display.Name
data modify storage ui:temp card.lore set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[0].tag.display.Lore

#
scoreboard players set $broadcast_type ui_temp 1

# テキストボードを開く
#function ui:template/text_board/open

# デバッグメッセージ
#tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"storage":"ui:temp","nbt":"card.name","interpret":true},{"text":"の実行を試みます"}]

# コモンより、使用可能かどうかの判定を行う
function ui:tmw/272/common/check_cost/

# 足りなかった場合
    execute if score $check_cost ui_temp matches ..0 unless data storage ui:temp card.not_consume run function ui:tmw/272/effect/fail

# 使用可能だった場合
    execute if score $check_cost ui_temp matches 1.. run function ui:tmw/272/effect/success

# テキストボードを閉じる
#function ui:template/text_board/close

# 他のプレイヤーの OMD かもしれないので呼び戻す
function oh_my_dat:please

# キャッシュクリア
scoreboard players reset $broadcast_type ui_temp
scoreboard players reset $check_cost ui_temp
data remove storage ui:temp card
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[0]

execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[0] at @s run function ui:tmw/272/effect/

# クールタイムテスト
#scoreboard players add @s ui_ct 5
