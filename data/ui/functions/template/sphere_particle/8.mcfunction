#> ui:template/sphere_particle/8
#
# 半径8の球形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 17
execute align xyz positioned ~-8.5 ~-8.5 ~-8.5 run function ui:template/sphere_particle/place/gen

kill @e[tag=ui_temp_particle,distance=8.1..]