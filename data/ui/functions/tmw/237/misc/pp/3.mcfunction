# 黄色で塗り、ポイントを加算する
particle dust 1 1 0.5 1 ~ ~ ~ 0 0 0 0 1 force
particle block yellow_concrete ~ ~ ~ 0 0 0 0 1 force
execute if block ~ ~ ~ #ui:wools unless block ~ ~ ~ yellow_wool run scoreboard players add $paint ui_temp 1
fill ~ ~ ~ ~ ~ ~ yellow_wool replace #ui:wools