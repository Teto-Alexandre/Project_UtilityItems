teleport @s ~ ~ ~ facing entity @e[tag=ui_temp_target,limit=1] eyes
execute unless score @s ui_is2 matches 1.. unless entity @e[tag=ui_temp_target,distance=..5] at @s run summon marker ^ ^ ^1.02 {Tags:["ui_temp_square_shuffle"]}
execute if score @s ui_is2 matches 1.. unless entity @e[tag=ui_temp_target,distance=..5] at @s run summon marker ^ ^ ^5 {Tags:["ui_temp_square_shuffle"]}
execute unless entity @e[tag=ui_temp_target,distance=..5] as @e[tag=ui_temp_square_shuffle] run function ui:template/square_shuffle
execute unless entity @e[tag=ui_temp_target,distance=..5] run teleport @s ~ ~ ~ facing entity @e[tag=ui_temp_square_shuffle,limit=1] feet
execute unless entity @e[tag=ui_temp_target,distance=..5] run kill @e[tag=ui_temp_square_shuffle]
execute if entity @e[tag=ui_temp_target,distance=..5] run teleport @s ~ ~ ~ facing entity @e[tag=ui_temp_target,limit=1] eyes
scoreboard players set $count ui_temp 10
execute if score @s ui_is2 matches 1.. run scoreboard players add $count ui_temp 25
function ui:common/particle/ss/downer/10027/laser/move.lp