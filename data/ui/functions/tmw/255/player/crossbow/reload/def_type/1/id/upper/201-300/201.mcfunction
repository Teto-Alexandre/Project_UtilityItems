execute store result score $success.section ui_temp run clear @s command_block{tmw:{id:1016}} 1
#execute if score $success.section ui_temp matches 0 store result score $success.section ui_temp run clear @s soul_soil 1
#execute if score $success.section ui_temp matches 0 store result score $success.section ui_temp run clear @s soul_sand 1

execute unless score $success.section ui_temp matches 1.. run scoreboard players set $success.section ui_temp 0
