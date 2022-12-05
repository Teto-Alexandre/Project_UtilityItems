#

#
# data merge storage ui:common {input:{Mode:"generate",Size:5,Bomb:1}}
execute store result score $size ui_temp run data get storage ui:common input.Size
execute store result score $num ui_temp run data get storage ui:common input.Bomb
execute store result score $life ui_temp run data get storage ui:common input.Life
execute store result score $ai ui_temp run data get storage ui:common input.AI

# calc
scoreboard players set $check ui_temp 0
scoreboard players remove $size ui_temp 1
scoreboard players operation $temp ui_temp = $size ui_temp
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function ui:template/square_particle/place/gen
execute at @e[tag=ui_temp_particle] unless block ~ ~ ~ #ui:nocol run scoreboard players set $check ui_temp 1
execute if score $check ui_temp matches 0 run function ui:common/mine_square/generate/main.2
execute if score $check ui_temp matches 1 run tellraw @s [{"text":"There are obstacle blocks, please run in a place nothing around"}]

kill @e[tag=ui_temp_particle]
