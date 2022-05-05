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
execute if score $temp ui_temp matches 16 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/16
execute if score $temp ui_temp matches 17 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/17
execute if score $temp ui_temp matches 18 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/18
execute if score $temp ui_temp matches 19 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. if score @s ui_paint matches 400.. at @s run function ui:tmw/15/19
execute if score $temp ui_temp matches 19 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. if score @s ui_paint matches ..399 at @s run playsound block.dispenser.fail player @a ~ ~ ~ 1 1.2 0
execute if score $temp ui_temp matches 14 at @s run particle witch ^ ^ ^6 0 0 0 0.1 1 normal @s
execute if score $temp ui_temp matches 26 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/26
execute if score $temp ui_temp matches 27 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/27
execute if score $temp ui_temp matches 28 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. at @s run function ui:tmw/15/28
execute if score $temp ui_temp matches 29 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. if score @s ui_paint matches 400.. at @s run function ui:tmw/15/29
execute if score $temp ui_temp matches 29 as @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. if score @s ui_paint matches ..399 at @s run playsound block.dispenser.fail player @a ~ ~ ~ 1 1.2 0

#=======================================================================================================