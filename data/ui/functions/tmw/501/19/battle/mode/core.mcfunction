# モード別

#
execute if score @s ui_tmw501_19_mct matches 1.. run function ui:tmw/501/19/battle/mode/change
execute unless score @s ui_tmw501_19_mct matches 1.. if score @s ui_tmw501_19_now_mode matches 1 run function ui:tmw/501/19/battle/mode/combat
execute unless score @s ui_tmw501_19_mct matches 1.. if score @s ui_tmw501_19_now_mode matches 2 run function ui:tmw/501/19/battle/mode/scan
