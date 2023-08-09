#魔法の弾丸

#
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 store result score $firetime ui_temp run time query gametime
    execute store result score $time ui_temp run time query gametime
    scoreboard players operation $firetime.temp ui_temp = $time ui_temp
    scoreboard players operation $firetime.temp ui_temp -= $firetime ui_temp

#
    execute if score $stats ui_temp matches 1 if score $cooltime ui_temp matches 0 run scoreboard players set $firetime ui_temp 0

#
    scoreboard players set $firetime.max ui_temp 100
#
    execute if score @s ui_tmw601_accessory matches 5002 if score $cooltime ui_temp matches 0 if score $firetime.temp ui_temp matches ..100 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute unless score @s ui_tmw601_accessory matches 5002 if score $cooltime ui_temp matches 0 if score $firetime.temp ui_temp matches ..100 run function ui:tmw/255/player/crossbow/fire/template/fire_burst

# 発射時、回数を計測
    execute if score $firetime.temp ui_temp matches ..10 if score $fire ui_temp matches 1 run scoreboard players add $customcount ui_temp 1
    execute if score $fire ui_temp matches 1 if score $customcount ui_temp matches 8.. run scoreboard players set $fire ui_temp 2
    execute if score $fire ui_temp matches 2 if score $customcount ui_temp matches 8.. run scoreboard players set $customcount ui_temp 1
