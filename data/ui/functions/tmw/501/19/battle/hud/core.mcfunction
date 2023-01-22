# HUD

# 取得
execute store result score $hudt ui_temp run scoreboard players get @s ui_tmw501_19_stat_hudt
execute store result score $en ui_temp run scoreboard players get @s ui_tmw501_19_now_en
execute store result score $s1 ui_temp run scoreboard players get @s ui_tmw501_19_now_s1
execute store result score $s2 ui_temp run scoreboard players get @s ui_tmw501_19_now_s2

#
execute if score $hudt ui_temp matches 1 run function ui:tmw/501/19/battle/hud/id/1
