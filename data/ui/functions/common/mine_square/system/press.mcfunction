#
particle dust 1 1 0 0.8 ~ ~ ~ 0.3 0.3 0.3 0 5 normal

#
tag @s add ui_common_mine_square_clear
tag @s remove ui_common_mine_square_press
#data merge entity @s {Invisible:0b}

function ui:common/mine_square/system/bomb_color
execute as @e[tag=ui_common_mine_square,distance=0.1..1.5] at @s if block ~ ~-1 ~ redstone_block run tag @s add ui_temp_sum
execute as @e[tag=ui_common_mine_square,distance=0.1..1.5] at @s if block ~ ~ ~ air if block ~ ~-1 ~ glass run tag @s add ui_temp_sum
execute as @e[tag=ui_temp_sum] run scoreboard players remove $num ui_temp 1

setblock ~ ~ ~ air replace

execute unless entity @s[tag=ui_common_mine_square_bomb] if score $num ui_temp matches ..0 run function ui:common/mine_square/system/chain
scoreboard players set @e[tag=ui_common_mine_square,distance=..1.5] ui_bc 6

tag @e[tag=ui_temp_sum] remove ui_temp_sum

execute if entity @s[tag=ui_common_mine_square_bomb] run function ui:common/mine_square/system/bomb
