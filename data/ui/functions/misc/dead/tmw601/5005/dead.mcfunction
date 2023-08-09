# データ検出
execute as @e[predicate=ui:load_unhurtable] if score @s ui_obj_id = #apostle ui_world run tag @s add ui_temp_obj

gamerule showDeathMessages false

execute if entity @e[tag=ui_temp_obj] run tellraw @a ["",{"selector":"@e[tag=ui_temp_obj]"},{"text":"は主と共に消滅した","color":"white"}]
data merge storage ui:common {input:{Mode:"create",Var:-10033,Var2:2,Num:1}}
execute as @e[tag=ui_temp_obj] at @s run function ui:common/particle
kill @e[tag=ui_temp_obj]

gamerule showDeathMessages true

tag @a[tag=ui_temp_obj] remove ui_temp_obj