#=======================================================================================================

execute as @a[scores={ui_idc=0,ui_trg=..-1}] run function ui:tmw/246/sp/sel_o_o_page

#=======================================================================================================

#必要コスト計算
scoreboard players set @e[tag=ui_base,scores={ui_idc=0}] ui_cost_block 0
execute at @e[tag=ui_d_block,scores={ui_idc=0}] run scoreboard players remove @e[tag=ui_base,scores={ui_idc=0}] ui_cost_block 1
execute at @e[tag=ui_d_glass,scores={ui_idc=0}] run scoreboard players remove @e[tag=ui_base,scores={ui_idc=0}] ui_cost_block 1
execute as @e[tag=ui_base,scores={ui_idc=0}] run scoreboard players operation @s ui_cost_block += @s ui_mana

scoreboard players set @e[tag=ui_base,scores={ui_idc=0}] ui_cost_data 0
execute at @e[tag=ui_d_data,scores={ui_idc=0}] run scoreboard players remove @e[tag=ui_base,scores={ui_idc=0}] ui_cost_data 20
execute as @e[tag=ui_base,scores={ui_idc=0}] run scoreboard players operation @s ui_cost_data += @s ui_mana

scoreboard players set @e[tag=ui_base,scores={ui_idc=0}] ui_cost_mana 0
execute at @e[tag=ui_d_mana,scores={ui_idc=0}] run scoreboard players remove @e[tag=ui_base,scores={ui_idc=0}] ui_cost_mana 100
execute as @e[tag=ui_base,scores={ui_idc=0}] run scoreboard players operation @s ui_cost_mana += @s ui_mana

scoreboard players set @e[tag=ui_base,scores={ui_idc=0}] ui_cost_stone -20
execute at @e[tag=ui_d_stone,scores={ui_idc=0}] run scoreboard players remove @e[tag=ui_base,scores={ui_idc=0}] ui_cost_stone 50
execute as @e[tag=ui_base,scores={ui_idc=0}] run scoreboard players operation @s ui_cost_stone += @s ui_mana

scoreboard players set @e[tag=ui_base,scores={ui_idc=0}] ui_cost_wood -20
execute at @e[tag=ui_d_wood,scores={ui_idc=0}] run scoreboard players remove @e[tag=ui_base,scores={ui_idc=0}] ui_cost_wood 50
execute as @e[tag=ui_base,scores={ui_idc=0}] run scoreboard players operation @s ui_cost_wood += @s ui_mana

scoreboard players set @e[tag=ui_base,scores={ui_idc=0}] ui_cost_stair 0
execute at @e[tag=ui_d_stair,scores={ui_idc=0}] run scoreboard players remove @e[tag=ui_base,scores={ui_idc=0}] ui_cost_stair 10
execute as @e[tag=ui_base,scores={ui_idc=0}] run scoreboard players operation @s ui_cost_stair += @s ui_mana

scoreboard players set @e[tag=ui_base,scores={ui_idc=0}] ui_cost_shield1 0
execute at @e[tag=ui_d_shield1,scores={ui_idc=0}] run scoreboard players remove @e[tag=ui_base,scores={ui_idc=0}] ui_cost_shield1 10
execute as @e[tag=ui_base,scores={ui_idc=0}] run scoreboard players operation @s ui_cost_shield1 += @s ui_mana

#=======================================================================================================

execute as @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=1..2}] if entity @e[tag=ui_base,scores={ui_idc=0,ui_cost_block=..-1}] run kill @s
execute as @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=3}] if entity @e[tag=ui_base,scores={ui_idc=0,ui_cost_data=..-1}] run kill @s
execute as @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=4}] if entity @e[tag=ui_base,scores={ui_idc=0,ui_cost_mana=..-1}] run kill @s
execute as @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=5}] if entity @e[tag=ui_base,scores={ui_idc=0,ui_cost_stone=..-1}] run kill @s
execute as @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=6}] if entity @e[tag=ui_base,scores={ui_idc=0,ui_cost_wood=..-1}] run kill @s
execute as @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=7..10}] if entity @e[tag=ui_base,scores={ui_idc=0,ui_cost_stair=..-1}] run kill @s
execute as @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=11}] if entity @e[tag=ui_base,scores={ui_idc=0,ui_cost_shield1=..-1}] run kill @s

execute as @e[tag=ui_sel_obj2,scores={ui_idc=0}] at @s if entity @a[scores={ui_idc=0,ui_trg=7}] positioned ~ ~9 ~ if entity @e[tag=ui_d,distance=..1] run kill @s
execute as @e[tag=ui_sel_obj2,scores={ui_idc=0}] at @s if entity @a[scores={ui_idc=0,ui_trg=8}] positioned ~ ~-9 ~ if entity @e[tag=ui_d,distance=..1] run kill @s

