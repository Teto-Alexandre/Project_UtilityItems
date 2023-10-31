execute store result score $count ui_temp run data get entity @s Inventory[{Slot:-106b}].Count
item replace entity @s weapon.offhand with air
execute if score $count ui_temp matches 64.. run give @s gold_nugget 64
execute if score $count ui_temp matches 64.. run scoreboard players remove $count ui_temp 64
execute if score $count ui_temp matches 32.. run give @s gold_nugget 32
execute if score $count ui_temp matches 32.. run scoreboard players remove $count ui_temp 32
execute if score $count ui_temp matches 16.. run give @s gold_nugget 16
execute if score $count ui_temp matches 16.. run scoreboard players remove $count ui_temp 16
execute if score $count ui_temp matches 8.. run give @s gold_nugget 8
execute if score $count ui_temp matches 8.. run scoreboard players remove $count ui_temp 8
execute if score $count ui_temp matches 4.. run give @s gold_nugget 4
execute if score $count ui_temp matches 4.. run scoreboard players remove $count ui_temp 4
execute if score $count ui_temp matches 2.. run give @s gold_nugget 2
execute if score $count ui_temp matches 2.. run scoreboard players remove $count ui_temp 2
execute if score $count ui_temp matches 1.. run give @s gold_nugget 1
execute if score $count ui_temp matches 1.. run scoreboard players remove $count ui_temp 1
