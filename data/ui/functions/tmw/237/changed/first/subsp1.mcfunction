# サブスペ1 - データ整列

# 初期値
scoreboard players set $w.ink ui_temp 10000
scoreboard players set $w.time ui_temp 0
scoreboard players set $w.ct ui_temp 3
scoreboard players set $w.need ui_temp 300
data modify storage ui:temp temp.Name set value " - NULL:"

#
function ui:tmw/237/changed/first/subsp1.data

# 書き込み
item modify entity @s weapon.mainhand ui:gun/value/lore