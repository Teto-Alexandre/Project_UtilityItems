# バルカンもどき

#
execute if score $TurretPlace ui_temp matches 1 run summon iron_golem ~ ~ ~ {Tags:["tmw_270","tmw_270_hitbox","ui_temp_this","tds_nolog"],NoAI:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:20000,ShowParticles:false}],DeathLootTable:"none",Attributes:[{Name:"generic.max_health",Base:1000}],Health:1000f,Silent:1}
execute if score $TurretPlace ui_temp matches 1 run summon armor_stand ~ ~ ~ {Tags:["tmw_270","tmw_270_display1","ui_temp_this"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:192011}}]}
execute if score $TurretPlace ui_temp matches 1 run summon armor_stand ~ ~ ~ {Tags:["tmw_270","tmw_270_display2","ui_temp_this"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:192012}}]}
execute if score $TurretPlace ui_temp matches 1 positioned ~ ~0.15625 ~ run summon armor_stand ~ ~ ~ {Tags:["tmw_270","tmw_270_display3","ui_temp_this"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:192013}}]}
execute if score $TurretPlace ui_temp matches 2 positioned ~ ~-1 ~ run summon iron_golem ~ ~0.3 ~ {Tags:["tmw_270","tmw_270_ud","tmw_270_hitbox","ui_temp_this","tds_nolog"],NoAI:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:20000,ShowParticles:false}],DeathLootTable:"none",Attributes:[{Name:"generic.max_health",Base:1000}],Health:1000f,Silent:1}
execute if score $TurretPlace ui_temp matches 2 positioned ~ ~-1 ~ run summon armor_stand ~ ~0.125 ~ {Tags:["tmw_270","tmw_270_ud","tmw_270_display1","ui_temp_this"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:192011}}]}
execute if score $TurretPlace ui_temp matches 2 positioned ~ ~-1 ~ run summon armor_stand ~ ~0.125 ~ {Tags:["tmw_270","tmw_270_ud","tmw_270_display2","ui_temp_this"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:192012}}]}
execute if score $TurretPlace ui_temp matches 2 positioned ~ ~-1 ~ positioned ~ ~-0.15625 ~ run summon armor_stand ~ ~0.125 ~ {Tags:["tmw_270","tmw_270_ud","tmw_270_display3","ui_temp_this"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:192013}}]}
#idコピー
execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_obj_id = $obj_id ui_temp
execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_id = $id ui_temp
execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_team = $team ui_temp
tag @e[tag=ui_temp_this] remove ui_temp_this