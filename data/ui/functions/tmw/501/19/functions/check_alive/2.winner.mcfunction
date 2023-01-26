# システムアクティベート
scoreboard players set $temp ui_temp 0
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=1}] run scoreboard players add $temp ui_temp 1
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=2}] run scoreboard players add $temp ui_temp 2
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=3}] run scoreboard players add $temp ui_temp 3
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=4}] run scoreboard players add $temp ui_temp 4
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=5}] run scoreboard players add $temp ui_temp 5
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=6}] run scoreboard players add $temp ui_temp 6
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=7}] run scoreboard players add $temp ui_temp 7
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=8}] run scoreboard players add $temp ui_temp 8
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=9}] run scoreboard players add $temp ui_temp 9
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=10}] run scoreboard players add $temp ui_temp 10
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=11}] run scoreboard players add $temp ui_temp 11
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=12}] run scoreboard players add $temp ui_temp 12
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=13}] run scoreboard players add $temp ui_temp 13
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=14}] run scoreboard players add $temp ui_temp 14
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=15}] run scoreboard players add $temp ui_temp 15
execute if entity @a[tag=tmw_501_19,tag=tmw_501_19_battle,scores={ui_team=16}] run scoreboard players add $temp ui_temp 16
function ui:tmw/501/19/functions/check_alive/3.broadcast