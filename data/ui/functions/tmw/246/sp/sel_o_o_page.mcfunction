#=======================================================================================================

#コスト計算
scoreboard players set @e[tag=ui_base,scores={ui_idc=0}] ui_cost_block 0
execute at @e[tag=ui_d_block,scores={ui_idc=0}] run scoreboard players add @e[tag=ui_base,scores={ui_idc=0}] ui_cost_block 1
execute at @e[tag=ui_d_glass,scores={ui_idc=0}] run scoreboard players add @e[tag=ui_base,scores={ui_idc=0}] ui_cost_block 1
scoreboard players operation block ui_calc1 = @e[tag=ui_base,scores={ui_idc=0}] ui_cost_block
execute as @e[tag=ui_base,scores={ui_idc=0}] run scoreboard players operation @s ui_cost_block -= @s ui_mana

scoreboard players set @e[tag=ui_base,scores={ui_idc=0}] ui_cost_data 0
execute at @e[tag=ui_d_data,scores={ui_idc=0}] run scoreboard players add @e[tag=ui_base,scores={ui_idc=0}] ui_cost_data 20
scoreboard players operation data ui_calc1 = @e[tag=ui_base,scores={ui_idc=0}] ui_cost_data
execute as @e[tag=ui_base,scores={ui_idc=0}] run scoreboard players operation @s ui_cost_data -= @s ui_mana

scoreboard players set @e[tag=ui_base,scores={ui_idc=0}] ui_cost_mana 0
execute at @e[tag=ui_d_mana,scores={ui_idc=0}] run scoreboard players add @e[tag=ui_base,scores={ui_idc=0}] ui_cost_mana 100
scoreboard players operation mana ui_calc1 = @e[tag=ui_base,scores={ui_idc=0}] ui_cost_mana
execute as @e[tag=ui_base,scores={ui_idc=0}] run scoreboard players operation @s ui_cost_mana -= @s ui_mana

scoreboard players set @e[tag=ui_base,scores={ui_idc=0}] ui_cost_stone 20
execute at @e[tag=ui_d_stone,scores={ui_idc=0}] run scoreboard players add @e[tag=ui_base,scores={ui_idc=0}] ui_cost_stone 50
scoreboard players operation stone ui_calc1 = @e[tag=ui_base,scores={ui_idc=0}] ui_cost_stone
execute as @e[tag=ui_base,scores={ui_idc=0}] run scoreboard players operation @s ui_cost_stone -= @s ui_mana

scoreboard players set @e[tag=ui_base,scores={ui_idc=0}] ui_cost_wood 20
execute at @e[tag=ui_d_wood,scores={ui_idc=0}] run scoreboard players add @e[tag=ui_base,scores={ui_idc=0}] ui_cost_wood 50
scoreboard players operation wood ui_calc1 = @e[tag=ui_base,scores={ui_idc=0}] ui_cost_wood
execute as @e[tag=ui_base,scores={ui_idc=0}] run scoreboard players operation @s ui_cost_wood -= @s ui_mana

scoreboard players set @e[tag=ui_base,scores={ui_idc=0}] ui_cost_stair 0
execute at @e[tag=ui_d_stair,scores={ui_idc=0}] run scoreboard players add @e[tag=ui_base,scores={ui_idc=0}] ui_cost_stair 10
scoreboard players operation stair ui_calc1 = @e[tag=ui_base,scores={ui_idc=0}] ui_cost_stair
execute as @e[tag=ui_base,scores={ui_idc=0}] run scoreboard players operation @s ui_cost_stair -= @s ui_mana

scoreboard players set @e[tag=ui_base,scores={ui_idc=0}] ui_cost_shield1 0
execute at @e[tag=ui_d_shield1,scores={ui_idc=0}] run scoreboard players add @e[tag=ui_base,scores={ui_idc=0}] ui_cost_shield1 10
scoreboard players operation shield1 ui_calc1 = @e[tag=ui_base,scores={ui_idc=0}] ui_cost_shield1
execute as @e[tag=ui_base,scores={ui_idc=0}] run scoreboard players operation @s ui_cost_shield1 -= @s ui_mana

