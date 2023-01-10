#

#
execute if score $is ui_temp matches 1.. run function ui:common/particle/ss/upper/10/animate
execute if score $is ui_temp matches 1.. rotated ~90 ~ run function ui:common/particle/ss/upper/10/animate
execute if score $is ui_temp matches 1.. rotated ~180 ~90 run function ui:common/particle/ss/upper/10/animate
execute if score $is ui_temp matches 1.. rotated ~-90 ~-90 run function ui:common/particle/ss/upper/10/animate
execute if score $is ui_temp matches 7 run particle explosion ~ ~ ~ 0 0 0 0 1 force
execute if score $is ui_temp matches 7 run playsound entity.generic.explode player @a ~ ~ ~ 1 1.8 0
execute at @s run execute store result score $temp ui_temp run gamerule mobGriefing
execute if score $is ui_temp matches 7 if score $temp ui_temp matches 1 positioned ~-0.5 ~-0.5 ~-0.5 unless block ~ ~ ~ #ui:nobreak unless block ~ ~ ~ #ui:super_hard unless block ~ ~ ~ #ui:liq run setblock ~ ~ ~ air destroy
execute if score $is ui_temp matches 7 if score $temp ui_temp matches 1 positioned ~0.5 ~-0.5 ~-0.5 unless block ~ ~ ~ #ui:nobreak unless block ~ ~ ~ #ui:super_hard unless block ~ ~ ~ #ui:liq run setblock ~ ~ ~ air destroy
execute if score $is ui_temp matches 7 if score $temp ui_temp matches 1 positioned ~-0.5 ~0.5 ~-0.5 unless block ~ ~ ~ #ui:nobreak unless block ~ ~ ~ #ui:super_hard unless block ~ ~ ~ #ui:liq run setblock ~ ~ ~ air destroy
execute if score $is ui_temp matches 7 if score $temp ui_temp matches 1 positioned ~0.5 ~0.5 ~-0.5 unless block ~ ~ ~ #ui:nobreak unless block ~ ~ ~ #ui:super_hard unless block ~ ~ ~ #ui:liq run setblock ~ ~ ~ air destroy
execute if score $is ui_temp matches 7 if score $temp ui_temp matches 1 positioned ~-0.5 ~-0.5 ~0.5 unless block ~ ~ ~ #ui:nobreak unless block ~ ~ ~ #ui:super_hard unless block ~ ~ ~ #ui:liq run setblock ~ ~ ~ air destroy
execute if score $is ui_temp matches 7 if score $temp ui_temp matches 1 positioned ~0.5 ~-0.5 ~0.5 unless block ~ ~ ~ #ui:nobreak unless block ~ ~ ~ #ui:super_hard unless block ~ ~ ~ #ui:liq run setblock ~ ~ ~ air destroy
execute if score $is ui_temp matches 7 if score $temp ui_temp matches 1 positioned ~-0.5 ~0.5 ~0.5 unless block ~ ~ ~ #ui:nobreak unless block ~ ~ ~ #ui:super_hard unless block ~ ~ ~ #ui:liq run setblock ~ ~ ~ air destroy
execute if score $is ui_temp matches 7 if score $temp ui_temp matches 1 positioned ~0.5 ~0.5 ~0.5 unless block ~ ~ ~ #ui:nobreak unless block ~ ~ ~ #ui:super_hard unless block ~ ~ ~ #ui:liq run setblock ~ ~ ~ air destroy
execute if score $is ui_temp matches 7 as @e[distance=..2.5,predicate=ui:load_unhurtable] at @s run function ui:common/particle/ss/upper/10/explode
execute if score $is ui_temp matches 7 as @e[distance=..2.5,predicate=ui:load_unhurtable] run scoreboard players add @s tds_fire 10
execute if score $is ui_temp matches 11.. run kill @s