execute as @e[tag=ui_sel_obj2,scores={ui_idc=0}] at @s if entity @a[scores={ui_idc=0,ui_trg=9}] positioned ~ ~9 ~ if entity @e[tag=ui_d,distance=..1] run kill @s
execute as @e[tag=ui_sel_obj2,scores={ui_idc=0}] at @s if entity @a[scores={ui_idc=0,ui_trg=9}] positioned ~ ~18 ~ if entity @e[tag=ui_d,distance=..1] run kill @s
execute as @e[tag=ui_sel_obj2,scores={ui_idc=0}] at @s if entity @a[scores={ui_idc=0,ui_trg=10}] positioned ~ ~-9 ~ if entity @e[tag=ui_d,distance=..1] run kill @s
execute as @e[tag=ui_sel_obj2,scores={ui_idc=0}] at @s if entity @a[scores={ui_idc=0,ui_trg=10}] positioned ~ ~-18 ~ if entity @e[tag=ui_d,distance=..1] run kill @s

#=======================================================================================================

execute as @e[tag=ui_base,scores={ui_idc=0}] at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=1}] run setblock ~ ~ ~ structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:-4,posY:-4,posZ:-4,sizeX:9,sizeY:9,sizeZ:9,name:"ui:block"}
execute as @e[tag=ui_base,scores={ui_idc=0}] at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=1}] run scoreboard players operation @s ui_mana = @s ui_cost_block

execute as @e[tag=ui_base,scores={ui_idc=0}] at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=2}] run setblock ~ ~ ~ structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:-4,posY:-4,posZ:-4,sizeX:9,sizeY:9,sizeZ:9,name:"ui:glass"}
execute as @e[tag=ui_base,scores={ui_idc=0}] at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=2}] run scoreboard players operation @s ui_mana = @s ui_cost_block

execute as @e[tag=ui_base,scores={ui_idc=0}] at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=3}] run setblock ~ ~ ~ structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:-4,posY:-4,posZ:-4,sizeX:9,sizeY:9,sizeZ:9,name:"ui:data"}
execute as @e[tag=ui_base,scores={ui_idc=0}] at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=3}] run scoreboard players operation @s ui_mana = @s ui_cost_data

execute as @e[tag=ui_base,scores={ui_idc=0}] at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=4}] run setblock ~ ~ ~ structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:-4,posY:-4,posZ:-4,sizeX:9,sizeY:9,sizeZ:9,name:"ui:mana"}
execute as @e[tag=ui_base,scores={ui_idc=0}] at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=4}] run scoreboard players operation @s ui_mana = @s ui_cost_mana

execute as @e[tag=ui_base,scores={ui_idc=0}] at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=5}] run setblock ~ ~ ~ structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:-4,posY:-4,posZ:-4,sizeX:9,sizeY:9,sizeZ:9,name:"ui:stone"}
execute as @e[tag=ui_base,scores={ui_idc=0}] at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=5}] run scoreboard players operation @s ui_mana = @s ui_cost_stone

execute as @e[tag=ui_base,scores={ui_idc=0}] at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=6}] run setblock ~ ~ ~ structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:-4,posY:-4,posZ:-4,sizeX:9,sizeY:9,sizeZ:9,name:"ui:wood"}
execute as @e[tag=ui_base,scores={ui_idc=0}] at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=6}] run scoreboard players operation @s ui_mana = @s ui_cost_wood

execute as @e[tag=ui_base,scores={ui_idc=0}] at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=7}] run setblock ~ ~ ~ structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:-4,posY:-4,posZ:-4,sizeX:9,sizeY:9,sizeZ:9,name:"ui:stair"}
execute as @e[tag=ui_base,scores={ui_idc=0}] at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=7}] run scoreboard players operation @s ui_mana = @s ui_cost_stair

execute as @e[tag=ui_base,scores={ui_idc=0}] at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=8}] run setblock ~ ~ ~ structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:-4,posY:-13,posZ:-4,sizeX:9,sizeY:9,sizeZ:9,name:"ui:stair"}
execute as @e[tag=ui_base,scores={ui_idc=0}] at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=8}] run scoreboard players operation @s ui_mana = @s ui_cost_stair

execute as @e[tag=ui_base,scores={ui_idc=0}] at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=9}] run setblock ~ ~ ~ structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:-4,posY:-4,posZ:-4,sizeX:9,sizeY:9,sizeZ:9,name:"ui:long_stair"}
execute as @e[tag=ui_base,scores={ui_idc=0}] at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=9}] run scoreboard players operation @s ui_mana = @s ui_cost_stair

execute as @e[tag=ui_base,scores={ui_idc=0}] at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=10}] run setblock ~ ~ ~ structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:-4,posY:-22,posZ:-4,sizeX:9,sizeY:9,sizeZ:9,name:"ui:long_stair"}
execute as @e[tag=ui_base,scores={ui_idc=0}] at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=10}] run scoreboard players operation @s ui_mana = @s ui_cost_stair

