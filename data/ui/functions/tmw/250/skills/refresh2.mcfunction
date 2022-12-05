#
    setblock ~ ~-1 ~ air
    function ui:common/mine_square/system/bomb_color
    setblock ~ ~ ~ air

#
    execute as @e[tag=ui_temp_mine_square,distance=0.1..1.5] at @s unless block ~ ~-1 ~ redstone_block run tag @s add ui_temp_near
    execute as @e[tag=ui_temp_near,tag=ui_common_mine_square_bomb,sort=random,limit=1] run tag @s add ui_temp_bomb
    execute as @e[tag=ui_temp_bomb] at @s run setblock ~ ~-1 ~ redstone_block
    execute as @e[tag=ui_temp_bomb] at @s run setblock ~ ~ ~ air
    tag @e[tag=ui_temp_near] remove ui_temp_near
    tag @e[tag=ui_temp_bomb] remove ui_temp_bomb

#
    execute if block ~ ~-1 ~ white_wool as @e[tag=ui_temp_mine_square,tag=!ui_common_mine_square_bomb,distance=0.1..1.5] run tag @s add ui_common_mine_square_press
    execute if block ~ ~-1 ~ light_gray_wool as @e[tag=ui_temp_mine_square,tag=!ui_common_mine_square_bomb,distance=0.1..1.5] run tag @s add ui_common_mine_square_press
