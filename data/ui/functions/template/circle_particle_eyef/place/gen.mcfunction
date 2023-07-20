#> ui:template/circle_particle_eyef/place/gen
#
# $temp ui_temp を元に立方体を生成する
#
# @public

summon marker ^ ^ ^ {Tags:["ui_temp_particle","ui_temp_particle1"]}

scoreboard players operation $temp2 ui_temp = $temp ui_temp
execute positioned ^1 ^ ^ run function ui:template/circle_particle_eyef/place/x

execute as @e[tag=ui_temp_particle1] positioned as @s run function ui:template/circle_particle_eyef/place/y.hub