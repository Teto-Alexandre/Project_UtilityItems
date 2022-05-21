# 進路レーンを敷設する
    execute align xyz positioned ~0.5 ~ ~0.5 positioned ~1 ~ ~ if block ~ ~-1 ~ pink_concrete run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_4","ui_17_4_temp","ui_17_4_they","ui_17_4_aqua"]}
    execute align xyz positioned ~0.5 ~ ~0.5 positioned ~-1 ~ ~ if block ~ ~-1 ~ pink_concrete run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_4","ui_17_4_temp","ui_17_4_they","ui_17_4_aqua"]}
    execute align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~ ~1 if block ~ ~-1 ~ pink_concrete run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_4","ui_17_4_temp","ui_17_4_they","ui_17_4_aqua"]}
    execute align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~ ~-1 if block ~ ~-1 ~ pink_concrete run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_4","ui_17_4_temp","ui_17_4_they","ui_17_4_aqua"]}
    execute align xyz positioned ~0.5 ~ ~0.5 positioned ~1 ~ ~ if block ~ ~-1 ~ light_blue_concrete run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_4","ui_17_4_temp","ui_17_4_they","ui_17_4_pink"]}
    execute align xyz positioned ~0.5 ~ ~0.5 positioned ~-1 ~ ~ if block ~ ~-1 ~ light_blue_concrete run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_4","ui_17_4_temp","ui_17_4_they","ui_17_4_pink"]}
    execute align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~ ~1 if block ~ ~-1 ~ light_blue_concrete run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_4","ui_17_4_temp","ui_17_4_they","ui_17_4_pink"]}
    execute align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~ ~-1 if block ~ ~-1 ~ light_blue_concrete run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_4","ui_17_4_temp","ui_17_4_they","ui_17_4_pink"]}
    execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_4","ui_17_4_temp","ui_17_4_they","ui_17_4_mid"]}
    setblock ~ ~-1 ~ white_concrete
    execute as @e[tag=ui_17_4_temp] run scoreboard players operation @s ui_id = $id ui_temp
    tag @e[tag=ui_17_4_temp] remove ui_17_4_temp