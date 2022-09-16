#> ui:template/spaced_square/place/gen
#
# $temp ui_temp を元に立方体を生成する
#
# @public

summon marker ~ ~ ~ {Tags:["ui_temp_particle","ui_temp_particle1"]}

scoreboard players operation $temp2 ui_temp = $temp ui_temp
execute positioned ~3 ~ ~ run function ui:template/spaced_square/place/x

execute as @e[tag=ui_temp_particle1] at @s run function ui:template/spaced_square/place/z.hub