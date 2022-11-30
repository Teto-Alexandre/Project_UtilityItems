#
    #execute at @s run tellraw @a[tag=ui_temp_this] ["",{"text":"MineSquare","color":"gold"},{"text":"> ","color":"green"},{"text":"> Bomb defused ! <","color":"white"}]
    #tag @s remove ui_common_mine_square_bomb
    #tag @s add ui_common_mine_square_press
    #setblock ~ ~ ~ bedrock

#
    execute unless entity @s[tag=ui_common_mine_square_clear] run function ui:common/mine_square/system/bomb_color_glass

#
    execute if block ~ ~ ~ white_stained_glass as @e[tag=ui_temp_mine_square,tag=!ui_common_mine_square_bomb,distance=0.1..1.5] run tag @s add ui_common_mine_square_press
