# スプレータイプのテンプレート
execute if entity @s[tag=tmw_active_temp] in overworld store result score $firetime ui_temp run time query gametime
function ui:tmw/255/player/crossbow/fire/template/calc
execute if entity @s[tag=tmw_active_temp] run scoreboard players set $burst ui_temp 1
