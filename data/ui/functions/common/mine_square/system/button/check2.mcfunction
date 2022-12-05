#

#
particle dust 0 1 0 0.8 ~ ~ ~ 0.3 0.3 0.3 0 5 normal

scoreboard players set $num ui_temp 0
execute as @e[tag=ui_common_mine_square_bomb,distance=0.1..1.5] run scoreboard players add $num ui_temp 1
execute as @e[tag=ui_common_mine_square,distance=0.1..1.5] at @s if block ~ ~-1 ~ redstone_block run tag @s add ui_temp_sum
execute as @e[tag=ui_common_mine_square,tag=!ui_common_mine_square_clear,distance=0.1..1.5] at @s if block ~ ~ ~ air run tag @s add ui_temp_sum
execute as @e[tag=ui_temp_sum] run scoreboard players remove $num ui_temp 1

#tellraw @p {"score":{"name":"$num","objective":"ui_temp"}}
execute unless entity @s[tag=ui_common_mine_square_bomb] if score $num ui_temp matches ..0 as @e[distance=0.1..1.5,tag=ui_common_mine_square,tag=!ui_common_mine_square_clear,tag=!ui_temp_sum] run tag @s add ui_common_mine_square_press

tag @s remove ui_common_mine_square_button2

tag @e[tag=ui_temp_sum] remove ui_temp_sum