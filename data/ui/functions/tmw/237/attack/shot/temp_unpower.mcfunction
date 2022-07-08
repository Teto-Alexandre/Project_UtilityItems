# 弾にデータを込める
teleport @s ^ ^ ^1 ~ ~
execute store result score @s ui_bpart run data get storage ui:gun temp2.FlyParticle
execute store result score @s ui_hpart run data get storage ui:gun temp2.EndParticle
scoreboard players operation @s ui_bm = $speed ui_temp
scoreboard players operation @s ui_bm += $speed.add ui_temp
scoreboard players operation @s ui_br = $range ui_temp
scoreboard players operation @s ui_gpc = $rangetype ui_temp
scoreboard players operation @s ui_dmg = $damage ui_temp
scoreboard players set @s ui_bdt 1
scoreboard players operation @s ui_id = $id ui_temp
scoreboard players operation @s ui_team = $team ui_temp
data modify entity @s ArmorItems.[0].tag.display.Name set from storage ui:gun temp.DisplayName
tag @s remove ui_temp_unpower