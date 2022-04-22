#=======================================================================================================

#即席ブロック
execute as @s[tag=ui_1] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["ui_1_2"]}
execute as @s[tag=ui_1] at @s run function ui:ui/1/ss

execute as @s[tag=ui_2] at @s run clone ~-2 ~-3 ~-2 ~2 ~1 ~2 ~-2 ~38 ~-2 masked normal

execute as @s[tag=ui_3] at @s run fill ~-2 ~ ~-2 ~2 ~4 ~2 stone_bricks replace #ui:nocol
execute as @s[tag=ui_3] at @s run fill ~-1 ~5 ~-2 ~1 ~9 ~2 stone_bricks replace #ui:nocol
execute as @s[tag=ui_3] at @s run fill ~-2 ~5 ~-1 ~2 ~9 ~1 stone_bricks replace #ui:nocol
execute as @s[tag=ui_3] at @s run fill ~-1 ~10 ~-1 ~1 ~14 ~1 stone_bricks replace #ui:nocol
execute as @s[tag=ui_3] at @s run fill ~ ~14 ~ ~ ~14 ~ iron_block replace stone_bricks
execute at @s[tag=ui_3] as @p run teleport @s ~ ~15 ~

execute as @s[tag=ui_4] at @s run fill ~-1 ~ ~-1 ~1 ~11 ~1 oak_planks replace #ui:nocol
execute as @s[tag=ui_4] at @s run fill ~ ~1 ~ ~ ~9 ~ air replace oak_planks
execute as @s[tag=ui_4] at @s run fill ~ ~11 ~ ~ ~11 ~ birch_planks replace oak_planks
execute at @s[tag=ui_4] as @p run teleport @s ~ ~12 ~

execute as @s[tag=ui_5] at @s run fill ~ ~ ~ ~ ~ ~ furnace[lit=true]{CustomName:'{"text":"NovaFurnace","color":"green","italic":false}'} replace #ui:nocol
execute as @s[tag=ui_5] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["ui_5_1"]}
execute as @s[tag=ui_5] at @s run function ui:ui/5/ss

execute as @s[tag=ui_6] at @s run fill ~-1 198 ~-1 ~1 199 ~1 dirt replace #ui:nocol
execute as @s[tag=ui_6] at @s run fill ~-1 200 ~-1 ~1 200 ~1 grass_block replace #ui:nocol
execute at @s[tag=ui_6] as @p run teleport @s ~ 201 ~

execute as @s[tag=ui_7] at @s run fill ~-1 ~ ~-1 ~1 ~2 ~1 stone replace #ui:nocol

execute as @s[tag=ui_8] at @s run fill ~ ~ ~ ~ ~ ~ end_stone replace #ui:nocol
execute as @s[tag=ui_8] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["ui_8_1"]}
execute as @s[tag=ui_8] at @s run function ui:ui/8/ss

execute as @s[tag=ui_9] at @s run fill ~ ~ ~ ~ ~ ~ end_stone_bricks replace #ui:nocol
execute as @s[tag=ui_9] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["ui_9_1"]}
execute as @s[tag=ui_9] at @s run function ui:ui/9/ss

execute as @s[tag=ui_10] at @s run fill ~-2 ~-2 ~-2 ~2 ~-1 ~2 end_stone_bricks hollow
execute as @s[tag=ui_10] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 end_portal hollow
execute as @s[tag=ui_10] at @s run playsound block.end_portal.spawn block @a ~ ~ ~
execute as @s[tag=ui_10] at @s run particle large_smoke ~ ~1 ~ 1 0.6 1 0 15 force

execute as @s[tag=ui_11] at @s run summon arrow ~ ~0.1 ~ {Motion:[0.0d,-5.0d,0.0d],Tags:["ui_egg","ui_11_2"]}
execute as @s[tag=ui_11_2,nbt={inGround:1b}] at @s run stopsound @p neutral entity.arrow.hit
execute as @s[tag=ui_11_2,nbt={inGround:1b}] at @s run summon item ~ ~-0.1 ~ {Tags:["ui_11_3"],Item:{id:"stone",Count:1b}}
execute as @s[tag=ui_11_2,nbt={inGround:1b}] at @s run data modify entity @e[tag=ui_11_3,sort=nearest,limit=1] Item.id set from entity @e[tag=ui_11_2,sort=nearest,limit=1] inBlockState.Name
execute as @s[tag=ui_11_2,nbt={inGround:1b}] at @s run data modify entity @e[tag=ui_11_3,sort=nearest,limit=1] Item.tag.BlockEntityTag set from block ~ ~-0.5 ~
execute as @s[tag=ui_11_2,nbt={inGround:1b}] at @s run playsound block.amethyst_block.break block @a ~ ~ ~
execute as @s[tag=ui_11_2,nbt={inGround:1b}] at @s run particle large_smoke ~ ~1 ~ 1 0.6 1 0 15 force
execute as @s[tag=ui_11_2,nbt={inGround:1b}] at @s run setblock ~ ~-0.5 ~ air replace

execute as @s[tag=ui_12] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Tags:["ui_12_1"]}
execute as @s[tag=ui_12] at @s run playsound entity.painting.place player @a ~ ~ ~
execute as @s[tag=ui_12] at @s run particle large_smoke ~ ~1 ~ 0.3 0.6 0.3 0 15 force
execute as @s[tag=ui_12] at @s run function ui:ui/12/ss

execute as @s[tag=ui_13] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["ui_13_1","ui_13_temp"]}
execute as @s[tag=ui_13] at @s run scoreboard players operation @e[tag=ui_13_temp] ui_id = @p ui_id
execute as @s[tag=ui_13] at @s run tag @e[tag=ui_13_temp] remove ui_13_temp
execute as @s[tag=ui_13] at @s run playsound entity.illusioner.mirror_move player @a ~ ~ ~ 1 0.7
execute as @s[tag=ui_13] at @s run particle wax_off ~ ~1 ~ 0.3 0.6 0.3 0.1 15 force
execute as @s[tag=ui_13] at @s run function ui:ui/13/ss

execute as @s[tag=ui_14] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["ui_14_1","ui_14_temp"]}
execute as @s[tag=ui_14] at @s run function ui:ui/14/ss

execute as @s[tag=ui_15] at @s run summon minecraft:boat ~ ~ ~ {Tags:["ui_15_1","ui_15_temp"],Type:"birch",Passengers:[{id:"armor_stand",Marker:1b,NoGravity:1b,Invisible:1b,Tags:["ui_15_2","ui_15_temp"]}]}
execute as @s[tag=ui_15] at @s run function ui:ui/15/ss

execute as @s[tag=ui_16] at @s run setblock ~ ~ ~ cauldron destroy
execute as @s[tag=ui_16] at @s run setblock ~ ~1 ~ cauldron destroy
execute as @s[tag=ui_16] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:132003,ui16:{type:0,amount:0}}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_16_1"]}
execute as @s[tag=ui_16] at @s run playsound block.glass.place block @a ~ ~ ~ 1 1 0
execute as @s[tag=ui_16] at @s run function ui:ui/16/ss

teleport @s 0 -200 0
kill @s

#=======================================================================================================
