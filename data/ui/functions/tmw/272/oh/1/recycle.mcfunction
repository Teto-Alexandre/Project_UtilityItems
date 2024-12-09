execute store result score $count ui_temp run data get entity @s Inventory[{Slot:-106b}].Count
execute if data entity @s Inventory[{Slot:-106b}].tag.IsCG1 run scoreboard players set $count ui_temp 0
item replace entity @s weapon.offhand with air

execute unless score $count ui_temp matches 1..64 run tellraw @s [{"text":" > ","color": "red"},{"text":"このカードは分解するのに適さないようだ","color": "gray"}]
execute unless score $count ui_temp matches 1..64 run scoreboard players set $count ui_temp 0

execute if score $count ui_temp matches 64.. run give @s gold_nugget{HideFlags:255,display:{Lore:['[{"italic":false,"color":"gray","text":"カードを分解すると得られる"}]'],Name:'[{"italic":false,"color":"gold","text":"汎用通貨"}]'}} 64
execute if score $count ui_temp matches 64.. run scoreboard players remove $count ui_temp 64
execute if score $count ui_temp matches 32.. run give @s gold_nugget{HideFlags:255,display:{Lore:['[{"italic":false,"color":"gray","text":"カードを分解すると得られる"}]'],Name:'[{"italic":false,"color":"gold","text":"汎用通貨"}]'}} 32
execute if score $count ui_temp matches 32.. run scoreboard players remove $count ui_temp 32
execute if score $count ui_temp matches 16.. run give @s gold_nugget{HideFlags:255,display:{Lore:['[{"italic":false,"color":"gray","text":"カードを分解すると得られる"}]'],Name:'[{"italic":false,"color":"gold","text":"汎用通貨"}]'}} 16
execute if score $count ui_temp matches 16.. run scoreboard players remove $count ui_temp 16
execute if score $count ui_temp matches 8.. run give @s gold_nugget{HideFlags:255,display:{Lore:['[{"italic":false,"color":"gray","text":"カードを分解すると得られる"}]'],Name:'[{"italic":false,"color":"gold","text":"汎用通貨"}]'}} 8
execute if score $count ui_temp matches 8.. run scoreboard players remove $count ui_temp 8
execute if score $count ui_temp matches 4.. run give @s gold_nugget{HideFlags:255,display:{Lore:['[{"italic":false,"color":"gray","text":"カードを分解すると得られる"}]'],Name:'[{"italic":false,"color":"gold","text":"汎用通貨"}]'}} 4
execute if score $count ui_temp matches 4.. run scoreboard players remove $count ui_temp 4
execute if score $count ui_temp matches 2.. run give @s gold_nugget{HideFlags:255,display:{Lore:['[{"italic":false,"color":"gray","text":"カードを分解すると得られる"}]'],Name:'[{"italic":false,"color":"gold","text":"汎用通貨"}]'}} 2
execute if score $count ui_temp matches 2.. run scoreboard players remove $count ui_temp 2
execute if score $count ui_temp matches 1.. run give @s gold_nugget{HideFlags:255,display:{Lore:['[{"italic":false,"color":"gray","text":"カードを分解すると得られる"}]'],Name:'[{"italic":false,"color":"gold","text":"汎用通貨"}]'}} 1
execute if score $count ui_temp matches 1.. run scoreboard players remove $count ui_temp 1

