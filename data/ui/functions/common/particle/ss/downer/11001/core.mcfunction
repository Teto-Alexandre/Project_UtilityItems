#
function ui:common/particle/ss/downer/10020/slash

teleport @s ^2 ^ ^

execute if score $is ui_temp matches 5 run particle cloud ~ ~ ~ 0 0 0 0.2 10 force
execute if score $is ui_temp matches 7 run particle cloud ~ ~ ~ 0 0 0 0.2 10 force
execute if score $is ui_temp matches 9 run particle cloud ~ ~ ~ 0 0 0 0.2 10 force
execute if score $is ui_temp matches 5 run playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.3 0
execute if score $is ui_temp matches 7 run playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.3 0
execute if score $is ui_temp matches 9 run playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.3 0

#
execute if score $is ui_temp matches 10.. run kill @s
