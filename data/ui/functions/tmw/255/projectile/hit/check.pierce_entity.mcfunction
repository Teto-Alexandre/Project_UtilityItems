tag @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] add ui_temp_obj

execute as @e[tag=ui_temp_obj,limit=1] unless score @s ui_obj_id matches -2147483648..2147483647 run function ui:misc/act/make_obj_id

execute if score @s ui_proj_stat_pierce_entity.obj_id = @e[tag=ui_temp_obj,limit=1] ui_obj_id run scoreboard players set $check ui_temp 0

scoreboard players operation $display1 ui_temp = @s ui_proj_stat_pierce_entity.obj_id
scoreboard players operation $display2 ui_temp = @e[tag=ui_temp_obj,limit=1] ui_obj_id
scoreboard players operation @s ui_proj_stat_pierce_entity.obj_id = @e[tag=ui_temp_obj,limit=1] ui_obj_id

#tellraw @a [{"text":"Pierce_Collider: "},{"score":{"name": "$display1","objective": "ui_temp"}},{"text":"-"},{"score":{"name": "$display2","objective": "ui_temp"}}]

tag @e[tag=ui_temp_obj] remove ui_temp_obj