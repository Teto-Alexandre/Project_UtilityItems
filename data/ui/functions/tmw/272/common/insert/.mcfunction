# ストレージ内の架空のデッキを読み取ってカードをドローする
# 空欄のスロットからは何も出ない

## $cg1_common_draw_type ui_temp : ドロータイプ
## $cg1_common_draw_num ui_temp : ドロー数

#
#data modify storage ui:temp temp.list set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match
execute store result score $cg1_list_count ui_temp run data get storage ui:cg1 temp.list
scoreboard players set $cg1_common_draw_single ui_temp 0
execute if score $cg1_list_count ui_temp matches 1 if score $cg1_common_draw_num ui_temp matches 2.. run scoreboard players set $cg1_common_draw_single ui_temp 1
execute if score $var ui_temp matches 1.. run scoreboard players operation $cg1_common_draw_num ui_temp < $var ui_temp

#
execute if score $cg1_common_draw_type ui_temp matches 0 run function ui:tmw/272/common/create/shuffle/

#
execute if data storage ui:temp temp.effect{effect_mode:"swap"} run function ui:tmw/272/common/insert/swap

#
execute store result score $cg1_list_count ui_temp run data get storage ui:cg1 temp.list
execute if score $cg1_list_count ui_temp matches 1.. if score $cg1_common_draw_type ui_temp matches 0 run function ui:tmw/272/common/insert/0

#
execute unless data storage ui:temp temp.effect{effect_mode:"prepend"} run function ui:tmw/272/common/shuffle/

#
data remove storage ui:cg1 temp.list

# IDをクリア
    scoreboard players reset $cg1_list_count ui_temp
    scoreboard players reset $cg1_common_draw_single ui_temp
    scoreboard players reset $cg1_common_draw_type ui_temp
    scoreboard players reset $cg1_common_draw_num ui_temp
