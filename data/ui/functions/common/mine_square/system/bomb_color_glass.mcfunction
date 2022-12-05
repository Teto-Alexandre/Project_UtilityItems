# 共通色識別子
scoreboard players set $num ui_temp 0
execute as @e[tag=ui_common_mine_square_bomb,distance=0.1..1.5] run scoreboard players add $num ui_temp 1
#tellraw @a {"score":{"name":"$num","objective":"ui_temp"}}
execute if score $num ui_temp matches 1 run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"1"}'}
execute if score $num ui_temp matches 2 run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"2"}'}
execute if score $num ui_temp matches 3 run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"3"}'}
execute if score $num ui_temp matches 4 run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"4"}'}
execute if score $num ui_temp matches 5 run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"5"}'}
execute if score $num ui_temp matches 6 run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"6"}'}
execute if score $num ui_temp matches 7 run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"7"}'}
execute if score $num ui_temp matches 8 run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"8"}'}