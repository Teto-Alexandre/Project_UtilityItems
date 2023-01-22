execute store success score $success.temp ui_temp run clear @s coal_block 0
scoreboard players operation $success.section ui_temp += $success.temp ui_temp

execute if score $success.section ui_temp matches 1.. run clear @s coal_block 1
execute unless score $success.section ui_temp matches 1.. run scoreboard players set $success.section ui_temp 0
