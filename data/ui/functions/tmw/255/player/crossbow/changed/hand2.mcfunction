# インクとスペが0になってクールタイム20を加算
tellraw @s ["",{"text":"System","color":"gray"},{"text":">> ","color":"red"},{"text":"使用武器の変更にはペナルティが伴います","color":"gray"}]
tellraw @s ["",{"text":"System","color":"gray"},{"text":">> ","color":"red"},{"text":"死亡時を考慮しホットバー１番に装備することを推奨します","color":"gray"}]
scoreboard players set $ink ui_temp 0
scoreboard players set @s ui_paint 0
scoreboard players operation $cooltime ui_temp = $time ui_temp
scoreboard players add $cooltime ui_temp 100
execute at @s run particle large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.05 10 force
execute at @s run playsound block.redstone_torch.burnout player @a ~ ~ ~ 2 0.8 0
execute store result score $lasttime ui_temp run time query gametime
