#> ui:template/circle_particle_eyef/20
#
# 半径10の円形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 41
execute align xyz positioned ^-20.5 ^-20.5 ^ run function ui:template/circle_particle_eyef/place/gen

#kill @e[tag=ui_temp_particle,distance=..3.7]
kill @e[tag=ui_temp_particle,distance=20.1..]