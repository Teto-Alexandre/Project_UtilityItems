#
    scoreboard players operation $x ui_temp = @s ui_pos_x_core_relative
    scoreboard players operation $y ui_temp = @s ui_pos_y_core_relative
    scoreboard players operation $z ui_temp = @s ui_pos_z_core_relative

# 周囲の鉄ブロックに防具立てを配置する
    execute positioned ~1 ~ ~ if block ~ ~ ~ iron_block unless entity @e[tag=tmw_268,distance=..0.5] run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["tmw_268","tmw_268_parts","tmw_268_iron","tmw_268_active","tmw_268_active1","ui_temp_unpower"],Passengers:[{id:"shulker",NoAI:1b,Silent:1b,Tags:["tmw_268","ui_temp_unpower"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:iron_block"},transformation: {left_rotation: {angle:0,axis:[0,0,0]}, translation: [-0.50f, 0.0f, -0.50f], right_rotation: {angle:0f,axis:[0,1,0]}, scale: [1.0f, 1.0f, 1.0f]},Tags:["tmw_268","ui_temp_unpower"]}]}
    execute positioned ~-1 ~ ~ if block ~ ~ ~ iron_block unless entity @e[tag=tmw_268,distance=..0.5] run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["tmw_268","tmw_268_parts","tmw_268_iron","tmw_268_active","tmw_268_active1","ui_temp_unpower"],Passengers:[{id:"shulker",NoAI:1b,Silent:1b,Tags:["tmw_268","ui_temp_unpower"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:iron_block"},transformation: {left_rotation: {angle:0,axis:[0,0,0]}, translation: [-0.50f, 0.0f, -0.50f], right_rotation: {angle:0f,axis:[0,1,0]}, scale: [1.0f, 1.0f, 1.0f]},Tags:["tmw_268","ui_temp_unpower"]}]}
    execute positioned ~ ~1 ~ if block ~ ~ ~ iron_block unless entity @e[tag=tmw_268,distance=..0.5] run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["tmw_268","tmw_268_parts","tmw_268_iron","tmw_268_active","tmw_268_active1","ui_temp_unpower"],Passengers:[{id:"shulker",NoAI:1b,Silent:1b,Tags:["tmw_268","ui_temp_unpower"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:iron_block"},transformation: {left_rotation: {angle:0,axis:[0,0,0]}, translation: [-0.50f, 0.0f, -0.50f], right_rotation: {angle:0f,axis:[0,1,0]}, scale: [1.0f, 1.0f, 1.0f]},Tags:["tmw_268","ui_temp_unpower"]}]}
    execute positioned ~ ~-1 ~ if block ~ ~ ~ iron_block unless entity @e[tag=tmw_268,distance=..0.5] run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["tmw_268","tmw_268_parts","tmw_268_iron","tmw_268_active","tmw_268_active1","ui_temp_unpower"],Passengers:[{id:"shulker",NoAI:1b,Silent:1b,Tags:["tmw_268","ui_temp_unpower"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:iron_block"},transformation: {left_rotation: {angle:0,axis:[0,0,0]}, translation: [-0.50f, 0.0f, -0.50f], right_rotation: {angle:0f,axis:[0,1,0]}, scale: [1.0f, 1.0f, 1.0f]},Tags:["tmw_268","ui_temp_unpower"]}]}
    execute positioned ~ ~ ~1 if block ~ ~ ~ iron_block unless entity @e[tag=tmw_268,distance=..0.5] run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["tmw_268","tmw_268_parts","tmw_268_iron","tmw_268_active","tmw_268_active1","ui_temp_unpower"],Passengers:[{id:"shulker",NoAI:1b,Silent:1b,Tags:["tmw_268","ui_temp_unpower"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:iron_block"},transformation: {left_rotation: {angle:0,axis:[0,0,0]}, translation: [-0.50f, 0.0f, -0.50f], right_rotation: {angle:0f,axis:[0,1,0]}, scale: [1.0f, 1.0f, 1.0f]},Tags:["tmw_268","ui_temp_unpower"]}]}
    execute positioned ~ ~ ~-1 if block ~ ~ ~ iron_block unless entity @e[tag=tmw_268,distance=..0.5] run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["tmw_268","tmw_268_parts","tmw_268_iron","tmw_268_active","tmw_268_active1","ui_temp_unpower"],Passengers:[{id:"shulker",NoAI:1b,Silent:1b,Tags:["tmw_268","ui_temp_unpower"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:iron_block"},transformation: {left_rotation: {angle:0,axis:[0,0,0]}, translation: [-0.50f, 0.0f, -0.50f], right_rotation: {angle:0f,axis:[0,1,0]}, scale: [1.0f, 1.0f, 1.0f]},Tags:["tmw_268","ui_temp_unpower"]}]}

#
    execute as @e[tag=ui_temp_unpower,tag=tmw_268_parts,distance=..1.1] run scoreboard players operation @s ui_pos_x_core_relative = $x ui_temp
    execute as @e[tag=ui_temp_unpower,tag=tmw_268_parts,distance=..1.1] run scoreboard players operation @s ui_pos_y_core_relative = $y ui_temp
    execute as @e[tag=ui_temp_unpower,tag=tmw_268_parts,distance=..1.1] run scoreboard players operation @s ui_pos_z_core_relative = $z ui_temp

    execute positioned ~1 ~ ~ as @e[tag=ui_temp_unpower,tag=tmw_268_parts,distance=..0.5] run scoreboard players add @s ui_pos_x_core_relative 1
    execute positioned ~-1 ~ ~ as @e[tag=ui_temp_unpower,tag=tmw_268_parts,distance=..0.5] run scoreboard players remove @s ui_pos_x_core_relative 1
    execute positioned ~ ~1 ~ as @e[tag=ui_temp_unpower,tag=tmw_268_parts,distance=..0.5] run scoreboard players add @s ui_pos_y_core_relative 1
    execute positioned ~ ~-1 ~ as @e[tag=ui_temp_unpower,tag=tmw_268_parts,distance=..0.5] run scoreboard players remove @s ui_pos_y_core_relative 1
    execute positioned ~ ~ ~1 as @e[tag=ui_temp_unpower,tag=tmw_268_parts,distance=..0.5] run scoreboard players add @s ui_pos_z_core_relative 1
    execute positioned ~ ~ ~-1 as @e[tag=ui_temp_unpower,tag=tmw_268_parts,distance=..0.5] run scoreboard players remove @s ui_pos_z_core_relative 1
    
    execute as @e[tag=ui_temp_unpower] run scoreboard players operation @s ui_obj_id = $obj_id ui_temp

#
    tag @s add ui_temp_powered

#
    #scoreboard players operation @e[tag=ui_temp_unpower] ui_is = $obj_id ui_temp
    #execute as @e[tag=ui_temp_unpower] run function ui:misc/act/make_obj_id

#
    tag @e[tag=ui_temp_unpower] remove ui_temp_unpower

#
    execute as @e[tag=tmw_268,tag=!ui_temp_powered,limit=1] at @s run function ui:tmw/268/root/round_place.diamond