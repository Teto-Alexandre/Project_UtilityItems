summon marker ~ ~ ~ {Tags:["ui_temp_particle","ui_temp_particle1"]}
scoreboard players remove $temp2 ui_temp 1
execute if score $temp2 ui_temp matches 1.. positioned ~3 ~ ~ run function ui:template/spaced_square/place/x