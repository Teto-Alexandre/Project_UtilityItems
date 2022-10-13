# 自爆

#
scoreboard players operation $temp ui_temp = @s ui_st2
scoreboard players operation $temp ui_temp %= #20 ui_num
execute unless score @s ui_st2 matches 0 if score $temp ui_temp matches 0 run function ui:template/explosion.4