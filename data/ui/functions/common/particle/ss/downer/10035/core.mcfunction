#
scoreboard players set $boost ui_temp 0
#execute if entity @a[tag=ui_temp_player,scores={ui_tmw601_accessory=5005}] run scoreboard players set $boost ui_temp 1
#execute if score $boost ui_temp matches 1 run 

#
execute if score @s ui_is2 matches 1 at @s if score $is ui_temp matches ..20 run function ui:common/particle/ss/upper/25/9_3
execute if score @s ui_is2 matches 1 at @s if score $is ui_temp matches 21.. run function ui:common/particle/ss/downer/10035/flash

execute if score @s ui_is2 matches 1 if score $is ui_temp matches 21.. run kill @s

#
#execute if score @s ui_is2 matches 2 at @s if score $is ui_temp matches 1 run function ui:common/particle/ss/downer/10035/particle/cross
#execute if score @s ui_is2 matches 2 at @s if score $is ui_temp matches 1 run function ui:common/particle/ss/downer/10035/particle/cross_hit
#execute if score @s ui_is2 matches 2 at @s if score $is ui_temp matches 1 run playsound block.bell.use player @a ~ ~ ~ 2 0.6
#execute if score @s ui_is2 matches 2 at @s if score $is ui_temp matches 1 run playsound minecraft:block.amethyst_cluster.break player @a ~ ~ ~ 2 0.5
