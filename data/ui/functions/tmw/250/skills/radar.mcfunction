#
    #execute at @s run tellraw @a[tag=ui_temp_this] ["",{"text":"MineSquare","color":"gold"},{"text":"> ","color":"green"},{"text":"> Bomb defused ! <","color":"white"}]
    #tag @s remove ui_common_mine_square_bomb
    #tag @s add ui_common_mine_square_press
    #setblock ~ ~ ~ bedrock

#
    scoreboard players set $block ui_temp 0
    execute if block ~ ~ ~ air run scoreboard players set $block ui_temp 1
    execute if block ~ ~-1 ~ redstone_block run scoreboard players set $block ui_temp 2
    function ui:common/mine_square/system/bomb_color_glass
    execute if score $block ui_temp matches 1..2 run setblock ~ ~ ~ air
    execute if score $block ui_temp matches 2 run setblock ~ ~-1 ~ redstone_block

#
    scoreboard players set @s ui_bc2 3
