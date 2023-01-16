execute store success score $success.temp ui_temp run clear @s paper 0
scoreboard players operation $success.section ui_temp += $success.temp ui_temp
execute store success score $success.temp ui_temp run clear @s gold_ingot 0
scoreboard players operation $success.section ui_temp += $success.temp ui_temp
execute store success score $success.temp ui_temp run clear @s coal 0
scoreboard players operation $success.section ui_temp += $success.temp ui_temp

execute if score $success.section ui_temp matches 3.. run clear @s paper 1
execute if score $success.section ui_temp matches 3.. run clear @s gold_ingot 1
execute if score $success.section ui_temp matches 3.. run clear @s coal 1
execute unless score $success.section ui_temp matches 3.. run scoreboard players set $success.section ui_temp 0
