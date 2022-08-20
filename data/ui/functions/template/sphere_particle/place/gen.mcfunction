#> ui:template/sphere_particle/place/gen
#
# $temp ui_temp を元に立方体を生成する
#
# @public

summon marker ~ ~ ~ {Tags:["ui_temp_particle","ui_temp_particle1","ui_temp_particle2","ui_temp_particle3"]}

scoreboard players operation $temp2 ui_temp = $temp ui_temp
function ui:template/sphere_particle/place/x.hub
scoreboard players operation $temp2 ui_temp = $temp ui_temp
function ui:template/sphere_particle/place/y.hub
scoreboard players operation $temp2 ui_temp = $temp ui_temp
function ui:template/sphere_particle/place/z.hub