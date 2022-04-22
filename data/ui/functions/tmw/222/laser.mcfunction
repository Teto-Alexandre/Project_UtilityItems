#=======================================================================================

scoreboard players add @s ui_calc1 1

execute at @s run teleport @s ^ ^ ^0.5

execute at @s if block ~ ~ ~ chest run tag @s add ui_temp3
execute at @s[tag=ui_temp3] align xyz positioned ~0.5 ~0.5 ~0.5 run function ui:tmw/222/sel

execute at @s if entity @e[type=shulker,distance=..1,nbt=!{Peek:0b}] run tag @s add ui_temp5
execute at @s[tag=ui_temp5] as @e[type=shulker,distance=..1,nbt=!{Peek:0b}] run function ui:tmw/222/close

particle enchanted_hit ~ ~ ~ 0 0 0 0.05 1 force @a[scores={ui_tmw_id=222}]

kill @s[scores={ui_calc1=100..}]
kill @s[tag=ui_temp3]
kill @s[tag=ui_temp5]

execute as @s[scores={ui_calc1=..99},tag=!ui_temp3,tag=!ui_temp5] at @s run function ui:tmw/222/laser

#=======================================================================================