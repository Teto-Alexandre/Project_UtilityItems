# カスタムモデルアマスタに実行

#
    scoreboard players add @s ui_is 1

#
    scoreboard players operation $is_temp ui_temp = @s ui_is
    scoreboard players operation $is_temp ui_temp %= #3 ui_num

#
    execute if score @s ui_is matches 1.. run teleport @s ~ ~0.1 ~ ~ ~

#
    execute if score @s ui_is matches 10.. run kill @s