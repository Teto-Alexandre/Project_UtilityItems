# 繋がってるかどうか
    scoreboard players set $stat ui_temp 1
    execute if block ~1 ~ ~ #ui:nocol if block ~-1 ~ ~ #ui:nocol if block ~ ~1 ~ #ui:nocol if block ~ ~-1 ~ #ui:nocol if block ~ ~ ~1 #ui:nocol if block ~ ~ ~-1 #ui:nocol run scoreboard players set $stat ui_temp 0

#
    execute if score $stat ui_temp matches 1 run function ui:tmw/15/20.2green
    execute if score $stat ui_temp matches 0 run function ui:tmw/15/20.2red
