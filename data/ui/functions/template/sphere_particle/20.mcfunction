#> ui:template/sphere_particle/20
#
# 半径20の球形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 41
execute align xyz positioned ~-20.5 ~-20.5 ~-20.5 run function ui:template/sphere_particle/place/gen

#kill @e[tag=ui_temp_particle,distance=..3.7]
kill @e[tag=ui_temp_particle,distance=20.1..]