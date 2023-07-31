#

#
scoreboard players operation $is_temp ui_temp = $is ui_temp
scoreboard players operation $is_temp ui_temp %= #8 ui_num
scoreboard players operation $is_temp2 ui_temp = $is ui_temp
scoreboard players operation $is_temp2 ui_temp %= #200 ui_num

#
#data merge storage ui:common {input:{Mode:"orbit",Num:1,Offset:0}}
#execute store result storage ui:common input.Offset int 2 run scoreboard players get $is ui_temp
#function ui:common/formation/

#
tag @s add ui_temp_particle_core
execute unless score $is_temp2 ui_temp matches 40..129 if score $is ui_temp matches ..960 if score $is_temp ui_temp matches 0 run function ui:common/particle/ss/downer/10024/eye1
execute if score $is_temp2 ui_temp matches 40..129 if score $is ui_temp matches ..960 if score $is_temp ui_temp matches 0 run function ui:common/particle/ss/downer/10024/eye1red
execute facing entity @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,distance=..150,sort=nearest,limit=1] eyes run summon marker ^ ^ ^5 {Tags:["ui_temp_tracker"]}
execute unless entity @e[tag=ui_temp_tracker] run summon marker ~ ~ ~ {Tags:["ui_temp_tracker"]}
#execute facing entity @p eyes run summon marker ^ ^ ^5 {Tags:["ui_temp_tracker"]}
execute store result entity @e[tag=ui_temp_tracker,limit=1] Pos[1] double 0.1 run data get entity @s Pos[1] 10
execute if score $is_temp ui_temp matches 4 at @e[tag=ui_temp_tracker] run function ui:common/particle/ss/downer/10024/eye2
kill @e[tag=ui_temp_tracker]
tag @s remove ui_temp_particle_core

#
execute if score $is_temp2 ui_temp matches 45..110 if score $is ui_temp matches ..960 as @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,distance=..150,sort=nearest,limit=1] at @s run particle dust 1 0 0 1 ~ ~3 ~ 1 0 0 0 5 force
execute if score $is_temp2 ui_temp matches 45..110 if score $is ui_temp matches ..960 as @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,distance=..150,sort=nearest,limit=1] at @s run particle dust 1 0 0 1 ~ ~3 ~ 0 0 1 0 5 force
execute if score $is_temp2 ui_temp matches 50 if score $is ui_temp matches ..960 as @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,distance=..150,sort=nearest,limit=1] at @s run playsound block.portal.trigger player @a ~ ~ ~ 1.5 1.5 0
execute if score $is_temp2 ui_temp matches 110 if score $is ui_temp matches ..960 as @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,distance=..150,sort=nearest,limit=1] at @s run function ui:common/particle/ss/downer/10024/damage1

#
execute if score $is ui_temp matches 1000.. run kill @s
