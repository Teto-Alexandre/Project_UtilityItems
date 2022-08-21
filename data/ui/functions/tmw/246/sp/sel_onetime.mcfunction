#=======================================================================================================

execute as @e[tag=!ui_seld,scores={ui_idc=0}] run tag @s remove ui_sel
execute as @e[tag=ui_sel_obj,scores={ui_idc=0}] run kill @s
execute as @e[tag=ui_sel_obj2,scores={ui_idc=0}] run kill @s

execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~9 ~ ~ unless entity @e[tag=ui_d,distance=..1] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~2 ~ ~ {Tags:["ui","ui_d_pz","ui_sel_obj"],Marker:1b,Invisible:1b,NoGravity:1b}
execute at @s run scoreboard players operation @e[tag=ui_d_pz,sort=nearest,limit=1] ui_id = @s ui_id
execute at @s run scoreboard players set @e[tag=ui_d_pz,sort=nearest,limit=1] ui_idc 0
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-9 ~ ~ unless entity @e[tag=ui_d,distance=..1] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~-2 ~ ~ {Tags:["ui","ui_d_mz","ui_sel_obj"],Marker:1b,Invisible:1b,NoGravity:1b}
execute at @s run scoreboard players operation @e[tag=ui_d_mz,sort=nearest,limit=1] ui_id = @s ui_id
execute at @s run scoreboard players set @e[tag=ui_d_mz,sort=nearest,limit=1] ui_idc 0
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~ ~9 unless entity @e[tag=ui_d,distance=..1] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~2 {Tags:["ui","ui_d_zp","ui_sel_obj"],Marker:1b,Invisible:1b,NoGravity:1b}
execute at @s run scoreboard players operation @e[tag=ui_d_zp,sort=nearest,limit=1] ui_id = @s ui_id
execute at @s run scoreboard players set @e[tag=ui_d_zp,sort=nearest,limit=1] ui_idc 0
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~ ~-9 unless entity @e[tag=ui_d,distance=..1] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~-2 {Tags:["ui","ui_d_zm","ui_sel_obj"],Marker:1b,Invisible:1b,NoGravity:1b}
execute at @s run scoreboard players operation @e[tag=ui_d_zm,sort=nearest,limit=1] ui_id = @s ui_id
execute at @s run scoreboard players set @e[tag=ui_d_zm,sort=nearest,limit=1] ui_idc 0

#コスト計算
scoreboard players set @e[tag=ui_base,scores={ui_idc=0}] ui_cost_core 0
execute at @e[tag=ui_d_core,scores={ui_idc=0}] run scoreboard players add @e[tag=ui_base,scores={ui_idc=0}] ui_cost_core 500
scoreboard players operation core ui_calc1 = @e[tag=ui_base,scores={ui_idc=0}] ui_cost_core
execute as @e[tag=ui_base,scores={ui_idc=0}] run scoreboard players operation @s ui_cost_core -= @s ui_mana

execute at @s run tellraw @a[scores={ui_idc=0}] [{"text":"--------------","color":"gray"}]
execute at @s[tag=ui_d_core] run tellraw @a[scores={ui_idc=0}] [{"text":"| 選択: コアルーム","color":"gray"}]
execute at @s[tag=ui_d_block] run tellraw @a[scores={ui_idc=0}] [{"text":"| 選択: 通常部屋","color":"gray"}]
execute at @s[tag=ui_d_glass] run tellraw @a[scores={ui_idc=0}] [{"text":"| 選択: ガラス部屋","color":"gray"}]
execute at @s[tag=ui_d_data] run tellraw @a[scores={ui_idc=0}] [{"text":"| 選択: 情報管理室","color":"gray"}]
execute at @s[tag=ui_d_mana] run tellraw @a[scores={ui_idc=0}] [{"text":"| 選択: 霊力抽出室","color":"gray"}]
execute at @s[tag=ui_d_stone] run tellraw @a[scores={ui_idc=0}] [{"text":"| 選択: 小型採石場","color":"gray"}]
execute at @s[tag=ui_d_wood] run tellraw @a[scores={ui_idc=0}] [{"text":"| 選択: 小型植林場","color":"gray"}]
execute at @s[tag=ui_d_stair_d] run tellraw @a[scores={ui_idc=0}] [{"text":"| 選択: 階段（下段）","color":"gray"}]
execute at @s[tag=ui_d_stair_u] run tellraw @a[scores={ui_idc=0}] [{"text":"| 選択: 階段（上段）","color":"gray"}]
execute at @s[tag=ui_d_shield1] run tellraw @a[scores={ui_idc=0}] [{"text":"| 選択: バンカーシールド","color":"gray"}]
execute at @s[tag=!ui_d_nohit] if entity @e[tag=ui_d_data,scores={ui_idc=0}] run tellraw @a[scores={ui_idc=0}] [{"text":"| 耐久力 ","color":"gray"},{"score":{"objective":"ui_d_hp","name":"@s"},"color":"red"},{"text":"/","color":"dark_red"},{"score":{"objective":"ui_d_hpm","name":"@s"},"color":"red"}]
execute at @s[tag=!ui_d_nohit] if entity @e[tag=ui_d_shield,scores={ui_idc=0}] run tellraw @a[scores={ui_idc=0}] [{"text":"| シールド ","color":"gray"},{"score":{"objective":"ui_d_sh","name":"@s"},"color":"aqua"},{"text":"/","color":"blue"},{"score":{"objective":"ui_d_shm","name":"@s"},"color":"aqua"}]
execute at @s run tellraw @a[scores={ui_idc=0}] [{"text":"--------------","color":"gray"}]

execute at @s[tag=ui_d_normal] run tellraw @a[scores={ui_idc=0}] {"text":"・コアルーム化する","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"必要コスト ","color":"white"},{"text":"霊力:","color":"aqua"},{"score":{"name":"core","objective":"ui_calc1"},"color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger ui_trg2 set 1"}}
execute at @s[tag=!ui_d_core] run tellraw @a[scores={ui_idc=0}] {"text":"・この部屋を撤去する","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"必要コスト ","color":"white"},{"text":"無し","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger ui_trg2 set 1001"}}

execute as @a[scores={ui_idc=0}] run scoreboard players enable @s ui_trg2

execute as @s run tag @s remove ui_seld

#=======================================================================================================
