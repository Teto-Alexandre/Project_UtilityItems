#
execute if entity @a[tag=ui_temp_player,scores={ui_tmw601_accessory=5005}] run scoreboard players set $boost ui_temp 1
#execute if score $boost ui_temp matches 1 run 

#
execute if score @s ui_is2 matches 1 if score $is ui_temp matches 1 run scoreboard players set $count ui_temp 0
execute if score @s ui_is2 matches 1 at @s if score $is ui_temp matches 1 unless block ~ ~ ~ #ui:nocol run function ui:common/particle/ss/downer/10018/inblock
execute if score @s ui_is2 matches 1 if score $is ui_temp matches 1 run scoreboard players set $count ui_temp 0
execute if score @s ui_is2 matches 1 at @s if score $is ui_temp matches 1 if block ~ ~-0.1 ~ #ui:nocol run function ui:common/particle/ss/downer/10018/inair
execute if score @s ui_is2 matches 1 at @s if score $is ui_temp matches 1 run function ui:common/particle/ss/downer/10033/particle/flag
execute if score @s ui_is2 matches 1 at @s if score $is ui_temp matches 1 run function ui:common/particle/ss/downer/10033/particle/flag_hit
execute if score @s ui_is2 matches 1 at @s if score $is ui_temp matches 1 run playsound ui:sword player @a ~ ~ ~ 1 2

#
execute if score @s ui_is2 matches 2 at @s if score $is ui_temp matches 1 run function ui:common/particle/ss/downer/10033/particle/cross
execute if score @s ui_is2 matches 2 at @s if score $is ui_temp matches 1 run function ui:common/particle/ss/downer/10033/particle/cross_hit
execute if score @s ui_is2 matches 2 at @s if score $is ui_temp matches 1 run playsound block.bell.use player @a ~ ~ ~ 2 0.6
execute if score @s ui_is2 matches 2 at @s if score $is ui_temp matches 1 run playsound minecraft:block.amethyst_cluster.break player @a ~ ~ ~ 2 0.5

#
execute if score $is ui_temp matches 1.. run kill @s