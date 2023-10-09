# ストレージ内の架空のデッキを読み取ってカードをドローする
# 空欄のスロットからは何も出ない
tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":"CREATE の解決を行います"}]

## $cg1_common_draw_type ui_temp : ドロータイプ
## $cg1_common_draw_num ui_temp : ドロー数

#
#data modify storage ui:temp temp.list set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match
execute store result score $cg1_list_count ui_temp run data get storage ui:cg1 temp.list

#
execute if score $cg1_common_draw_type ui_temp matches 0 run function ui:tmw/272/common/create/shuffle/

#
execute store result score $cg1_list_count ui_temp run data get storage ui:cg1 temp.list
execute if score $cg1_common_draw_type ui_temp matches 0 run function ui:tmw/272/common/create/0

#
data remove storage ui:cg1 temp.list

# IDをクリア
    scoreboard players reset $cg1_list_count ui_temp
    scoreboard players reset $cg1_common_draw_type ui_temp
    scoreboard players reset $cg1_common_draw_num ui_temp