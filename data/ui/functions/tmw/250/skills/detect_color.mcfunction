#
    execute if score $type ui_temp matches 2 if entity @s[tag=ui_common_mine_square_bomb] at @s run tellraw @a[tag=ui_temp_this] ["",{"text":"MineSquare","color":"gold"},{"text":"> ","color":"green"},{"text":"> Bomb detected ! <","color":"red"}]
    execute unless score $type ui_temp matches 2 if entity @s[tag=ui_common_mine_square_bomb] run scoreboard players add $count ui_temp 1
    execute if entity @s[tag=ui_common_mine_square_bomb] at @s run setblock ~ ~ ~ air
    execute if entity @s[tag=ui_common_mine_square_bomb] at @s run setblock ~ ~-1 ~ redstone_block

#
    execute if score $type ui_temp matches 2 unless entity @s[tag=ui_common_mine_square_bomb] at @s run tellraw @a[tag=ui_temp_this] ["",{"text":"MineSquare","color":"gold"},{"text":"> ","color":"green"},{"text":"Not a bomb","color":"white"}]
    scoreboard players set $num ui_temp 0
    execute unless entity @s[tag=ui_common_mine_square_bomb] run function ui:common/mine_square/system/bomb_color
    execute unless entity @s[tag=ui_common_mine_square_bomb] run tag @s add ui_common_mine_square_press
