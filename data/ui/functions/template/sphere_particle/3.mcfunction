#> ui:template/sphere_particle/3
#
# 半径3の球形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 7
execute align xyz positioned ~-3.5 ~-3.5 ~-3.5 run function ui:template/sphere_particle/place/gen

#kill @e[tag=ui_temp_particle,distance=..2.7]
kill @e[tag=ui_temp_particle,distance=3.1..]