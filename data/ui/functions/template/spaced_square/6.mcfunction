kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 7
execute positioned ~ ~ ~ run function ui:template/spaced_square/place/gen
