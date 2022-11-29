#

# 最初の一個は絶対にセーフ
execute if score $calc2 ui_temp matches 0 run tag @s remove ui_common_mine_square_bomb

#
tag @s add ui_common_mine_square_clear
tag @s remove ui_common_mine_square_press
#data merge entity @s {Invisible:0b}

setblock ~ ~1 ~ air replace

scoreboard players set $num ui_temp 0
execute positioned ~1 ~ ~ if entity @e[tag=ui_common_mine_square_bomb,distance=..0.5] run scoreboard players add $num ui_temp 1
execute positioned ~1 ~ ~1 if entity @e[tag=ui_common_mine_square_bomb,distance=..0.5] run scoreboard players add $num ui_temp 1
execute positioned ~ ~ ~1 if entity @e[tag=ui_common_mine_square_bomb,distance=..0.5] run scoreboard players add $num ui_temp 1
execute positioned ~-1 ~ ~1 if entity @e[tag=ui_common_mine_square_bomb,distance=..0.5] run scoreboard players add $num ui_temp 1
execute positioned ~-1 ~ ~ if entity @e[tag=ui_common_mine_square_bomb,distance=..0.5] run scoreboard players add $num ui_temp 1
execute positioned ~-1 ~ ~-1 if entity @e[tag=ui_common_mine_square_bomb,distance=..0.5] run scoreboard players add $num ui_temp 1
execute positioned ~ ~ ~-1 if entity @e[tag=ui_common_mine_square_bomb,distance=..0.5] run scoreboard players add $num ui_temp 1
execute positioned ~1 ~ ~-1 if entity @e[tag=ui_common_mine_square_bomb,distance=..0.5] run scoreboard players add $num ui_temp 1

#tellraw @a {"score":{"name":"$num","objective":"ui_temp"}}
execute if score $num ui_temp matches 0 run setblock ~ ~ ~ white_wool
execute if score $num ui_temp matches 1 run setblock ~ ~ ~ light_gray_wool
execute if score $num ui_temp matches 2 run setblock ~ ~ ~ gray_wool
execute if score $num ui_temp matches 3 run setblock ~ ~ ~ black_wool
execute if score $num ui_temp matches 4 run setblock ~ ~ ~ red_wool
execute if score $num ui_temp matches 5 run setblock ~ ~ ~ orange_wool
execute if score $num ui_temp matches 6 run setblock ~ ~ ~ yellow_wool
execute if score $num ui_temp matches 7 run setblock ~ ~ ~ lime_wool
execute if score $num ui_temp matches 8 run setblock ~ ~ ~ green_wool

execute unless entity @s[tag=ui_common_mine_square_bomb] if score $num ui_temp matches 0 run function ui:common/mine_square/system/chain

execute if entity @s[tag=ui_common_mine_square_bomb] run function ui:common/mine_square/system/bomb
