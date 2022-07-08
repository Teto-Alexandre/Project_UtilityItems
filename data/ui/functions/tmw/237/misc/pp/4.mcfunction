# 緑色で塗り、ポイントを加算する
particle dust 0.5 1 0.5 1 ~ ~ ~ 0 0 0 0 1 force
particle block lime_concrete ~ ~ ~ 0 0 0 0 1 force
execute if block ~ ~ ~ #ui:wools unless block ~ ~ ~ lime_wool run scoreboard players add $paint ui_temp 1
fill ~ ~ ~ ~ ~ ~ lime_wool replace #ui:wools