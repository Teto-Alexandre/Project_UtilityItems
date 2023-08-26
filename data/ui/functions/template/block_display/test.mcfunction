data modify storage rot: temp set value {block_state:{Name:"minecraft:stone"},transformation: {left_rotation: {angle:0,axis:[1,0,0]}, translation: [-0.5f, -0.5f, 1.5f], right_rotation: {angle:0f,axis:[0,1,0]}, scale: [1.0f, 1.0f, 1.0f]}}
execute store result storage rot: temp.transformation.right_rotation.angle float 0.0003 run data get entity @p Rotation[0]
execute store result storage rot: temp.transformation.left_rotation.angle float 0.0003 run data get entity @p Rotation[1]
execute store result storage rot: temp.transformation.translation[2] float 1 run scoreboard players get $temp2 rot
scoreboard players add $temp2 rot 1
data modify entity @s transformation set from storage rot: temp.transformation

execute at @p anchored eyes run teleport @s ^ ^-0.5 ^ ~ ~
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:32767,Passengers:[{id:"shulker",NoAI:1b,Silent:1b}]}
scoreboard players operation $count rot = $temp2 rot
execute as @e[type=area_effect_cloud,tag=!test] at @p positioned ~ ~-1.625 ~ run function ui:template/block_display/shulker
tag @e[type=area_effect_cloud] add test