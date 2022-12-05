#

#
setblock ~ ~ ~ air
setblock ~ ~-1 ~ redstone_block
particle dust 1 1 1 0.8 ~ ~ ~ 0.3 0.3 0.3 0 5 normal

#
execute as @e[distance=0.1..1.5,tag=ui_common_mine_square,tag=ui_common_mine_square_clear] run scoreboard players set @s ui_bc2 6
