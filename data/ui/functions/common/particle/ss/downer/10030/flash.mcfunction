#
tag @e[tag=ui_temp_target] remove ui_temp_target
tag @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,distance=..10,sort=nearest,limit=1] add ui_temp_target
execute facing entity @e[tag=ui_temp_target] eyes run teleport @s ~ ~ ~ ~ ~

data merge storage ui:common {input:{Mode:"create",Var:25,Var2:4}}
execute at @s run function ui:common/particle

execute at @s positioned ^ ^ ^0.2 run particle minecraft:dust 1 0.8 0 0.8 ~ ~ ~ 0.5 0.5 0.5 0 15

execute at @s positioned ^ ^ ^0.2 run playsound block.respawn_anchor.set_spawn player @a ~ ~ ~ 0.8 1.8 0
execute at @s positioned ^ ^ ^0.2 run playsound entity.iron_golem.hurt player @a ~ ~ ~ 0.8 0.5 0

execute at @s run function ui:common/particle/ss/downer/10030/laser/move_straight

execute if entity @s[tag=ui_temp_hit] at @s facing entity @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,limit=1] eyes run function ui:common/particle/ss/downer/10030/laser/manual
execute if entity @s[tag=ui_temp_hit] as @e[predicate=ui:load_unhurtable,tag=!ui_temp_teamm,sort=nearest,limit=1] at @s run function ui:common/particle/ss/downer/10030/damage1
