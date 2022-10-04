# 着地

#
execute store result score $temp ui_temp run data get entity @s FallDistance
execute if score $temp ui_temp matches 3.. run tag @s add tmw601_1001_fall
execute if entity @s[tag=tmw601_1001_fall,nbt={OnGround:1b}] run function ui:tmw/601/legs/1/act
