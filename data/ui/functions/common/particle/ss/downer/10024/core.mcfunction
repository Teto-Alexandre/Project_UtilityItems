#
scoreboard players remove $is ui_temp 100
execute if score $is ui_temp matches ..0 run function ui:common/particle/ss/downer/10024/starter
execute if score $is ui_temp matches 1.. run function ui:common/particle/ss/downer/10024/wakeup