execute at @s run tellraw @a[scores={ui_idc=0}] [{"text":"--------------","color":"gray"}]

tellraw @a[scores={ui_idc=0,ui_trg=-1}] {"text":"・通常部屋","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"必要コスト ","color":"white"},{"text":"霊力:","color":"aqua"},{"score":{"name":"block","objective":"ui_calc1"},"color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger ui_trg set 1"}}
tellraw @a[scores={ui_idc=0,ui_trg=-1}] {"text":"・ガラス部屋","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"必要コスト ","color":"white"},{"text":"霊力:","color":"aqua"},{"score":{"name":"block","objective":"ui_calc1"},"color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger ui_trg set 2"}}
tellraw @a[scores={ui_idc=0,ui_trg=-1}] {"text":"・小階段（上）","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"必要コスト ","color":"white"},{"text":"霊力:","color":"aqua"},{"score":{"name":"stair","objective":"ui_calc1"},"color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger ui_trg set 7"}}
tellraw @a[scores={ui_idc=0,ui_trg=-1}] {"text":"・小階段（下）","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"必要コスト ","color":"white"},{"text":"霊力:","color":"aqua"},{"score":{"name":"stair","objective":"ui_calc1"},"color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger ui_trg set 8"}}
tellraw @a[scores={ui_idc=0,ui_trg=-1}] {"text":"・長階段（上）","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"必要コスト ","color":"white"},{"text":"霊力:","color":"aqua"},{"score":{"name":"stair","objective":"ui_calc1"},"color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger ui_trg set 9"}}
tellraw @a[scores={ui_idc=0,ui_trg=-1}] {"text":"・長階段（下）","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"必要コスト ","color":"white"},{"text":"霊力:","color":"aqua"},{"score":{"name":"stair","objective":"ui_calc1"},"color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger ui_trg set 10"}}

tellraw @a[scores={ui_idc=0,ui_trg=-2}] {"text":"・霊力抽出室","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"必要コスト ","color":"white"},{"text":"霊力:","color":"aqua"},{"score":{"name":"mana","objective":"ui_calc1"},"color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger ui_trg set 4"}}
tellraw @a[scores={ui_idc=0,ui_trg=-2}] {"text":"・小型採石場","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"必要コスト ","color":"white"},{"text":"霊力:","color":"aqua"},{"score":{"name":"stone","objective":"ui_calc1"},"color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger ui_trg set 5"}}
tellraw @a[scores={ui_idc=0,ui_trg=-2}] {"text":"・小型植林場","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"必要コスト ","color":"white"},{"text":"霊力:","color":"aqua"},{"score":{"name":"wood","objective":"ui_calc1"},"color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger ui_trg set 6"}}

tellraw @a[scores={ui_idc=0,ui_trg=-3}] {"text":"・バンカーシールド","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"必要コスト ","color":"white"},{"text":"霊力:","color":"aqua"},{"score":{"name":"shield1","objective":"ui_calc1"},"color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger ui_trg set 11"}}

tellraw @a[scores={ui_idc=0,ui_trg=-4}] {"text":"・情報管理室","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"必要コスト ","color":"white"},{"text":"霊力:","color":"aqua"},{"score":{"name":"data","objective":"ui_calc1"},"color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger ui_trg set 3"}}

tellraw @a[scores={ui_idc=0}] [{"text":"ページ:","color":"gray"},{"text":" [通常]","color":"white","clickEvent":{"action":"run_command","value":"/trigger ui_trg set -1"}},{"text":" [資源]","color":"green","clickEvent":{"action":"run_command","value":"/trigger ui_trg set -2"}},{"text":" [防衛]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger ui_trg set -3"}},{"text":" [管理]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger ui_trg set -4"}}]

scoreboard players reset @a[scores={ui_idc=0}] ui_trg
execute as @a[scores={ui_idc=0}] run scoreboard players enable @s ui_trg

#=======================================================================================================
