#> ui:template/circle_particle_eyef/10
#
# 半径10の円形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 21
execute align xyz positioned ^-10.5 ^-10.5 ^ run function ui:template/circle_particle_eyef/place/gen

#kill @e[tag=ui_temp_particle,distance=..3.7]
kill @e[tag=ui_temp_particle,distance=10.1..]