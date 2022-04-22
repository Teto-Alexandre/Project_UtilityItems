#
experience add @s -1 levels
scoreboard players remove $lv ui_temp 1
execute if score $lv ui_temp matches 1.. run function ui:tmw/521/lv_use
