execute unless score @s ui_obj_id matches -2147483648..2147483647 run function ui:misc/act/make_obj_id

scoreboard players operation #apostle ui_world = @s ui_obj_id

tellraw @a [{"text":"ParadiseLost","color":"gray"},{"text":"> ","color":"green"},{"selector":"@s"},{"text":"が新たな"},{"text":"使徒","color":"aqua"},{"text":"に選ばれました"}]

tag @s add ui_temp_obj