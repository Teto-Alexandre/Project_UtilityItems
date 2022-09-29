#> ui:template/sphere_particle/5.5
#
# 半径5.5の球形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 12
execute align xyz positioned ~-6 ~-6 ~-6 run function ui:template/sphere_particle/place/gen

#kill @e[tag=ui_temp_particle,distance=..3.7]
kill @e[tag=ui_temp_particle,distance=5.6..]