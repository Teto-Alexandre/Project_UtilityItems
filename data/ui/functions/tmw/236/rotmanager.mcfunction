# 爆発半径をクルクル回してそれっぽく表示するやつ
execute store result score $time ui_temp in overworld run time query gametime
scoreboard players operation $time ui_temp %= #10 ui_num
execute if score $time ui_temp matches 1 run teleport @s ~ ~ ~ ~7 ~
execute if score $time ui_temp matches 2 run teleport @s ~ ~ ~ ~14 ~
execute if score $time ui_temp matches 3 run teleport @s ~ ~ ~ ~21 ~
execute if score $time ui_temp matches 4 run teleport @s ~ ~ ~ ~28 ~
execute if score $time ui_temp matches 5 run teleport @s ~ ~ ~ ~35 ~
execute if score $time ui_temp matches 6 run teleport @s ~ ~ ~ ~42 ~
execute if score $time ui_temp matches 7 run teleport @s ~ ~ ~ ~49 ~
execute if score $time ui_temp matches 8 run teleport @s ~ ~ ~ ~56 ~
execute if score $time ui_temp matches 9 run teleport @s ~ ~ ~ ~63 ~