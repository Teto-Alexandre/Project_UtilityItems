# 弾にデータを込める
scoreboard players operation @s ui_hpart = $particle.end ui_temp
scoreboard players operation @s ui_bm = $speed ui_temp
scoreboard players operation @s ui_bm += $speed.add ui_temp
scoreboard players operation @s ui_br = $range ui_temp
execute if score $spread ui_temp matches 1.. run function ui:tmw/237/attack/missile/square_shuffle
scoreboard players operation @s ui_gpc = $obj_id ui_temp
scoreboard players operation @s ui_dmg = $damage ui_temp
scoreboard players operation @s ui_id = $id ui_temp
scoreboard players operation @s ui_team = $team ui_temp
data modify entity @s ArmorItems.[0].tag.display.Name set from storage ui:temp temp.Name
execute positioned as @s run teleport @s ~ ~ ~ ~ ~
tag @s remove ui_temp_unpower