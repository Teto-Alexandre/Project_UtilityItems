# 一時値に重力累加値を入れる
scoreboard players operation $common_block_gravity ui_temp = @s ui_is
scoreboard players operation $common_block_gravity ui_temp /= #10 ui_num
execute if score $common_block_gravity ui_temp matches 1.. run function ui:common/block_gravity/ss/move

scoreboard players add @s ui_is 1