#> ui:template/sphere_particle/4.2
#
# 半径4.2の球形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 8
execute positioned ~-4 ~-4 ~-4 run function ui:template/sphere_particle/place/gen

#kill @e[tag=ui_temp_particle,distance=..3.7]
kill @e[tag=ui_temp_particle,distance=4.2..]