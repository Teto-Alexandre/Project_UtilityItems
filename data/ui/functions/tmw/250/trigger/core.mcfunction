#トリガーオン

#
execute if score @s ui_trg matches 1 run function ui:tmw/250/trigger/activate/main

execute if score @s ui_trg matches 2 run execute at @e[tag=tmw_250_2] run fill ~-1 ~2 ~-1 ~1 ~2 ~1 white_wool

execute if score @s ui_trg matches 3 run tag @e[tag=tmw_250_2,tag=!stone,limit=6,sort=random] add stone
execute if score @s ui_trg matches 3 run execute at @e[tag=stone] run fill ~-1 ~2 ~-1 ~1 ~3 ~1 stone
#execute if score @s ui_trg matches 3 run execute as @e[tag=stone] at @s positioned ~3 ~ ~ if entity @e[tag=stone,distance=..1] at @s run fill ~1 ~2 ~ ~2 ~2 ~ diamond_block
#execute if score @s ui_trg matches 3 run execute as @e[tag=stone] at @s positioned ~-3 ~ ~ if entity @e[tag=stone,distance=..1] at @s run fill ~-1 ~2 ~ ~-2 ~2 ~ diamond_block
#execute if score @s ui_trg matches 3 run execute as @e[tag=stone] at @s positioned ~ ~ ~3 if entity @e[tag=stone,distance=..1] at @s run fill ~ ~2 ~1 ~ ~2 ~2 diamond_block
#execute if score @s ui_trg matches 3 run execute as @e[tag=stone] at @s positioned ~ ~ ~-3 if entity @e[tag=stone,distance=..1] at @s run fill ~ ~2 ~-1 ~ ~2 ~-2 diamond_block
#execute if score @s ui_trg matches 3 run execute as @e[tag=stone] at @s positioned ~3 ~ ~ if entity @e[tag=stone,distance=..1] at @s positioned ~ ~ ~3 if entity @e[tag=stone,distance=..1] at @s positioned ~3 ~ ~3 if entity @e[tag=stone,distance=..1] at @s run fill ~1 ~2 ~1 ~2 ~2 ~2 gold_block
execute if score @s ui_trg matches 3 run execute as @e[tag=stone] at @s positioned ~3 ~ ~ if entity @e[tag=stone,distance=..1] at @s run fill ~-1 ~4 ~-1 ~4 ~4 ~1 cobblestone
execute if score @s ui_trg matches 3 run execute as @e[tag=stone] at @s positioned ~-3 ~ ~ if entity @e[tag=stone,distance=..1] at @s run fill ~1 ~4 ~1 ~-4 ~4 ~-1 cobblestone
execute if score @s ui_trg matches 3 run execute as @e[tag=stone] at @s positioned ~ ~ ~3 if entity @e[tag=stone,distance=..1] at @s run fill ~-1 ~4 ~-1 ~1 ~4 ~4 cobblestone
execute if score @s ui_trg matches 3 run execute as @e[tag=stone] at @s positioned ~ ~ ~-3 if entity @e[tag=stone,distance=..1] at @s run fill ~1 ~4 ~1 ~-1 ~4 ~-4 cobblestone
execute if score @s ui_trg matches 3 run execute as @e[tag=stone] at @s positioned ~3 ~ ~ if entity @e[tag=stone,distance=..1] at @s positioned ~ ~ ~3 if entity @e[tag=stone,distance=..1] at @s positioned ~3 ~ ~3 if entity @e[tag=stone,distance=..1] at @s run fill ~-1 ~5 ~-1 ~4 ~5 ~4 stone

execute if score @s ui_trg matches 4 run execute at @e[tag=tmw_250_2,limit=50,sort=random] run fill ~ ~2 ~ ~ ~2 ~ oak_planks replace white_wool

execute if score @s ui_trg matches 5 run fill ~ ~1 ~ ~ ~ ~ air
execute if score @s ui_trg matches 5 run setblock ~ ~1 ~ minecraft:structure_block[mode=save]{author:"teto",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"ui:temp",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:32,sizeY:32,sizeZ:32}
execute if score @s ui_trg matches 5 run setblock ~ ~ ~ minecraft:redstone_block

execute if score @s ui_trg matches 6 run fill ~ ~1 ~ ~ ~ ~ air
execute if score @s ui_trg matches 6 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"teto",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"LEFT_RIGHT",mode:"LOAD",name:"ui:temp",posX:0,posY:2,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:32,sizeY:32,sizeZ:32}
execute if score @s ui_trg matches 6 run setblock ~ ~1 ~ minecraft:redstone_block

execute if score @s ui_trg matches 99 run execute at @e[tag=tmw_250_2] run fill ~-1 ~2 ~-1 ~1 ~10 ~1 air
execute if score @s ui_trg matches 99 run kill @e[tag=tmw_250]

#
execute if score @s ui_trg matches 1.. run playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 0.8 0
execute if score @s ui_trg matches 1.. run scoreboard players set @s ui_trg 0