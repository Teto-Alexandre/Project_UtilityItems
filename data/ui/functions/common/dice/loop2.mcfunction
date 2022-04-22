
scoreboard players operation #type1 ui_rand *= #31743 ui_num
execute store result score #type2 ui_rand run scoreboard players operation #type1 ui_rand += #type2 ui_rand
scoreboard players operation #type2 ui_rand /= #65536 ui_num
execute store result score $c.dice.num ui_temp run scoreboard players operation #type1 ui_rand %= #65536 ui_num
scoreboard players operation $c.dice.num ui_temp %= $c.dice.max2 ui_temp
scoreboard players operation $c.dice.num2 ui_temp < $c.dice.num ui_temp

scoreboard players add @s ui_d_luck 1
execute if score @s ui_d_luck matches ..-1 run function ui:common/dice/loop2
execute if score @s ui_d_luck matches 0 run scoreboard players set @s ui_d_luck -1