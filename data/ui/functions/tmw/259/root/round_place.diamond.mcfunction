# 周囲の鉄ブロックに防具立てを配置する
    execute rotated 0 0 positioned ^ ^-0.5 ^1 if block ~ ~ ~ iron_block run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["tmw_259","tmw_259_active","tmw_259_active1","ui_temp_unpower"],Rotation:[0.0f,0.0f]}
    execute rotated 90 0 positioned ^ ^-0.5 ^1 if block ~ ~ ~ iron_block run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["tmw_259","tmw_259_active","tmw_259_active1","ui_temp_unpower"],Rotation:[90.0f,0.0f]}
    execute rotated 180 0 positioned ^ ^-0.5 ^1 if block ~ ~ ~ iron_block run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["tmw_259","tmw_259_active","tmw_259_active1","ui_temp_unpower"],Rotation:[180.0f,0.0f]}
    execute rotated -90 0 positioned ^ ^-0.5 ^1 if block ~ ~ ~ iron_block run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["tmw_259","tmw_259_active","tmw_259_active1","ui_temp_unpower"],Rotation:[-90.0f,0.0f]}
    execute rotated 0 0 positioned ^ ^-0.5 ^1 if block ~ ~ ~ gold_block run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["tmw_259","tmw_259_active","tmw_259_active2","ui_temp_unpower"],Rotation:[0.0f,0.0f]}
    execute rotated 90 0 positioned ^ ^-0.5 ^1 if block ~ ~ ~ gold_block run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["tmw_259","tmw_259_active","tmw_259_active2","ui_temp_unpower"],Rotation:[90.0f,0.0f]}
    execute rotated 180 0 positioned ^ ^-0.5 ^1 if block ~ ~ ~ gold_block run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["tmw_259","tmw_259_active","tmw_259_active2","ui_temp_unpower"],Rotation:[180.0f,0.0f]}
    execute rotated -90 0 positioned ^ ^-0.5 ^1 if block ~ ~ ~ gold_block run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["tmw_259","tmw_259_active","tmw_259_active2","ui_temp_unpower"],Rotation:[-90.0f,0.0f]}
    execute rotated 0 0 positioned ^ ^-0.5 ^1 if block ~ ~ ~ emerald_block run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["tmw_259","tmw_259_active","tmw_259_active3","ui_temp_unpower"],Rotation:[0.0f,0.0f]}
    execute rotated 90 0 positioned ^ ^-0.5 ^1 if block ~ ~ ~ emerald_block run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["tmw_259","tmw_259_active","tmw_259_active3","ui_temp_unpower"],Rotation:[90.0f,0.0f]}
    execute rotated 180 0 positioned ^ ^-0.5 ^1 if block ~ ~ ~ emerald_block run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["tmw_259","tmw_259_active","tmw_259_active3","ui_temp_unpower"],Rotation:[180.0f,0.0f]}
    execute rotated -90 0 positioned ^ ^-0.5 ^1 if block ~ ~ ~ emerald_block run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["tmw_259","tmw_259_active","tmw_259_active3","ui_temp_unpower"],Rotation:[-90.0f,0.0f]}
    execute rotated 0 0 positioned ^ ^-0.5 ^1 if block ~ ~ ~ netherite_block run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["tmw_259","tmw_259_active","tmw_259_active4","ui_temp_unpower"],Rotation:[0.0f,0.0f]}
    execute rotated 90 0 positioned ^ ^-0.5 ^1 if block ~ ~ ~ netherite_block run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["tmw_259","tmw_259_active","tmw_259_active4","ui_temp_unpower"],Rotation:[90.0f,0.0f]}
    execute rotated 180 0 positioned ^ ^-0.5 ^1 if block ~ ~ ~ netherite_block run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["tmw_259","tmw_259_active","tmw_259_active4","ui_temp_unpower"],Rotation:[180.0f,0.0f]}
    execute rotated -90 0 positioned ^ ^-0.5 ^1 if block ~ ~ ~ netherite_block run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["tmw_259","tmw_259_active","tmw_259_active4","ui_temp_unpower"],Rotation:[-90.0f,0.0f]}
    execute rotated 0 0 positioned ^ ^-0.5 ^1 if block ~ ~ ~ bedrock run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["tmw_259","tmw_259_active","tmw_259_active_cant","ui_temp_unpower"],Rotation:[0.0f,0.0f]}
    execute rotated 90 0 positioned ^ ^-0.5 ^1 if block ~ ~ ~ bedrock run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["tmw_259","tmw_259_active","tmw_259_active_cant","ui_temp_unpower"],Rotation:[90.0f,0.0f]}
    execute rotated 180 0 positioned ^ ^-0.5 ^1 if block ~ ~ ~ bedrock run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["tmw_259","tmw_259_active","tmw_259_active_cant","ui_temp_unpower"],Rotation:[180.0f,0.0f]}
    execute rotated -90 0 positioned ^ ^-0.5 ^1 if block ~ ~ ~ bedrock run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["tmw_259","tmw_259_active","tmw_259_active_cant","ui_temp_unpower"],Rotation:[-90.0f,0.0f]}

#
    scoreboard players operation @e[tag=ui_temp_unpower] ui_is = $obj_id ui_temp
    execute as @e[tag=ui_temp_unpower] run function ui:misc/act/make_obj_id

#
    tag @e[tag=ui_temp_unpower] remove ui_temp_unpower
