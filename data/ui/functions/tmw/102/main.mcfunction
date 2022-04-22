#=======================================================================================

execute as @s[scores={ui_st=0,ui_use1=1..}] unless score @s ui_ct matches 1.. at @s run function ui:tmw/102/ranged
execute as @s[scores={ui_st=1..,ui_use1=1..}] unless score @s ui_ct matches 1.. at @s run function ui:tmw/102/ranged2

#=======================================================================================