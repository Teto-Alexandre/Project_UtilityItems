# 最初の一個は絶対にセーフ
execute if score @e[tag=ui_common_mine_square_core,sort=nearest,limit=1] ui_autohit matches 0 run tag @e[tag=ui_common_mine_square,distance=..1.5] remove ui_common_mine_square_bomb
scoreboard players add @s ui_autohit 1

function ui:common/mine_square/system/press
