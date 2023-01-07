execute store success score $success.temp ui_temp run clear @s command_block{tmw:{id:1016}} 0
scoreboard players operation $success.section ui_temp += $success.temp ui_temp
execute if score $success.section ui_temp matches 1.. run clear @s command_block{tmw:{id:1016}} 2
execute unless score $success.section ui_temp matches 1.. run scoreboard players set $success.section ui_temp 0
