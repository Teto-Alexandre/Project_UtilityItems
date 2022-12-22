# 建材ある？
    execute store success score $hold ui_temp run clear @s oak_planks 0

# どっち？
    scoreboard players set $stat ui_temp 0
    execute if block ^ ^ ^2 #ui:nocol if score $hold ui_temp matches 1 run scoreboard players set $stat ui_temp 1
    execute if block ^ ^ ^2 oak_planks run scoreboard players set $stat ui_temp 2

#
    execute if score $stat ui_temp matches 1 positioned ^ ^ ^2 if block ~1 ~ ~ #ui:nocol if block ~-1 ~ ~ #ui:nocol if block ~ ~1 ~ #ui:nocol if block ~ ~-1 ~ #ui:nocol if block ~ ~ ~1 #ui:nocol if block ~ ~ ~-1 #ui:nocol run scoreboard players set $stat ui_temp 0

#
    execute if score $stat ui_temp matches 1 run setblock ^ ^ ^2 oak_planks replace
    execute if score $stat ui_temp matches 2 run setblock ^ ^ ^2 air replace

# 発動成功
    execute if score $stat ui_temp matches 1..2 run scoreboard players set $success ui_temp 1

#
    execute if score $stat ui_temp matches 1 run clear @s oak_planks 1