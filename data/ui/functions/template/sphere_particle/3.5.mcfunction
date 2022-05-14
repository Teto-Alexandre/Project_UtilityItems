#> ui:template/sphere_particle/3.5
#
# 半径3.5の球形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 8
execute align xyz positioned ~-4 ~-4 ~-4 run function ui:template/sphere_particle/place/gen

kill @e[tag=ui_temp_particle,distance=3.6..]