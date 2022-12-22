# 着地

# 装着時演出
execute if entity @s[tag=tmw601_changed] run particle dust 0.5 1 0.5 0.5 ~ ~0.5 ~ 0.4 0.2 0.4 0 25
execute if entity @s[tag=tmw601_changed] run playsound entity.wither.shoot player @a ~ ~ ~ 0.5 1.4

#
execute store result score $temp ui_temp run data get entity @s FallDistance
execute if score $temp ui_temp matches 3.. run tag @s add tmw601_1001_fall
execute if entity @s[tag=tmw601_1001_fall,nbt={OnGround:1b}] run function ui:tmw/601/legs/1/act
