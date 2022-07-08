# インクとスペが0になってクールタイム20を加算
scoreboard players set $ink ui_temp 0
scoreboard players set @s ui_paint 0
scoreboard players operation $cooltime ui_temp = $time ui_temp
scoreboard players add $cooltime ui_temp 20
execute at @s run particle large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.05 10 force
execute at @s run playsound block.redstone_torch.burnout player @a ~ ~ ~ 2 0.8 0
execute store result score $lasttime ui_temp run time query gametime
