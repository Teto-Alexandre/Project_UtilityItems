#> ui:template/sphere_particle/4.5
#
# 半径4.5の球形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 10
execute align xyz positioned ~-5 ~-5 ~-5 run function ui:template/sphere_particle/place/gen

kill @e[tag=ui_temp_particle,distance=4.6..]