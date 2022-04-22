attribute @s minecraft:generic.knockback_resistance modifier add 0-0-0-0-1 "NoKB_temp" 1 add
execute at @s run summon minecraft:snowball ~ ~-0.31 ~ {Motion:[0.0,10.0,0.0],Item:{id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{CustomModelData:120003}}}
tag @s add tds_NoKB_temp