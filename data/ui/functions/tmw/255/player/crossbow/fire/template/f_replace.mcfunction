# スプレータイプのテンプレート
execute if entity @s[tag=tmw_crossbow_mh_n] store result score $firetime ui_temp run time query gametime
function ui:tmw/255/player/crossbow/fire/template/calc
execute if entity @s[tag=tmw_crossbow_mh_n] run scoreboard players set $burst ui_temp 1
