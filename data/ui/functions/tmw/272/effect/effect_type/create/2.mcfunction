# カードを生み出す
data modify storage ui:cg1 temp.list set from storage ui:temp temp.effect.list
execute if score $not_var ui_temp matches 1 store result score $var ui_temp run data get storage ui:temp temp.effect.list
scoreboard players operation $cg1_common_draw_num ui_temp = $var ui_temp
scoreboard players set $cg1_common_draw_type ui_temp 0
execute at @s run function ui:tmw/272/common/create/