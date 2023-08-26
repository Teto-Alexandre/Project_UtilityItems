kill @e[type=minecraft:shulker]
kill @e[type=minecraft:area_effect_cloud]
kill @e[type=minecraft:item]

scoreboard players set $temp2 rot -2
execute as @e[type=block_display] run function ui:template/block_display/test

effect give @e invisibility 200000 0 true