scoreboard objectives add ui_tmw272_health dummy
scoreboard objectives add ui_tmw272_mana_max dummy
scoreboard objectives add ui_tmw272_mana dummy
scoreboard objectives add ui_tmw272_match_time dummy

scoreboard players set @s ui_tmw272_health 20
scoreboard players set @s ui_tmw272_mana_max 0
scoreboard players set @s ui_tmw272_mana 0
scoreboard players set @s ui_tmw272_match_time 0

# OMDを取り出す
function oh_my_dat:please

# (プレイヤーがデッキを持っているなら) OMD に上書き
execute if entity @s[nbt={SelectedItem:{tag:{tmw:{id:272,type:-1}}}}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list set from entity @s SelectedItem.tag.tmw.cg.list

# OMD の一次デッキに現在のデッキをコピー
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match[0].Count set value 1
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match[1].Count set value 1
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match[2].Count set value 1
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match[3].Count set value 1
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match[4].Count set value 1
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match[5].Count set value 1
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match[6].Count set value 1
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match[7].Count set value 1
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match[8].Count set value 1