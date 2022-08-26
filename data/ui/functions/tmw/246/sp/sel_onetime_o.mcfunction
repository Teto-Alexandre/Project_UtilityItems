#=======================================================================================================

scoreboard players reset @a[scores={ui_idc=0}] ui_trg

execute as @e[tag=ui_sel_obj,tag=!ui_seld_o,scores={ui_idc=0}] run tag @s remove ui_sel_o
execute as @e[tag=ui_sel_obj2,scores={ui_idc=0}] run kill @s

execute at @s run tellraw @a[scores={ui_idc=0}] [{"text":"--------------","color":"gray"}]
execute at @s[tag=ui_d_pz] run tellraw @a[scores={ui_idc=0}] [{"text":"| 増設方位: East |","color":"gray"}]
execute at @s[tag=ui_d_mz] run tellraw @a[scores={ui_idc=0}] [{"text":"| 増設方位: West |","color":"gray"}]
execute at @s[tag=ui_d_zp] run tellraw @a[scores={ui_idc=0}] [{"text":"| 増設方位: South |","color":"gray"}]
execute at @s[tag=ui_d_zm] run tellraw @a[scores={ui_idc=0}] [{"text":"| 増設方位: North |","color":"gray"}]
execute at @s run tellraw @a[scores={ui_idc=0}] [{"text":"--------------","color":"gray"}]

execute at @s if entity @s[tag=ui_d_pz] run execute at @e[tag=ui_sel,sort=nearest,limit=1] align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~9 ~ ~ {Tags:["ui","ui_sel_obj2"],Marker:1b,Invisible:1b,NoGravity:1b}
execute at @s if entity @s[tag=ui_d_mz] run execute at @e[tag=ui_sel,sort=nearest,limit=1] align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~-9 ~ ~ {Tags:["ui","ui_sel_obj2"],Marker:1b,Invisible:1b,NoGravity:1b}
execute at @s if entity @s[tag=ui_d_zp] run execute at @e[tag=ui_sel,sort=nearest,limit=1] align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~9 {Tags:["ui","ui_sel_obj2"],Marker:1b,Invisible:1b,NoGravity:1b}
execute at @s if entity @s[tag=ui_d_zm] run execute at @e[tag=ui_sel,sort=nearest,limit=1] align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~-9 {Tags:["ui","ui_sel_obj2"],Marker:1b,Invisible:1b,NoGravity:1b}
execute at @s run scoreboard players operation @e[tag=ui_sel_obj2,sort=nearest,limit=1] ui_id = @s ui_id
execute at @s run scoreboard players set @e[tag=ui_sel_obj2,sort=nearest,limit=1] ui_idc 0

tellraw @a[scores={ui_idc=0}] [{"text":"ページ:","color":"gray"},{"text":" [通常]","color":"white","clickEvent":{"action":"run_command","value":"/trigger ui_trg set -1"}},{"text":" [資源]","color":"green","clickEvent":{"action":"run_command","value":"/trigger ui_trg set -2"}},{"text":" [防衛]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger ui_trg set -3"}},{"text":" [管理]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger ui_trg set -4"}}]

execute as @a[scores={ui_idc=0}] run scoreboard players enable @s ui_trg

execute as @s run tag @s remove ui_seld_o

#=======================================================================================================
