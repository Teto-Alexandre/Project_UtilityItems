
execute at @s[tag=!ui_temp_killray] run teleport @s ^ ^ ^0.1
execute at @s[tag=!ui_temp_killray] run particle dust 0 1 0 0.2 ~ ~ ~ 0 0 0 0 3
execute at @s[tag=!ui_temp_killray,tag=shadowaray] run particle dust 0 0.7 1 20 ~ ~ ~ 0 0 0 0 3

scoreboard players remove $range ui_temp 1

execute at @s if block ~ ~ ~ glass run tag @s add ui_temp_hit
execute at @s if block ~ ~ ~ structure_void run tag @s add ui_temp_hit

execute at @s[tag=ui_temp_hit,tag=!ui_temp_killray] align xyz positioned ~0.5 ~0.5 ~0.5 run tag @e[tag=ui_tmw_17_activatable,distance=..0.5] add ui_tmw_17_activate
execute at @s[tag=ui_temp_hit,tag=!ui_temp_killray] as @p at @s run function ui:tmw/17/id/1/shootvray
execute at @s[tag=ui_temp_hit,tag=!ui_temp_killray] run tag @s add ui_temp_killray

execute at @s[tag=!ui_temp_killray,tag=!shadowaray] unless block ~ ~ ~ #ui:nocol unless block ~ ~ ~ iron_door[open=true] as @p at @s run function ui:tmw/17/id/1/shootvray
execute at @s[tag=!ui_temp_killray] unless block ~ ~ ~ #ui:nocol unless block ~ ~ ~ iron_door[open=true] run tag @s add ui_temp_killray

#execute as @s[tag=!ui_temp_killray] at @s if block ~ ~-3 ~ stripped_oak_log if block ~ ~-2 ~ air if block ~ ~-1 ~ air run tag @s add ui_temp_blocked
#execute as @s[tag=!ui_temp_killray] at @s if block ~ ~-2 ~ stripped_oak_log if block ~ ~-1 ~ air run tag @s add ui_temp_blocked
#execute as @s[tag=!ui_temp_killray] at @s if block ~ ~-1 ~ stripped_oak_log run tag @s add ui_temp_blocked
#execute as @s[tag=!ui_temp_killray] at @s if block ~ ~1 ~ stripped_oak_log run tag @s add ui_temp_blocked
#execute as @s[tag=!ui_temp_killray] at @s if block ~ ~2 ~ stripped_oak_log if block ~ ~1 ~ air run tag @s add ui_temp_blocked
#execute as @s[tag=!ui_temp_killray] at @s if block ~ ~3 ~ stripped_oak_log if block ~ ~2 ~ air if block ~ ~1 ~ air run tag @s add ui_temp_blocked
#
#execute as @s[tag=ui_temp_blocked] as @p at @s run function ui:tmw/17/id/1/shootvray
#execute as @s[tag=ui_temp_blocked] at @s run playsound block.lava.extinguish block @a ~ ~ ~ 0.2 2
#execute as @s[tag=ui_temp_blocked] at @s run particle smoke ~ ~ ~ 0 0 0 0.1 30
#execute as @s[tag=ui_temp_blocked] run tag @s add ui_temp_killray


execute if score $range ui_temp matches ..0 run tag @s add ui_temp_killray

execute as @s[tag=!ui_temp_killray] at @s run function ui:tmw/17/id/1/raymove
