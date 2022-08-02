#> ui:tmw/237/attack/missile/square_shuffle
#
# 軽量化用：@s を $spread ui_temp に従って立法座標拡散する
#
# @public

data modify storage ui:temp Pos set from entity @s Pos
execute store result score $x1 ui_calc1 run data get storage ui:temp Pos.[0] 10
execute store result score $z1 ui_calc1 run data get storage ui:temp Pos.[2] 10

scoreboard players operation #temp ui_calc1 = $spread ui_temp
scoreboard players operation #temp ui_calc1 /= #2 ui_num

scoreboard players operation #type1 ui_rand *= #31743 ui_num
execute store result score #type2 ui_rand run scoreboard players operation #type1 ui_rand += #type2 ui_rand
scoreboard players operation #type2 ui_rand /= #65536 ui_num
execute store result score $rand ui_calc1 run scoreboard players operation #type1 ui_rand %= #65536 ui_num
scoreboard players operation $rand ui_calc1 %= $spread ui_temp
scoreboard players operation $x1 ui_calc1 += $rand ui_calc1
scoreboard players operation $x1 ui_calc1 -= #temp ui_calc1

scoreboard players operation #type1 ui_rand *= #31743 ui_num
execute store result score #type2 ui_rand run scoreboard players operation #type1 ui_rand += #type2 ui_rand
scoreboard players operation #type2 ui_rand /= #65536 ui_num
execute store result score $rand ui_calc1 run scoreboard players operation #type1 ui_rand %= #65536 ui_num
scoreboard players operation $rand ui_calc1 %= $spread ui_temp
scoreboard players operation $z1 ui_calc1 += $rand ui_calc1
scoreboard players operation $z1 ui_calc1 -= #temp ui_calc1

execute store result storage ui:temp Pos.[0] double 0.1 run scoreboard players get $x1 ui_calc1
execute store result storage ui:temp Pos.[2] double 0.1 run scoreboard players get $z1 ui_calc1
#tellraw @a [{"score":{"name":"$x1","objective":"ui_calc1"}},{"text":" : "},{"score":{"name":"$z1","objective":"ui_calc1"}}]
data modify entity @s Pos set from storage ui:temp Pos