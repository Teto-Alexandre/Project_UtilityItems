execute store success score $success.temp ui_temp run clear @s cobblestone 0
scoreboard players operation $success.section ui_temp += $success.temp ui_temp
execute store success score $success.temp ui_temp run clear @s gunpowder 0
scoreboard players operation $success.section ui_temp += $success.temp ui_temp
execute if score $success.section ui_temp matches 2.. run clear @s cobblestone 1
execute if score $success.section ui_temp matches 2.. run clear @s gunpowder 1
execute unless score $success.section ui_temp matches 2.. run scoreboard players set $success.section ui_temp 0
