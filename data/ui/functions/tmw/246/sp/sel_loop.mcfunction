#=======================================================================================================

#必要コスト計算
scoreboard players set @e[tag=ui_base,scores={ui_idc=0}] ui_cost_core 0
execute at @e[tag=ui_d_core,scores={ui_idc=0}] run scoreboard players remove @e[tag=ui_base,scores={ui_idc=0}] ui_cost_core 500
execute as @e[tag=ui_base,scores={ui_idc=0}] run scoreboard players operation @s ui_cost_core += @s ui_mana

#=======================================================================================================

#足りてないなら消去
execute as @s if entity @a[scores={ui_idc=0,ui_trg2=1}] if entity @e[tag=ui_base,scores={ui_idc=0,ui_cost_core=..-1}] run tag @s remove ui_sel

#=======================================================================================================

execute at @s[tag=ui_sel] as @e[tag=ui_base,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg2=1}] run setblock ~ ~ ~ structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:-4,posY:-4,posZ:-4,sizeX:9,sizeY:9,sizeZ:9,name:"ui:core"}
execute at @s[tag=ui_sel] as @e[tag=ui_base,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg2=1}] run scoreboard players operation @s ui_mana = @s ui_cost_core

#情報管理室ボーナス
execute at @e[tag=ui_sel] if entity @a[scores={ui_idc=0,ui_trg2=1..}] if entity @e[tag=ui_d_data,scores={ui_idc=0}] run tellraw @a[scores={ui_idc=0}] [{"text":"情報管理室> ","color":"gray"},{"text":"改築が完了しました","color":"green"}]
execute at @e[tag=ui_sel] if entity @a[scores={ui_idc=0,ui_trg2=1}] if entity @e[tag=ui_d_data,scores={ui_idc=0}] run tellraw @a[scores={ui_idc=0}] [{"text":"情報管理室> ","color":"gray"},{"text":"コアルーム","color":"gray"}]
execute at @e[tag=ui_sel] if entity @a[scores={ui_idc=0,ui_trg2=1}] if entity @e[tag=ui_d_data,scores={ui_idc=0}] run tellraw @a[scores={ui_idc=0}] [{"text":"情報管理室> ","color":"gray"},{"text":"・すべてのコアルームが破壊されると施設が崩壊する","color":"green"}]


#処理完了
execute at @s[tag=ui_sel] if entity @a[scores={ui_idc=0,ui_trg2=1..1000}] run setblock ~ ~1 ~ redstone_block
execute as @s[tag=ui_sel] if entity @a[scores={ui_idc=0,ui_trg2=1..1000}] run tag @s add ui_sel_obj1-2

execute at @s[tag=ui_sel] if entity @a[scores={ui_idc=0,ui_trg2=1001}] run tag @s add ui_d_death
execute at @s[tag=ui_sel] if entity @a[scores={ui_idc=0,ui_trg2=1001}] run scoreboard players reset @a[scores={ui_idc=0,ui_trg2=1..}] ui_trg2

execute unless entity @s[tag=ui_sel] run scoreboard players reset @a[scores={ui_idc=0,ui_trg2=1..}] ui_trg2
execute unless entity @s[tag=ui_sel] as @e[tag=ui_sel_obj,scores={ui_idc=0}] run kill @s
execute unless entity @s[tag=ui_sel] as @e[tag=ui_sel_obj2,scores={ui_idc=0}] run kill @s

#=======================================================================================================
