#

#
execute as @e[tag=ui_common_mine_square] at @s if entity @s[tag=ui_common_mine_square_press] run function ui:common/mine_square/system/press
execute as @e[tag=ui_common_mine_square] at @s if block ~ ~ ~ stone_button[powered=true] run function ui:common/mine_square/system/button/press
execute as @e[tag=ui_common_mine_square] if score @s ui_bcp matches 1 if score @s ui_bc matches 1.. run function ui:common/mine_square/system/button/wait
execute as @e[tag=ui_common_mine_square_button] at @s run function ui:common/mine_square/system/button/check
execute as @e[tag=ui_common_mine_square] if score @s ui_bc2 matches 1.. run function ui:common/mine_square/system/button/wait2
execute as @e[tag=ui_common_mine_square_button2] at @s run function ui:common/mine_square/system/button/check2
