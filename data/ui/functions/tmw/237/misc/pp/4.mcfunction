# 緑色で塗り、ポイントを加算する
execute at @e[tag=ui_temp_particle] run particle dust 0.5 1 0.5 1 ~ ~ ~ 0 0 0 0 1 force
execute at @e[tag=ui_temp_particle] run particle block lime_concrete ~ ~ ~ 0 0 0 0 1 force
execute at @e[tag=ui_temp_particle] if block ~ ~ ~ #ui:wools unless block ~ ~ ~ lime_wool run scoreboard players add $paint ui_temp 1
execute at @e[tag=ui_temp_particle] run fill ~ ~ ~ ~ ~ ~ lime_wool replace #ui:wools