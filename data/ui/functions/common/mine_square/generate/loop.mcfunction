#

#
execute as @e[tag=ui_temp_unpower,tag=!ui_common_mine_square_bomb,sort=random,limit=1] run tag @s add ui_common_mine_square_bomb
scoreboard players remove $num ui_temp 1
execute if score $num ui_temp matches 1.. run function ui:common/mine_square/generate/loop