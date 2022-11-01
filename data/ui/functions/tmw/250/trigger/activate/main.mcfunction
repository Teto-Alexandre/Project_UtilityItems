#防具立てを展開する

#
execute positioned ~ ~ ~ run function ui:template/spaced_square/6

execute at @e[tag=ui_temp_particle] run summon armor_stand ~ ~ ~ {Tags:["tmw_250","tmw_250_2"]}
kill @e[tag=ui_temp_particle]