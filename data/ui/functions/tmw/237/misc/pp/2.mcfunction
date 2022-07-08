# 赤色で塗り、ポイントを加算する
particle dust 1 0.5 1 1 ~ ~ ~ 0 0 0 0 1 force
particle block pink_concrete ~ ~ ~ 0 0 0 0 1 force
execute if block ~ ~ ~ #ui:wools unless block ~ ~ ~ pink_wool run scoreboard players add $paint ui_temp 1
fill ~ ~ ~ ~ ~ ~ pink_wool replace #ui:wools