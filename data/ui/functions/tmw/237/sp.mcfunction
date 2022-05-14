# 必要データ収集
execute store result score $sptype ui_temp run data get storage ui:gun temp.SPType

# スペシャルウェポン発動
execute if score $sptype ui_temp matches 101..200 run function ui:tmw/237/sp.here
#execute if score $sptype ui_temp matches 201..300 run function ui:tmw/237/sp.here

# インクを最大値まで回復し耐久バーに反映
scoreboard players operation $ink ui_temp = $ink.max ui_temp
scoreboard players operation $ink.temp ui_temp = $ink ui_temp
scoreboard players operation $ink.temp ui_temp *= #100 ui_num
scoreboard players operation $ink.temp ui_temp /= $ink.max ui_temp
scoreboard players operation $ink.temp ui_temp > #5 ui_num
scoreboard players operation $ink.temp ui_temp < #95 ui_num

# 塗りPをリセット
scoreboard players set @s ui_paint 0
scoreboard players set $changed ui_temp 1