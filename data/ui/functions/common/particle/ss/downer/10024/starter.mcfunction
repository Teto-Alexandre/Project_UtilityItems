#
scoreboard players operation $is_temp ui_temp = $is ui_temp
scoreboard players operation $is_temp ui_temp %= #8 ui_num

execute if score $is ui_temp matches -99 run function ui:common/particle/ss/downer/10024/period2
execute if score $is ui_temp matches -95 run function ui:common/particle/ss/downer/10024/period3
execute if score $is ui_temp matches -91 run function ui:common/particle/ss/downer/10024/period4
execute if score $is ui_temp matches -79 run function ui:common/particle/ss/downer/10024/period2
execute if score $is ui_temp matches -75 run function ui:common/particle/ss/downer/10024/period3
execute if score $is ui_temp matches -71 run function ui:common/particle/ss/downer/10024/period4
execute if score $is ui_temp matches -59 run function ui:common/particle/ss/downer/10024/period2
execute if score $is ui_temp matches -55 run function ui:common/particle/ss/downer/10024/period3
execute if score $is ui_temp matches -51 run function ui:common/particle/ss/downer/10024/period4

execute if score $is ui_temp matches -39..-25 if score $is_temp ui_temp matches 0 run function ui:common/particle/ss/downer/10024/eye1close
execute if score $is ui_temp matches -19..-5 if score $is_temp ui_temp matches 0 run function ui:common/particle/ss/downer/10024/eye1mid
