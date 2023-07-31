#
scoreboard players remove $is ui_temp 180
execute if score $is ui_temp matches ..0 run function ui:common/particle/ss/downer/10025/starter
execute if score $is ui_temp matches 1.. run function ui:common/particle/ss/downer/10025/wakeup

