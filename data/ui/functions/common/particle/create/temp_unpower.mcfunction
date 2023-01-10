# 弾にデータを込める
execute unless score $id ui_temp matches 0 run scoreboard players operation @s ui_id = $id ui_temp
execute unless score $team ui_temp matches 0 run scoreboard players operation @s ui_team = $team ui_temp
scoreboard players operation @s ui_gpc = $input ui_temp
scoreboard players set @s ui_is 0
scoreboard players set @s ui_is2 0
execute if data storage ui:common input.Var2 store result score @s ui_is2 run data get storage ui:common input.Var2
teleport @s ~ ~ ~ ~ ~