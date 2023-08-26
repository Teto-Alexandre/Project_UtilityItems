
execute at @s[tag=!ui_temp_killray] run tp @s ^ ^ ^0.1
execute at @s[tag=!ui_temp_killray] run particle dust 0 0.7 1 0.2 ~ ~ ~ 0 0 0 0 3

scoreboard players remove $range2 ui_temp 1


#execute at @s[tag=!ui_temp_killray] if entity @e[tag=ui_temp_activationray,distance=..0.3] run tellraw @a {"text":"あるよ"}
execute at @s[tag=!ui_temp_killray] if entity @e[tag=ui_temp_activationray,distance=..0.3] run tag @s add ui_temp_killray


#execute if score $range2 ui_temp matches ..0 run tellraw @a {"text":"限界"}
execute if score $range2 ui_temp matches ..0 run tag @s add ui_temp_killray

execute as @s[tag=!ui_temp_killray] at @s run function ui:tmw/17/id/1/vraymove
