# ヴォイド

# 装着時演出
execute if entity @s[tag=tmw601_changed] run particle dust 0 0 0 1 ~ ~0.1 ~ 0.4 0.1 0.4 0 25
execute if entity @s[tag=tmw601_changed] run playsound block.beacon.deactivate player @a ~ ~ ~ 0.6 1.5

#
execute store result score $fall ui_temp run data get entity @s FallDistance
execute if score $fall ui_temp matches 10.. run scoreboard players set $count ui_temp 10
execute if score $fall ui_temp matches 10.. positioned ~ ~ ~ run function ui:tmw/601/feet/5/act