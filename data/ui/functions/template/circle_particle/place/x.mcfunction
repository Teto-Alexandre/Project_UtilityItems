summon marker ~ ~ ~ {Tags:["ui_temp_particle","ui_temp_particle1"]}
scoreboard players remove $temp2 ui_temp 1
execute if score $temp2 ui_temp matches 1.. positioned ~1 ~ ~ run function ui:template/circle_particle/place/x