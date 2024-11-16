execute if score $slot_res ui_temp matches 45 run scoreboard players set @s ui_is 1
execute if score $slot_res ui_temp matches 46 run scoreboard players set @s ui_is 2
execute if score $slot_res ui_temp matches 47 run scoreboard players set @s ui_is 3
execute if score $slot_res ui_temp matches 48 run scoreboard players set @s ui_is 4
execute if score $slot_res ui_temp matches 49 run scoreboard players set @s ui_is 5
execute if score $slot_res ui_temp matches 50 run scoreboard players set @s ui_is 6
execute if score $slot_res ui_temp matches 51 run scoreboard players set @s ui_is 7
execute if score $slot_res ui_temp matches 52 run scoreboard players set @s ui_is 8
execute if score $slot_res ui_temp matches 53 run scoreboard players set @s ui_is 9
execute if score $slot_res ui_temp matches 45..53 run scoreboard players set @s ui_is2 -1
execute if score $slot_res ui_temp matches 45..53 run scoreboard players set @s ui_is3 1

execute if score $slot_res ui_temp matches ..44 run scoreboard players operation @s ui_is2 = $slot_res ui_temp
execute if score @s ui_is matches 9 if score $slot_res ui_temp matches 36 if score @s ui_is3 matches 2.. run scoreboard players remove @s ui_is3 1
execute if score @s ui_is matches 9 if score $slot_res ui_temp matches 44 run scoreboard players add @s ui_is3 1

execute if score @s ui_is matches 9 if score $slot_res ui_temp matches 38 run scoreboard players set $slot_res ui_temp -2
execute if score @s ui_is matches 9 if score $slot_res ui_temp matches 39 run scoreboard players set $slot_res ui_temp -3