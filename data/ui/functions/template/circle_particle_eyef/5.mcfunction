#> ui:template/circle_particle_eyef/5
#
# 半径5の円形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 11
execute align xyz positioned ^-5.5 ^-5.5 ^ run function ui:template/circle_particle_eyef/place/gen

#kill @e[tag=ui_temp_particle,distance=..3.7]
kill @e[tag=ui_temp_particle,distance=5.1..]