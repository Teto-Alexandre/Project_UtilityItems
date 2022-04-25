#=======================================================================================================

execute store result score $temp ui_temp run data get entity @s SelectedItem.tag.tmw.type
execute if score $temp ui_temp matches 1 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/1
execute if score $temp ui_temp matches 2 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/2
execute if score $temp ui_temp matches 3 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/3
execute if score $temp ui_temp matches 4 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/4
execute if score $temp ui_temp matches 5 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/5
execute if score $temp ui_temp matches 6 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/6
execute if score $temp ui_temp matches 7 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/7
execute if score $temp ui_temp matches 8 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/8
execute if score $temp ui_temp matches 9 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/9
execute if score $temp ui_temp matches 10 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/10
execute if score $temp ui_temp matches 11 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/11
execute if score $temp ui_temp matches 12 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/12
execute if score $temp ui_temp matches 13 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/13
execute if score $temp ui_temp matches 14 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/14
execute if score $temp ui_temp matches 15 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/15
execute if score $temp ui_temp matches 14 at @s run particle witch ^ ^ ^6 0 0 0 0.1 1 normal @s

#=======================================================================================================