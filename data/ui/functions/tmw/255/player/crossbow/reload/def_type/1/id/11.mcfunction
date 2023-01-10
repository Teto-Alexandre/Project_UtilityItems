execute store success score $success.temp ui_temp run clear @s paper 0
scoreboard players operation $success.section ui_temp += $success.temp ui_temp
execute store success score $success.temp ui_temp run clear @s gold_nugget 0
scoreboard players operation $success.section ui_temp += $success.temp ui_temp
execute store success score $success.temp ui_temp run clear @s rotten_flesh 0
scoreboard players operation $success.section ui_temp += $success.temp ui_temp

execute if score $success.section ui_temp matches 3.. run clear @s paper 1
execute if score $success.section ui_temp matches 3.. run clear @s gold_nugget 1
execute if score $success.section ui_temp matches 3.. run clear @s rotten_flesh 1
execute unless score $success.section ui_temp matches 3.. run scoreboard players set $success.section ui_temp 0
