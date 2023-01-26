# システムアクティベート
scoreboard players set $count ui_temp 0
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=1}] run scoreboard players add $count ui_temp 1
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=2}] run scoreboard players add $count ui_temp 1
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=3}] run scoreboard players add $count ui_temp 1
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=4}] run scoreboard players add $count ui_temp 1
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=5}] run scoreboard players add $count ui_temp 1
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=6}] run scoreboard players add $count ui_temp 1
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=7}] run scoreboard players add $count ui_temp 1
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=8}] run scoreboard players add $count ui_temp 1
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=9}] run scoreboard players add $count ui_temp 1
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=10}] run scoreboard players add $count ui_temp 1
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=11}] run scoreboard players add $count ui_temp 1
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=12}] run scoreboard players add $count ui_temp 1
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=13}] run scoreboard players add $count ui_temp 1
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=14}] run scoreboard players add $count ui_temp 1
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=15}] run scoreboard players add $count ui_temp 1
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=16}] run scoreboard players add $count ui_temp 1
execute if score $count ui_temp matches ..1 run function ui:tmw/501/19/functions/check_alive/2.winner