scoreboard players operation #temp ui_calc1 = $c.proj.spread ui_temp
scoreboard players operation #temp ui_calc1 /= #2 ui_num

scoreboard players set $x1 ui_calc1 0
scoreboard players set $y1 ui_calc1 0
scoreboard players set $z1 ui_calc1 0

scoreboard players operation #type1 ui_rand *= #31743 ui_num
execute store result score #type2 ui_rand run scoreboard players operation #type1 ui_rand += #type2 ui_rand
scoreboard players operation #type2 ui_rand /= #65536 ui_num
execute store result score $rand ui_calc1 run scoreboard players operation #type1 ui_rand %= #65536 ui_num
scoreboard players operation $rand ui_calc1 %= $c.proj.spread ui_temp
scoreboard players operation $x1 ui_calc1 += $rand ui_calc1
scoreboard players operation $x1 ui_calc1 -= #temp ui_calc1

scoreboard players operation #type1 ui_rand *= #31743 ui_num
execute store result score #type2 ui_rand run scoreboard players operation #type1 ui_rand += #type2 ui_rand
scoreboard players operation #type2 ui_rand /= #65536 ui_num
execute store result score $rand ui_calc1 run scoreboard players operation #type1 ui_rand %= #65536 ui_num
scoreboard players operation $rand ui_calc1 %= $c.proj.spread ui_temp
scoreboard players operation $y1 ui_calc1 += $rand ui_calc1
scoreboard players operation $y1 ui_calc1 -= #temp ui_calc1

scoreboard players operation #type1 ui_rand *= #31743 ui_num
execute store result score #type2 ui_rand run scoreboard players operation #type1 ui_rand += #type2 ui_rand
scoreboard players operation #type2 ui_rand /= #65536 ui_num
execute store result score $rand ui_calc1 run scoreboard players operation #type1 ui_rand %= #65536 ui_num
scoreboard players operation $rand ui_calc1 %= $c.proj.spread ui_temp
scoreboard players operation $z1 ui_calc1 += $rand ui_calc1
scoreboard players operation $z1 ui_calc1 -= #temp ui_calc1
