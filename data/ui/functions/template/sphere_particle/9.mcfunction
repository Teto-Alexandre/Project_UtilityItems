#> ui:template/sphere_particle/9
#
# 半径9の球形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 19
execute align xyz positioned ~-9.5 ~-9.5 ~-9.5 run function ui:template/sphere_particle/place/gen

kill @e[tag=ui_temp_particle,distance=9.1..]