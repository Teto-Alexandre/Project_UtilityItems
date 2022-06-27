#> ui:template/sphere_particle/1.5
#
# 半径2の球形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 4
execute align xyz positioned ~-2 ~-2 ~-2 run function ui:template/sphere_particle/place/gen

kill @e[tag=ui_temp_particle,distance=1.6..]