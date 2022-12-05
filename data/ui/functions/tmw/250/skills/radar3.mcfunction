#
    #execute at @s run tellraw @a[tag=ui_temp_this] ["",{"text":"MineSquare","color":"gold"},{"text":"> ","color":"green"},{"text":"> Bomb defused ! <","color":"white"}]
    #tag @s remove ui_common_mine_square_bomb
    #tag @s add ui_common_mine_square_press
    #setblock ~ ~ ~ bedrock

#
    execute unless entity @s[tag=ui_common_mine_square_clear] run function ui:common/mine_square/system/bomb_color_glass

#
    execute as @e[tag=ui_temp_mine_square,distance=0.1..1.5] at @s unless block ~ ~-1 ~ redstone_block run tag @s add ui_temp_near
    execute as @e[tag=ui_temp_near,tag=ui_common_mine_square_bomb,sort=random,limit=2] run tag @s add ui_temp_bomb
    execute as @e[tag=ui_temp_bomb] at @s run setblock ~ ~-1 ~ redstone_block
    execute as @e[tag=ui_temp_bomb] at @s run setblock ~ ~ ~ air
    tag @e[tag=ui_temp_near] remove ui_temp_near
    tag @e[tag=ui_temp_bomb] remove ui_temp_bomb

#
    scoreboard players set @s ui_bc2 3