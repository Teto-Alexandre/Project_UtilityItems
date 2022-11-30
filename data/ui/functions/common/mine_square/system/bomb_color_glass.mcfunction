# 共通色識別子
scoreboard players set $num ui_temp 0
execute positioned ~1 ~ ~ if entity @e[tag=ui_common_mine_square_bomb,distance=..0.5] run scoreboard players add $num ui_temp 1
execute positioned ~1 ~ ~1 if entity @e[tag=ui_common_mine_square_bomb,distance=..0.5] run scoreboard players add $num ui_temp 1
execute positioned ~ ~ ~1 if entity @e[tag=ui_common_mine_square_bomb,distance=..0.5] run scoreboard players add $num ui_temp 1
execute positioned ~-1 ~ ~1 if entity @e[tag=ui_common_mine_square_bomb,distance=..0.5] run scoreboard players add $num ui_temp 1
execute positioned ~-1 ~ ~ if entity @e[tag=ui_common_mine_square_bomb,distance=..0.5] run scoreboard players add $num ui_temp 1
execute positioned ~-1 ~ ~-1 if entity @e[tag=ui_common_mine_square_bomb,distance=..0.5] run scoreboard players add $num ui_temp 1
execute positioned ~ ~ ~-1 if entity @e[tag=ui_common_mine_square_bomb,distance=..0.5] run scoreboard players add $num ui_temp 1
execute positioned ~1 ~ ~-1 if entity @e[tag=ui_common_mine_square_bomb,distance=..0.5] run scoreboard players add $num ui_temp 1
#tellraw @a {"score":{"name":"$num","objective":"ui_temp"}}
setblock ~ ~1 ~ air replace
execute if score $num ui_temp matches 0 if block ~ ~ ~ #ui:glasses run setblock ~ ~ ~ white_stained_glass destroy
execute if score $num ui_temp matches 1 if block ~ ~ ~ #ui:glasses run setblock ~ ~ ~ light_gray_stained_glass destroy
execute if score $num ui_temp matches 2 if block ~ ~ ~ #ui:glasses run setblock ~ ~ ~ gray_stained_glass destroy
execute if score $num ui_temp matches 3 if block ~ ~ ~ #ui:glasses run setblock ~ ~ ~ black_stained_glass destroy
execute if score $num ui_temp matches 4 if block ~ ~ ~ #ui:glasses run setblock ~ ~ ~ red_stained_glass destroy
execute if score $num ui_temp matches 5 if block ~ ~ ~ #ui:glasses run setblock ~ ~ ~ orange_stained_glass destroy
execute if score $num ui_temp matches 6 if block ~ ~ ~ #ui:glasses run setblock ~ ~ ~ yellow_stained_glass destroy
execute if score $num ui_temp matches 7 if block ~ ~ ~ #ui:glasses run setblock ~ ~ ~ lime_stained_glass destroy
execute if score $num ui_temp matches 8 if block ~ ~ ~ #ui:glasses run setblock ~ ~ ~ green_stained_glass destroy
execute if score $num ui_temp matches 0 unless block ~ ~ ~ #ui:glasses unless block ~ ~ ~ bedrock run setblock ~ ~ ~ white_stained_glass replace
execute if score $num ui_temp matches 1 unless block ~ ~ ~ #ui:glasses unless block ~ ~ ~ bedrock run setblock ~ ~ ~ light_gray_stained_glass replace
execute if score $num ui_temp matches 2 unless block ~ ~ ~ #ui:glasses unless block ~ ~ ~ bedrock run setblock ~ ~ ~ gray_stained_glass replace
execute if score $num ui_temp matches 3 unless block ~ ~ ~ #ui:glasses unless block ~ ~ ~ bedrock run setblock ~ ~ ~ black_stained_glass replace
execute if score $num ui_temp matches 4 unless block ~ ~ ~ #ui:glasses unless block ~ ~ ~ bedrock run setblock ~ ~ ~ red_stained_glass replace
execute if score $num ui_temp matches 5 unless block ~ ~ ~ #ui:glasses unless block ~ ~ ~ bedrock run setblock ~ ~ ~ orange_stained_glass replace
execute if score $num ui_temp matches 6 unless block ~ ~ ~ #ui:glasses unless block ~ ~ ~ bedrock run setblock ~ ~ ~ yellow_stained_glass replace
execute if score $num ui_temp matches 7 unless block ~ ~ ~ #ui:glasses unless block ~ ~ ~ bedrock run setblock ~ ~ ~ lime_stained_glass replace
execute if score $num ui_temp matches 8 unless block ~ ~ ~ #ui:glasses unless block ~ ~ ~ bedrock run setblock ~ ~ ~ green_stained_glass replace
setblock ~ ~1 ~ stone_button[face=floor]