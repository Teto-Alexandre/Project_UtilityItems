# スペシャルウェポン発動
execute if score $sptype ui_temp matches 101..200 run function ui:tmw/237/sp.here
#execute if score $sptype ui_temp matches 201..300 run function ui:tmw/237/sp.here

# インクを最大値まで回復し耐久バーに反映
scoreboard players operation $ink ui_temp = $ink.max ui_temp

# 塗りPをリセット
scoreboard players set @s ui_paint 0
scoreboard players set $changed ui_temp 1