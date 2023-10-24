# OMDを呼び出して自分のドロッパーから順番にアイテムを取り出す
# 空欄のスロットからは何も出ない
tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":"DRAW_CARD の解決を行います"}]

## $cg1_common_draw_type ui_temp : ドロータイプ
## $cg1_common_draw_num ui_temp : ドロー数

#
function oh_my_dat:please

#
#data modify storage ui:temp temp.list set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match
execute store result score $cg1_list_count ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match
execute if entity @s[type=player] store result score $cg1_common_draw_inventory ui_temp run data get entity @s Inventory
execute if entity @s[type=!player] store result score $cg1_common_draw_inventory ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand
scoreboard players operation $cg1_common_draw_inventory ui_temp += $cg1_common_draw_num ui_temp
scoreboard players remove $cg1_common_draw_inventory ui_temp 35
scoreboard players operation $cg1_common_draw_inventory ui_temp > #0 ui_num
scoreboard players operation $cg1_common_draw_num ui_temp -= $cg1_common_draw_inventory ui_temp

#
execute if score $cg1_common_draw_inventory ui_temp matches ..35 if score $cg1_common_draw_type ui_temp matches 0 if score $cg1_common_draw_num ui_temp matches 1.. run function ui:tmw/272/common/draw/0

#
#data remove storage ui:temp temp

# IDをクリア
    scoreboard players reset $cg1_list_count ui_temp
    scoreboard players reset $cg1_common_draw_type ui_temp
    scoreboard players reset $cg1_common_draw_num ui_temp
    scoreboard players reset $cg1_common_draw_inventory ui_temp

#
    data remove storage ui:temp temp.draw_card