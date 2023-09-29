# OMDを呼び出して配列の内容をシャッフルする
tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":"SHUFFLE の解決を行います"}]

#
function oh_my_dat:please

#
data modify storage ui:temp temp.list set value []
execute store result score $cg1_list_count ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match

#
function ui:tmw/272/common/shuffle/1.randget

#
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match set from storage ui:temp temp.list

#
data remove storage ui:temp temp

# IDをクリア
    scoreboard players reset $cg1_list_count ui_temp