# 出力
tellraw @s ["",{"text":"System","color":"gray"},{"text":">> ","color":"red"},{"text":"副武装の装備は認められていません","color":"gray"}]
item replace entity @s container.35 from entity @s weapon.offhand
item replace entity @s weapon.offhand with air
execute at @s run particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.05 5 force @s
execute at @s run playsound block.redstone_torch.burnout player @s ~ ~ ~ 1 0.8 0
execute store result score $cooltime ui_temp run time query gametime
scoreboard players add $cooltime ui_temp 100
scoreboard players set $changed ui_temp 1