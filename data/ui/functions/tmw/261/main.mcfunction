# 自動松明
scoreboard players set $success ui_temp 0
execute store success score $temp ui_temp run clear @s torch 0
execute if entity @s[gamemode=!spectator,gamemode=!adventure] if predicate ui:light0 if score $temp ui_temp matches 1 if score $success ui_temp matches 0 if block ~ ~-0.1 ~ #ui:opacity store success score $success ui_temp run setblock ~ ~ ~ torch keep
execute if entity @s[gamemode=!spectator,gamemode=!adventure] if predicate ui:light0 if score $temp ui_temp matches 1 if score $success ui_temp matches 0 if block ~0.5 ~ ~ #ui:opacity store success score $success ui_temp run setblock ~ ~ ~ wall_torch[facing=west] keep
execute if entity @s[gamemode=!spectator,gamemode=!adventure] if predicate ui:light0 if score $temp ui_temp matches 1 if score $success ui_temp matches 0 if block ~-0.5 ~ ~ #ui:opacity store success score $success ui_temp run setblock ~ ~ ~ wall_torch[facing=east] keep
execute if entity @s[gamemode=!spectator,gamemode=!adventure] if predicate ui:light0 if score $temp ui_temp matches 1 if score $success ui_temp matches 0 if block ~ ~ ~0.5 #ui:opacity store success score $success ui_temp run setblock ~ ~ ~ wall_torch[facing=north] keep
execute if entity @s[gamemode=!spectator,gamemode=!adventure] if predicate ui:light0 if score $temp ui_temp matches 1 if score $success ui_temp matches 0 if block ~ ~ ~-0.5 #ui:opacity store success score $success ui_temp run setblock ~ ~ ~ wall_torch[facing=south] keep

#
execute if score $success ui_temp matches 1 run clear @s torch 1
execute if score $success ui_temp matches 1 run playsound block.wood.place player @a ~ ~ ~ 1 1
