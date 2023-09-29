scoreboard players set @s ui_tmw272_health 20
scoreboard players set @s ui_tmw272_mana_max 0
scoreboard players set @s ui_tmw272_mana 0
scoreboard players set @s ui_tmw272_match_time 0

# OMDを取り出す
function oh_my_dat:please

# (プレイヤーがデッキを持っているなら) OMD に上書き
execute if entity @s[type=player] if entity @s[nbt={SelectedItem:{tag:{tmw:{id:272,type:-1}}}}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list set from entity @s SelectedItem.tag.tmw.cg.list
execute if entity @s[type=!player] run function ui:tmw/272/id/-1/non_player/

# OMD の一次デッキに現在のデッキをコピー
function ui:tmw/272/common/list_match/copy
function ui:tmw/272/common/shuffle/

# インベントリのコピーをとって全消し
execute if entity @s[type=player] run function ui:template/inventory/push
clear @s
    ##デバッグツールは再取得しておく
    execute if score @s ui_tmw601_accessory matches 5007 run loot replace entity @s inventory.0 loot ui:single_item/tmw/601/5007