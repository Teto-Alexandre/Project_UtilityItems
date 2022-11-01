#

#
# data merge storage ui:common {input:{Mode:"generate",Size:5,Bomb:1}}
execute store result score $size ui_temp run data get storage ui:common input.Size
execute store result score $num ui_temp run data get storage ui:common input.Bomb

# calc
scoreboard players operation $temp ui_temp = $size ui_temp
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function ui:template/square_particle/place/gen
execute at @e[tag=ui_temp_particle] run setblock ~ ~ ~ glass
execute at @e[tag=ui_temp_particle] run setblock ~ ~1 ~ stone_button[face=floor]
execute at @e[tag=ui_temp_particle] run summon armor_stand ~ ~ ~ {Tags:["ui_common_mine_square"],Marker:1b,NoGravity:1b,Invisible:1b}

scoreboard players operation $calc ui_temp = $size ui_temp
scoreboard players operation $calc ui_temp *= $size ui_temp
scoreboard players operation $num ui_temp < $calc ui_temp
scoreboard players operation $num ui_temp > #1 ui_num

execute if score $num ui_temp matches 1.. run function ui:common/mine_square/generate/loop

function ui:common/mine_square/ss

kill @e[tag=ui_temp_particle]