execute as @e[tag=ui_base,scores={ui_idc=0}] at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=11}] run setblock ~ ~ ~ structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:-4,posY:-4,posZ:-4,sizeX:9,sizeY:9,sizeZ:9,name:"ui:shield1"}
execute as @e[tag=ui_base,scores={ui_idc=0}] at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=11}] run scoreboard players operation @s ui_mana = @s ui_cost_shield1

#情報管理室ボーナス
execute at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=1..}] if entity @e[tag=ui_d_data,scores={ui_idc=0}] run tellraw @a[scores={ui_idc=0}] [{"text":"情報管理室> ","color":"gray"},{"text":"増設が完了しました","color":"green"}]
execute at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=3}] if entity @e[tag=ui_d_data,scores={ui_idc=0}] run tellraw @a[scores={ui_idc=0}] [{"text":"情報管理室> ","color":"gray"},{"text":"情報管理室","color":"gray"}]
execute at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=3}] if entity @e[tag=ui_d_data,scores={ui_idc=0}] run tellraw @a[scores={ui_idc=0}] [{"text":"情報管理室> ","color":"gray"},{"text":"・各種情報を室内のチェストに集積","color":"green"}]
execute at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=3}] if entity @e[tag=ui_d_data,scores={ui_idc=0}] run tellraw @a[scores={ui_idc=0}] [{"text":"情報管理室> ","color":"gray"},{"text":"・レーザーポインターに耐久力参照機能を追加","color":"green"}]
execute at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=4}] if entity @e[tag=ui_d_data,scores={ui_idc=0}] run tellraw @a[scores={ui_idc=0}] [{"text":"情報管理室> ","color":"gray"},{"text":"霊力抽出室","color":"gray"}]
execute at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=4}] if entity @e[tag=ui_d_data,scores={ui_idc=0}] run tellraw @a[scores={ui_idc=0}] [{"text":"情報管理室> ","color":"gray"},{"text":"・5/minの霊力を生産","color":"green"}]
execute at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=5}] if entity @e[tag=ui_d_data,scores={ui_idc=0}] run tellraw @a[scores={ui_idc=0}] [{"text":"情報管理室> ","color":"gray"},{"text":"小型採石場","color":"gray"}]
execute at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=5}] if entity @e[tag=ui_d_data,scores={ui_idc=0}] run tellraw @a[scores={ui_idc=0}] [{"text":"情報管理室> ","color":"gray"},{"text":"・3/minの石材を生産","color":"green"}]
execute at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=6}] if entity @e[tag=ui_d_data,scores={ui_idc=0}] run tellraw @a[scores={ui_idc=0}] [{"text":"情報管理室> ","color":"gray"},{"text":"小型植林場","color":"gray"}]
execute at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=6}] if entity @e[tag=ui_d_data,scores={ui_idc=0}] run tellraw @a[scores={ui_idc=0}] [{"text":"情報管理室> ","color":"gray"},{"text":"・3/minの木材を生産","color":"green"}]
execute at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=11}] if entity @e[tag=ui_d_data,scores={ui_idc=0}] run tellraw @a[scores={ui_idc=0}] [{"text":"情報管理室> ","color":"gray"},{"text":"バンカーシールド","color":"gray"}]
execute at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=11}] if entity @e[tag=ui_d_data,scores={ui_idc=0}] run tellraw @a[scores={ui_idc=0}] [{"text":"情報管理室> ","color":"gray"},{"text":"・この部屋と隣接する部屋のシールド最大値 +100","color":"green"}]
execute at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=11}] if entity @e[tag=ui_d_data,scores={ui_idc=0}] run tellraw @a[scores={ui_idc=0}] [{"text":"情報管理室> ","color":"gray"},{"text":"・レーザーポインターにシールド参照機能を追加","color":"green"}]

#処理完了
execute at @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=1..}] run setblock ~ ~1 ~ redstone_block
execute as @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=1..}] run tag @s add ui_sel_obj2-2
execute as @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=1..}] run function ui:tmw/246/sp/path
execute as @e[tag=ui_sel_obj2,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=1..}] run scoreboard players set sys ui_path 0

execute unless entity @e[tag=ui_sel_obj2,scores={ui_idc=0}] run scoreboard players reset @a[scores={ui_idc=0,ui_trg=1..}] ui_trg
execute unless entity @e[tag=ui_sel_obj2,scores={ui_idc=0}] as @e[tag=ui_sel,scores={ui_idc=0}] run tag @s remove ui_sel
execute unless entity @e[tag=ui_sel_obj2,scores={ui_idc=0}] as @e[tag=ui_sel_obj,scores={ui_idc=0}] run kill @s

#=======================================================================================================
