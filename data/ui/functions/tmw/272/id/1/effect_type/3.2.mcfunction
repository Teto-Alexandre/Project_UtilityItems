# ドローするテスト
scoreboard players set $cg1_common_draw_type ui_temp 0
scoreboard players operation $cg1_common_draw_num ui_temp = $var ui_temp
execute if entity @s[type=player] run function ui:tmw/272/common/draw/
