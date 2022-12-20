execute store result score $type ui_temp run data get entity @s SelectedItem.tag.tmw.type

scoreboard players set $success ui_temp 0

execute if score $type ui_temp matches 1 if score @s ui_use1 matches 1.. unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/1
execute if score $type ui_temp matches 2 if score @s ui_use1 matches 1.. unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/2
execute if score $type ui_temp matches 3 if score @s ui_use1 matches 1.. unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/3
execute if score $type ui_temp matches 7 if score @s ui_use1 matches 1.. unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/7
execute if score $type ui_temp matches 8 if score @s ui_use1 matches 1.. unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/8
execute if score $type ui_temp matches 9 if score @s ui_use1 matches 1.. unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/9
execute if score $type ui_temp matches 10 if score @s ui_use1 matches 1.. unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/10
execute if score $type ui_temp matches 11 if score @s ui_use1 matches 1.. unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/11
execute if score $type ui_temp matches 12 if score @s ui_use1 matches 1.. unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/12
execute if score $type ui_temp matches 13 if score @s ui_use1 matches 1.. unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/13
execute if score $type ui_temp matches 14 if score @s ui_use1 matches 1.. unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/14
execute if score $type ui_temp matches 14 at @s run particle witch ^ ^ ^6 0 0 0 0.1 1 normal @s
execute if score $type ui_temp matches 15 if score @s ui_use1 matches 1.. unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/15

execute if score $success ui_temp matches 1 at @s run function ui:common/cooltime
