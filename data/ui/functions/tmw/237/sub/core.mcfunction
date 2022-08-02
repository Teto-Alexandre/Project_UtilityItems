# 必要データ収集
execute store result score $subtype ui_temp run data get storage ui:gun temp.SubType

# サブウェポン発動
execute if score $subtype ui_temp matches 101..200 run function ui:tmw/237/sub/throw
execute if score $subtype ui_temp matches 201..300 run function ui:tmw/237/sub/here
execute if score $subtype ui_temp matches 301..400 at @s run function ui:tmw/237/sub/static
execute if score $subtype ui_temp matches 401..500 at @s run function ui:tmw/237/sub/weapon

# スペシャルタイムをセット
scoreboard players operation $subtime ui_temp = $subtime.max ui_temp

# インク減少
scoreboard players operation $ink ui_temp -= $ink.sub ui_temp
scoreboard players set $temp ui_temp 3
execute store result score $cooltime ui_temp run time query gametime
scoreboard players operation $cooltime ui_temp += $temp ui_temp
scoreboard players set $changed ui_temp 1