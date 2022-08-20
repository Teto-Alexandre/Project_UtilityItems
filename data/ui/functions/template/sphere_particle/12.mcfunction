#> ui:template/sphere_particle/12
#
# 半径12の球形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 25
execute align xyz positioned ~-12.5 ~-12.5 ~-12.5 run function ui:template/sphere_particle/place/gen

#kill @e[tag=ui_temp_particle,distance=..3.7]
kill @e[tag=ui_temp_particle,distance=12.1..]