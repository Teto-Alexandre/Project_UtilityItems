# 青色で塗り、ポイントを加算する
particle dust 0.5 1 1 1 ~ ~ ~ 0 0 0 0 1 force
particle block light_blue_concrete ~ ~ ~ 0 0 0 0 1 force
execute if block ~ ~ ~ #ui:wools unless block ~ ~ ~ light_blue_wool run scoreboard players add $paint ui_temp 1
fill ~ ~ ~ ~ ~ ~ light_blue_wool replace #ui:wools