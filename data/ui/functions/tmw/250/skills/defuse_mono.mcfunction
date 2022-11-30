#
    #execute at @s run tellraw @a[tag=ui_temp_this] ["",{"text":"MineSquare","color":"gold"},{"text":"> ","color":"green"},{"text":"> Bomb defused ! <","color":"white"}]
    tag @s remove ui_common_mine_square_bomb
    tag @s add ui_common_mine_square_press
    setblock ~ ~ ~ bedrock

#
    execute as @e[tag=ui_temp_mine_square,distance=0.1..1.5] if entity @s[tag=ui_common_mine_square_clear] at @s run tag @s add ui_common_mine_square_press
