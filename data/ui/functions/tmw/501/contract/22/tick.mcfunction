execute store result score $FallDistance ui_temp run data get entity @s FallDistance
execute if score $FallDistance ui_temp matches 20.. run tag @s add tmw_501_22_falling

execute if entity @s[tag=tmw_501_22_falling] run effect give @s resistance 1 127 true
execute if entity @s[tag=tmw_501_22_falling] if score $FallDistance ui_temp matches 0 at @s if block ~ ~0.5 ~ water run tag @s remove tmw_501_22_falling
execute if entity @s[tag=tmw_501_22_falling] if score $FallDistance ui_temp matches 0 at @s unless block ~ ~0.5 ~ water run function ui:tmw/501/contract/22/active

scoreboard players reset $FallDistance ui_temp