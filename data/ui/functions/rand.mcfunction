scoreboard players operation #type1 ui_rand *= #31743 ui_num
execute store result score #type2 ui_rand run scoreboard players operation #type1 ui_rand += #type2 ui_rand
scoreboard players operation #type2 ui_rand /= #65536 ui_num
execute store result score $rand ui_calc1 run scoreboard players operation #type1 ui_rand %= #65536 ui_num
scoreboard players operation $rand ui_calc1 %= $mod ui_calc1