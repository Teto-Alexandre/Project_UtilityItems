#

# 最初の一個は絶対にセーフ
execute if score $calc2 ui_temp matches 0 run tag @e[tag=ui_common_mine_square,distance=..1.5] remove ui_common_mine_square_bomb
scoreboard players add $calc2 ui_temp 1

#
tag @s add ui_common_mine_square_clear
tag @s remove ui_common_mine_square_press
#data merge entity @s {Invisible:0b}

function ui:common/mine_square/system/bomb_color

setblock ~ ~1 ~ air replace

execute unless entity @s[tag=ui_common_mine_square_bomb] if score $num ui_temp matches 0 run function ui:common/mine_square/system/chain

execute if entity @s[tag=ui_common_mine_square_bomb] run function ui:common/mine_square/system/bomb
