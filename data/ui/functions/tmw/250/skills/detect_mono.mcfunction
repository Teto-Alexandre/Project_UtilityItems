#
    execute if entity @s[tag=ui_common_mine_square_bomb] at @s run tellraw @a[tag=ui_temp_this] ["",{"text":"MineSquare","color":"gold"},{"text":"> ","color":"green"},{"text":"> Bomb detected ! <","color":"red"}]
    execute if entity @s[tag=ui_common_mine_square_bomb] at @s run setblock ~ ~1 ~ air
    execute if entity @s[tag=ui_common_mine_square_bomb] at @s run setblock ~ ~ ~ redstone_block

#
    execute unless entity @s[tag=ui_common_mine_square_bomb] at @s run tellraw @a[tag=ui_temp_this] ["",{"text":"MineSquare","color":"gold"},{"text":"> ","color":"green"},{"text":"Not a bomb","color":"white"}]
    execute unless entity @s[tag=ui_common_mine_square_bomb] at @s run setblock ~ ~ ~ bedrock
    execute unless entity @s[tag=ui_common_mine_square_bomb] run tag @s add ui_common_mine_square_press
