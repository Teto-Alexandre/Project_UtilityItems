# 必要データ収集
execute store result score $ct ui_temp run data get storage ui:gun temp.SPCT

# サブウェポン発動
scoreboard players operation $activator ui_temp = $sptype ui_temp
execute if score $activator ui_temp matches 101..200 run function ui:tmw/237/activator/throw
execute if score $activator ui_temp matches 201..300 run function ui:tmw/237/activator/here
execute if score $activator ui_temp matches 301..400 at @s run function ui:tmw/237/activator/static
execute if score $activator ui_temp matches 401..500 at @s run function ui:tmw/237/activator/weapon

# スペシャルタイムをセット
scoreboard players operation $sptime ui_temp = $sptime.max ui_temp

# インク減少
scoreboard players operation $ink ui_temp -= $ink.sp ui_temp
execute in overworld store result score $cooltime ui_temp run time query gametime
scoreboard players operation $cooltime ui_temp += $ct ui_temp

#
scoreboard players set $changed ui_temp 1