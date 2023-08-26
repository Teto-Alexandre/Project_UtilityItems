# スキルツリーメーカーアクティベート
    scoreboard players operation $obj_id ui_temp = $base ui_obj_id
    summon armor_stand ~ ~-0.5 ~ {Invisible:1b,Tags:["tmw_268","tmw_268_core","tmw_268_active","tmw_268_active1","ui_temp_unpower"]}
    execute as @e[tag=ui_temp_unpower,tag=tmw_268_parts] run scoreboard players set @s ui_pos_x_core_relative 0
    execute as @e[tag=ui_temp_unpower,tag=tmw_268_parts] run scoreboard players set @s ui_pos_y_core_relative 0
    execute as @e[tag=ui_temp_unpower,tag=tmw_268_parts] run scoreboard players set @s ui_pos_z_core_relative 0
    execute as @e[tag=ui_temp_unpower] run function ui:misc/act/make_obj_id
    tag @e[tag=ui_temp_unpower] remove ui_temp_unpower
    summon armor_stand ~ ~-0.5 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["tmw_268","tmw_268_parts","tmw_268_diamond","tmw_268_active","tmw_268_active1","ui_temp_unpower"],Passengers:[{id:"shulker",NoAI:1b,Silent:1b,Tags:["tmw_268","ui_temp_unpower"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:diamond_block"},transformation: {left_rotation: {angle:0,axis:[0,0,0]}, translation: [-0.50f, 0.0f, -0.50f], right_rotation: {angle:0f,axis:[0,1,0]}, scale: [1.0f, 1.0f, 1.0f]},Tags:["tmw_268","ui_temp_unpower"]}]}
    execute as @e[tag=ui_temp_unpower,tag=tmw_268_parts] run scoreboard players set @s ui_pos_x_core_relative 0
    execute as @e[tag=ui_temp_unpower,tag=tmw_268_parts] run scoreboard players set @s ui_pos_y_core_relative 0
    execute as @e[tag=ui_temp_unpower,tag=tmw_268_parts] run scoreboard players set @s ui_pos_z_core_relative 0
    execute as @e[tag=ui_temp_unpower] run scoreboard players operation @s ui_obj_id = $obj_id ui_temp
    tag @e[tag=ui_temp_unpower] remove ui_temp_unpower
    summon armor_stand ~ ~0.5 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["tmw_268","tmw_268_parts","tmw_268_oak_slab","tmw_268_active","tmw_268_active1","ui_temp_unpower"],Passengers:[{id:"minecart",Tags:["tmw_268","ui_temp_unpower","tmw_268_can_ride_on","tmw_268_can_ride_on_master"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:oak_slab"},transformation: {left_rotation: {angle:0,axis:[0,0,0]}, translation: [-0.50f, 0.0f, -0.50f], right_rotation: {angle:0f,axis:[0,1,0]}, scale: [1.0f, 1.0f, 1.0f]},Tags:["tmw_268","ui_temp_unpower"]}]}
    execute as @e[tag=ui_temp_unpower,tag=tmw_268_parts] run scoreboard players set @s ui_pos_x_core_relative 0
    execute as @e[tag=ui_temp_unpower,tag=tmw_268_parts] run scoreboard players set @s ui_pos_y_core_relative 1
    execute as @e[tag=ui_temp_unpower,tag=tmw_268_parts] run scoreboard players set @s ui_pos_z_core_relative 0
    execute as @e[tag=ui_temp_unpower] run scoreboard players operation @s ui_obj_id = $obj_id ui_temp
    tag @e[tag=ui_temp_unpower] remove ui_temp_unpower
    execute as @e[tag=tmw_268,tag=!ui_temp_powered,limit=1] at @s run function ui:tmw/268/root/round_place.diamond
    tellraw @a [{"text":"JointGear","color": "gray"},{"text": "> ","color": "green"},{"text":"oID","color": "gray"},{"score":{"name": "$obj_id","objective": "ui_temp"},"color": "aqua"},{"text":"の機体がビルドされました","color": "gray"}]
    scoreboard players add $tmw268 ui_temp 1
    tellraw @a [{"text":"JointGear","color": "gray"},{"text": "> ","color": "green"},{"text":"世界機体数が","color": "gray"},{"score":{"name": "$tmw268","objective": "ui_temp"},"color": "aqua"},{"text":"になりました","color": "gray"}]
    execute if score $tmw268 ui_temp matches 1 run tellraw @a [{"text":"JointGear","color": "gray"},{"text": "> ","color": "green"},{"text":"tmw268のSSメソッドをロード開始します","color": "gray"}]
    schedule function ui:tmw/268/ss/ 1t replace
    scoreboard players set $changed ui_temp 1
    playsound ui.button.click player @a ~ ~ ~ 1 1 0
    playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 1.4 0

    execute as @e[tag=tmw_268] at @s run setblock ~ ~ ~ air replace
    execute as @e[tag=tmw_268] at @s run teleport @s ~ ~-0.5 ~
    effect give @e[type=shulker] invisibility infinite 0 true