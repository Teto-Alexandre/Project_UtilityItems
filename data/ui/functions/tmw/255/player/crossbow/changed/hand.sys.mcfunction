# 複数所持or武器競合ペナルティ 認証通過
execute store result score $time ui_temp in overworld run time query gametime
execute if score $lasttime ui_temp < $time ui_temp run function ui:tmw/255/player/crossbow/changed/hand
scoreboard players add $lasttime ui_temp 1
scoreboard players set $changed ui_temp 1