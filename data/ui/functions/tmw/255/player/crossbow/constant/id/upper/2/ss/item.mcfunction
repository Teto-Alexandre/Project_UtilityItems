scoreboard players set $temp ui_temp 0
execute store result score $temp ui_temp run data get entity @s Item.tag.glitch
scoreboard players operation @s ui_tmw255_state_glitch += $temp ui_temp

execute if score @s ui_tmw255_state_glitch matches 1.. if predicate ui:percentage/1 as @e[predicate=ui:load_unhurtable,distance=..5] run scoreboard players add @s ui_tmw255_state_glitch 1
execute if score @s ui_tmw255_state_glitch matches 10.. if predicate ui:percentage/1 as @e[predicate=ui:load_unhurtable,distance=..10] run scoreboard players add @s ui_tmw255_state_glitch 2
execute if score @s ui_tmw255_state_glitch matches 100.. if predicate ui:percentage/1 as @e[predicate=ui:load_unhurtable,distance=..15] run scoreboard players add @s ui_tmw255_state_glitch 3
execute if score @s ui_tmw255_state_glitch matches 1000.. if predicate ui:percentage/1 as @e[predicate=ui:load_unhurtable,distance=..20] run scoreboard players add @s ui_tmw255_state_glitch 4

execute if score @s ui_tmw255_state_glitch matches 100.. run particle dust 1 0 1 1 ~ ~ ~ 0.2 0.2 0.2 0 1 force
execute if score @s ui_tmw255_state_glitch matches 100.. run particle dust 0 0 0 1 ~ ~ ~ 0.2 0.2 0.2 0 1 force
execute if score @s ui_tmw255_state_glitch matches 100.. run particle dust 1 0 1 1 ~ ~ ~ 0.4 0.4 0.4 0 5 force
execute if score @s ui_tmw255_state_glitch matches 100.. run particle dust 0 0 0 1 ~ ~ ~ 0.4 0.4 0.4 0 5 force

execute if score @s ui_tmw255_state_glitch matches 2000.. run kill @s
