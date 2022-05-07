scoreboard players operation $temp ui_temp = $mod ui_temp
scoreboard players operation $temp ui_temp /= #2 ui_num

scoreboard players operation #type1 ui_rand *= #31743 ui_num
execute store result score #type2 ui_rand run scoreboard players operation #type1 ui_rand += #type2 ui_rand
scoreboard players operation #type2 ui_rand /= #65536 ui_num
execute store result score $rand ui_temp run scoreboard players operation #type1 ui_rand %= #65536 ui_num
scoreboard players operation $rand ui_temp %= $mod ui_temp
scoreboard players operation $x1 ui_temp += $rand ui_temp
scoreboard players operation $x1 ui_temp -= $temp ui_temp

scoreboard players operation #type1 ui_rand *= #31743 ui_num
execute store result score #type2 ui_rand run scoreboard players operation #type1 ui_rand += #type2 ui_rand
scoreboard players operation #type2 ui_rand /= #65536 ui_num
execute store result score $rand ui_temp run scoreboard players operation #type1 ui_rand %= #65536 ui_num
scoreboard players operation $rand ui_temp %= $mod ui_temp
scoreboard players operation $y1 ui_temp += $rand ui_temp
scoreboard players operation $y1 ui_temp -= $temp ui_temp

scoreboard players operation #type1 ui_rand *= #31743 ui_num
execute store result score #type2 ui_rand run scoreboard players operation #type1 ui_rand += #type2 ui_rand
scoreboard players operation #type2 ui_rand /= #65536 ui_num
execute store result score $rand ui_temp run scoreboard players operation #type1 ui_rand %= #65536 ui_num
scoreboard players operation $rand ui_temp %= $mod ui_temp
scoreboard players operation $z1 ui_temp += $rand ui_temp
scoreboard players operation $z1 ui_temp -= $temp ui_temp
