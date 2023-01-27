# HUD

# 取得
execute store result score $hudt ui_temp run scoreboard players get @s ui_tmw501_19_stat_hudt

#
execute if score $hudt ui_temp matches 1 run function ui:tmw/501/19/battle/hud/id/1
execute if score $hudt ui_temp matches 2 run function ui:tmw/501/19/battle/hud/id/2/main
execute if score $hudt ui_temp matches 3 run function ui:tmw/501/19/battle/hud/id/3/main

#
function ui:tmw/501/19/functions/energy/hud_use
