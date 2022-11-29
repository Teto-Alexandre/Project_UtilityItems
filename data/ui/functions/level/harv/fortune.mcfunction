# ツルハシを使う標準準備動作

#
    execute store result score $count ui_temp run data get entity @s Item.Count 1
    execute store result entity @s Item.Count int 1 run scoreboard players operation $count ui_temp += $temp ui_temp
    #tellraw @a [{"text":"+"},{"score":{"name":"$temp","objective":"ui_temp"}}]