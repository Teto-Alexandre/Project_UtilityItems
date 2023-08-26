# 近くにあるならタグ付けして実体化
tag @e[tag=tmw_17_2_1] add tmw_17_2_2
execute at @e[tag=tmw_17_2_2] run fill ~ ~ ~ ~ ~ ~ glass replace air
execute at @e[tag=tmw_17_2_1,tag=!tmw_17_2_2] run fill ~ ~ ~ ~ ~ ~ air replace glass
tag @e[tag=tmw_17_2_2] remove tmw_17_2_2