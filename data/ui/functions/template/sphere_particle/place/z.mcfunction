summon marker ~ ~ ~ {Tags:["ui_temp_particle"]}
scoreboard players remove $temp2 ui_temp 1
execute if score $temp2 ui_temp matches 1.. positioned ~ ~ ~1 run function ui:template/sphere_particle/place/z