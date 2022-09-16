#> ui:template/sphere_particle/30
#
# 半径30の球形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 61
execute align xyz positioned ~-30.5 ~-30.5 ~-30.5 run function ui:template/sphere_particle/place/gen

#kill @e[tag=ui_temp_particle,distance=..3.7]
kill @e[tag=ui_temp_particle,distance=30.1..]