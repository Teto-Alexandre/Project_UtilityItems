#
tag @e[tag=ui_temp_target] remove ui_temp_target
execute positioned ^ ^ ^25 run tag @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,distance=..40,sort=nearest,limit=1] add ui_temp_target
teleport @s ~ ~ ~ facing entity @e[tag=ui_temp_target,limit=1] eyes
execute at @s run teleport @s ^ ^ ^1 ~ ~
summon marker ~ ~ ~ {Tags:["ui_temp_particle_10031_position"]}

data merge storage ui:common {input:{Mode:"create",Var:25,Var2:1}}
execute at @s run function ui:common/particle
data merge storage ui:common {input:{Mode:"create",Var:25,Var2:2}}
execute at @s run function ui:common/particle
data merge storage ui:common {input:{Mode:"create",Var:25,Var2:3}}
execute at @s run function ui:common/particle

execute at @s positioned ^ ^ ^0.2 run particle minecraft:dust 1 0.8 0 2 ~ ~ ~ 0.5 0.5 0.5 0 15
execute at @s positioned ^ ^ ^0.2 run particle minecraft:dust 1 0.8 0 1 ~ ~ ~ 1.5 1.5 1.5 0 50

execute at @s positioned ^ ^ ^0.2 run playsound block.respawn_anchor.set_spawn player @a ~ ~ ~ 1.5 1.8 0
execute at @s positioned ^ ^ ^0.2 run playsound entity.iron_golem.hurt player @a ~ ~ ~ 1.5 0.5 0

execute at @s run function ui:common/particle/ss/downer/10031/laser/move_straight
execute unless entity @s[tag=ui_temp_hit] at @s run function ui:common/particle/ss/downer/10031/laser/move
execute unless entity @s[tag=ui_temp_hit] at @s run function ui:common/particle/ss/downer/10031/laser/move
execute unless entity @s[tag=ui_temp_hit] at @s run function ui:common/particle/ss/downer/10031/laser/move
execute unless entity @s[tag=ui_temp_hit] at @s run function ui:common/particle/ss/downer/10031/laser/move
execute unless entity @s[tag=ui_temp_hit] at @s run function ui:common/particle/ss/downer/10031/laser/move
execute unless entity @s[tag=ui_temp_hit] at @s run function ui:common/particle/ss/downer/10031/laser/move
execute unless entity @s[tag=ui_temp_hit] at @s run function ui:common/particle/ss/downer/10031/laser/move
execute unless entity @s[tag=ui_temp_hit] at @s run function ui:common/particle/ss/downer/10031/laser/move
execute unless entity @s[tag=ui_temp_hit] at @s run function ui:common/particle/ss/downer/10031/laser/move
execute unless entity @s[tag=ui_temp_hit] at @s run function ui:common/particle/ss/downer/10031/laser/move
execute unless entity @s[tag=ui_temp_hit] at @s run function ui:common/particle/ss/downer/10031/laser/move
execute unless entity @s[tag=ui_temp_hit] at @s run function ui:common/particle/ss/downer/10031/laser/move
execute unless entity @s[tag=ui_temp_hit] at @s run function ui:common/particle/ss/downer/10031/laser/move

#tellraw @a [{"score":{"name": "@s","objective": "ui_team"},"color": "aqua"},{"score":{"name": "@s","objective": "ui_id"},"color": "green"}]

execute at @s facing entity @e[tag=ui_temp_target,limit=1] eyes run function ui:common/particle/ss/downer/10031/laser/manual
execute at @e[tag=ui_temp_damage] run function ui:common/particle/ss/downer/10031/damage1

tag @e[tag=ui_temp_target] remove ui_temp_target
tag @e[tag=ui_temp_damage] remove ui_temp_damage
