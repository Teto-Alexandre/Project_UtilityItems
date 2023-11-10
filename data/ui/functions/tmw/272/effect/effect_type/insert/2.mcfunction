# カードを生み出す
#data modify storage ui:cg1 temp.list set from storage ui:temp temp.effect.list
#execute store result score $list_size ui_temp run data get storage ui:temp temp.effect.list
#scoreboard players set $cg1_common_draw_type ui_temp 0
#execute if score $list_size ui_temp matches 1.. at @s run function ui:tmw/272/common/insert/
#scoreboard players reset $list_size ui_temp

data modify storage ui:cg1 temp.list set from storage ui:temp temp.effect.list
scoreboard players set $cg1_common_draw_type ui_temp 0
execute at @s run function ui:tmw/272/common/insert/