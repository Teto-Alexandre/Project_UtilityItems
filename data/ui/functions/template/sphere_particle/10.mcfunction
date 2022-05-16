#> ui:template/sphere_particle/10
#
# 半径10の球形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 21
execute align xyz positioned ~-10.5 ~-10.5 ~-10.5 run function ui:template/sphere_particle/place/gen

#kill @e[tag=ui_temp_particle,distance=..3.7]
kill @e[tag=ui_temp_particle,distance=10.1..]