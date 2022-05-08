#> ui:template/square_shuffle
#
# 軽量化用：@s を 立法座標拡散する
#
# @public

data modify storage ui:temp Pos set from entity @s Pos
execute store result score $x1 ui_calc1 run data get storage ui:temp Pos.[0] 1000
execute store result score $y1 ui_calc1 run data get storage ui:temp Pos.[1] 1000
execute store result score $z1 ui_calc1 run data get storage ui:temp Pos.[2] 1000

scoreboard players operation #type1 ui_rand *= #31743 ui_num
execute store result score #type2 ui_rand run scoreboard players operation #type1 ui_rand += #type2 ui_rand
scoreboard players operation #type2 ui_rand /= #65536 ui_num
execute store result score $rand ui_calc1 run scoreboard players operation #type1 ui_rand %= #65536 ui_num
scoreboard players operation $rand ui_calc1 %= #1000 ui_num
scoreboard players operation $x1 ui_calc1 += $rand ui_calc1
scoreboard players operation $x1 ui_calc1 -= #500 ui_num

scoreboard players operation #type1 ui_rand *= #31743 ui_num
execute store result score #type2 ui_rand run scoreboard players operation #type1 ui_rand += #type2 ui_rand
scoreboard players operation #type2 ui_rand /= #65536 ui_num
execute store result score $rand ui_calc1 run scoreboard players operation #type1 ui_rand %= #65536 ui_num
scoreboard players operation $rand ui_calc1 %= #1000 ui_num
scoreboard players operation $y1 ui_calc1 += $rand ui_calc1
scoreboard players operation $y1 ui_calc1 -= #500 ui_num

scoreboard players operation #type1 ui_rand *= #31743 ui_num
execute store result score #type2 ui_rand run scoreboard players operation #type1 ui_rand += #type2 ui_rand
scoreboard players operation #type2 ui_rand /= #65536 ui_num
execute store result score $rand ui_calc1 run scoreboard players operation #type1 ui_rand %= #65536 ui_num
scoreboard players operation $rand ui_calc1 %= #1000 ui_num
scoreboard players operation $z1 ui_calc1 += $rand ui_calc1
scoreboard players operation $z1 ui_calc1 -= #500 ui_num

execute store result storage ui:temp Pos.[0] double 0.001 run scoreboard players get $x1 ui_calc1
execute store result storage ui:temp Pos.[1] double 0.001 run scoreboard players get $y1 ui_calc1
execute store result storage ui:temp Pos.[2] double 0.001 run scoreboard players get $z1 ui_calc1
data modify entity @s Pos set from storage ui:temp Pos