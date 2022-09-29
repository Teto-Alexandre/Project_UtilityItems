# 弾にデータを込める
teleport @s ^ ^ ^1 ~ ~
scoreboard players set @s ui_bpart 105
scoreboard players set @s ui_hpart 208
scoreboard players set @s ui_bm 30
scoreboard players set @s ui_br 60
scoreboard players set @s ui_gpc 3
scoreboard players set @s ui_dmg 200
scoreboard players set @s ui_bdt 1
scoreboard players operation @s ui_id = $id ui_temp
scoreboard players operation @s ui_team = $team ui_temp
scoreboard players operation @s ui_is = $temp ui_temp
#tellraw @a [{"score":{"objective":"ui_temp","name":"$temp"}}]
data modify entity @s ArmorItems.[0].tag.display.Name set value '{"text":"ウルトラショット","color":"gold"}'
tag @s remove ui_temp_unpower
scoreboard players add $temp ui_temp 10