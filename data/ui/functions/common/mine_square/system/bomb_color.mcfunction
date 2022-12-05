# 共通色識別子
scoreboard players set $num ui_temp 0
execute as @e[tag=ui_common_mine_square_bomb,distance=0.1..1.5] run scoreboard players add $num ui_temp 1
#tellraw @a {"score":{"name":"$num","objective":"ui_temp"}}
setblock ~ ~ ~ air replace
execute if score $num ui_temp matches 0 if block ~ ~-1 ~ #ui:glasses run setblock ~ ~-1 ~ white_wool destroy
execute if score $num ui_temp matches 1 if block ~ ~-1 ~ #ui:glasses run setblock ~ ~-1 ~ light_gray_wool destroy
execute if score $num ui_temp matches 2 if block ~ ~-1 ~ #ui:glasses run setblock ~ ~-1 ~ gray_wool destroy
execute if score $num ui_temp matches 3 if block ~ ~-1 ~ #ui:glasses run setblock ~ ~-1 ~ black_wool destroy
execute if score $num ui_temp matches 4 if block ~ ~-1 ~ #ui:glasses run setblock ~ ~-1 ~ red_wool destroy
execute if score $num ui_temp matches 5 if block ~ ~-1 ~ #ui:glasses run setblock ~ ~-1 ~ orange_wool destroy
execute if score $num ui_temp matches 6 if block ~ ~-1 ~ #ui:glasses run setblock ~ ~-1 ~ yellow_wool destroy
execute if score $num ui_temp matches 7 if block ~ ~-1 ~ #ui:glasses run setblock ~ ~-1 ~ lime_wool destroy
execute if score $num ui_temp matches 8 if block ~ ~-1 ~ #ui:glasses run setblock ~ ~-1 ~ green_wool destroy
execute if score $num ui_temp matches 0 unless block ~ ~-1 ~ #ui:glasses unless block ~ ~-1 ~ bedrock run setblock ~ ~-1 ~ white_wool replace
execute if score $num ui_temp matches 1 unless block ~ ~-1 ~ #ui:glasses unless block ~ ~-1 ~ bedrock run setblock ~ ~-1 ~ light_gray_wool replace
execute if score $num ui_temp matches 2 unless block ~ ~-1 ~ #ui:glasses unless block ~ ~-1 ~ bedrock run setblock ~ ~-1 ~ gray_wool replace
execute if score $num ui_temp matches 3 unless block ~ ~-1 ~ #ui:glasses unless block ~ ~-1 ~ bedrock run setblock ~ ~-1 ~ black_wool replace
execute if score $num ui_temp matches 4 unless block ~ ~-1 ~ #ui:glasses unless block ~ ~-1 ~ bedrock run setblock ~ ~-1 ~ red_wool replace
execute if score $num ui_temp matches 5 unless block ~ ~-1 ~ #ui:glasses unless block ~ ~-1 ~ bedrock run setblock ~ ~-1 ~ orange_wool replace
execute if score $num ui_temp matches 6 unless block ~ ~-1 ~ #ui:glasses unless block ~ ~-1 ~ bedrock run setblock ~ ~-1 ~ yellow_wool replace
execute if score $num ui_temp matches 7 unless block ~ ~-1 ~ #ui:glasses unless block ~ ~-1 ~ bedrock run setblock ~ ~-1 ~ lime_wool replace
execute if score $num ui_temp matches 8 unless block ~ ~-1 ~ #ui:glasses unless block ~ ~-1 ~ bedrock run setblock ~ ~-1 ~ green_wool replace
execute if score $num ui_temp matches 1 unless block ~ ~-1 ~ bedrock run data merge entity @s[tag=!ui_common_mine_square_bomb] {CustomNameVisible:1b,CustomName:'{"text":"1","color":"white"}'}
execute if score $num ui_temp matches 2 unless block ~ ~-1 ~ bedrock run data merge entity @s[tag=!ui_common_mine_square_bomb] {CustomNameVisible:1b,CustomName:'{"text":"2","color":"white"}'}
execute if score $num ui_temp matches 3 unless block ~ ~-1 ~ bedrock run data merge entity @s[tag=!ui_common_mine_square_bomb] {CustomNameVisible:1b,CustomName:'{"text":"3","color":"white"}'}
execute if score $num ui_temp matches 4 unless block ~ ~-1 ~ bedrock run data merge entity @s[tag=!ui_common_mine_square_bomb] {CustomNameVisible:1b,CustomName:'{"text":"4","color":"red"}'}
execute if score $num ui_temp matches 5 unless block ~ ~-1 ~ bedrock run data merge entity @s[tag=!ui_common_mine_square_bomb] {CustomNameVisible:1b,CustomName:'{"text":"5","color":"gold"}'}
execute if score $num ui_temp matches 6 unless block ~ ~-1 ~ bedrock run data merge entity @s[tag=!ui_common_mine_square_bomb] {CustomNameVisible:1b,CustomName:'{"text":"6","color":"yellow"}'}
execute if score $num ui_temp matches 7 unless block ~ ~-1 ~ bedrock run data merge entity @s[tag=!ui_common_mine_square_bomb] {CustomNameVisible:1b,CustomName:'{"text":"7","color":"green"}'}
execute if score $num ui_temp matches 8 unless block ~ ~-1 ~ bedrock run data merge entity @s[tag=!ui_common_mine_square_bomb] {CustomNameVisible:1b,CustomName:'{"text":"8","color":"green","bold":true}'}
setblock ~ ~ ~ stone_button[face=floor]