#
data merge storage ui:common {input:{Mode:"create",Var:25,Var2:1}}
execute at @s run function ui:common/particle

execute at @s positioned ^ ^ ^0.2 run particle minecraft:dust 1 0.8 0 1 ~ ~ ~ 0.6 0.6 0.6 0 30

execute at @s positioned ^ ^ ^0.2 run playsound block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 1.5 0
execute at @s positioned ^ ^ ^0.2 run playsound entity.iron_golem.hurt player @a ~ ~ ~ 1 0.5 0

execute at @s run function ui:common/particle/ss/downer/10028/laser/move_straight

execute if entity @s[tag=ui_temp_hit] at @s facing entity @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,limit=1] eyes run function ui:common/particle/ss/downer/10028/laser/manual
execute if entity @s[tag=ui_temp_hit] at @e[tag=ui_temp_damage] run function ui:common/particle/ss/downer/10028/damage1
tag @e remove ui_temp_damage
