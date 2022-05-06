#> ui:template/sphere_particle/3.2
#
# 半径3.2の球形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 6
execute positioned ~-3 ~-3 ~-3 run function ui:template/sphere_particle/place/gen

#kill @e[tag=ui_temp_particle,distance=..2.7]
kill @e[tag=ui_temp_particle,distance=3.2..]