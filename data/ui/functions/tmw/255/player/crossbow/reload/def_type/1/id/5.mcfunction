execute store success score $success.temp ui_temp run clear @s iron_ingot 0
scoreboard players operation $success.section ui_temp += $success.temp ui_temp
execute store success score $success.temp ui_temp run clear @s redstone_block 0
scoreboard players operation $success.section ui_temp += $success.temp ui_temp
execute if score $success.section ui_temp matches 2.. run clear @s iron_ingot 1
execute if score $success.section ui_temp matches 2.. run clear @s redstone_block 1
execute unless score $success.section ui_temp matches 2.. run scoreboard players set $success.section ui_temp 0
