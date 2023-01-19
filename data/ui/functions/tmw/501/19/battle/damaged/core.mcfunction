# 近接攻撃を受ける

#
scoreboard players operation $damage ui_temp = @s ui_tmw501_19_test_dt
scoreboard players operation $damage ui_temp *= #10 ui_num

#
execute if score @s ui_tmw501_19_now_s2 matches 1.. run function ui:tmw/501/19/battle/damaged/s2
execute if score $damage ui_temp matches 1.. if score @s ui_tmw501_19_now_s1 matches 1.. run function ui:tmw/501/19/battle/damaged/s1

#
scoreboard players set @s ui_tmw501_19_test_dt 0