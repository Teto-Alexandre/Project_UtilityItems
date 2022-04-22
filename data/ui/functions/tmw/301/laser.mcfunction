#=======================================================================================================

scoreboard players add @s ui_calc1 1
scoreboard players add @s ui_calc2 1
scoreboard players set @s[scores={ui_calc2=4}] ui_calc2 1

#同期
scoreboard players reset @e ui_idc
execute as @e[tag=ui_i,scores={ui_id=1..}] run scoreboard players operation @s ui_idc = @s ui_id
scoreboard players operation @e[tag=ui_i,scores={ui_id=1..}] ui_idc -= @s ui_id

execute at @s run teleport @s ^ ^ ^0.5

execute at @s unless entity @e[scores={ui_idc=0}] positioned ~ ~0.5 ~ if entity @e[tag=ui_i_cansel,tag=!ui_i_sel,distance=..1] run tag @s add ui_i_sel_d
execute at @s unless entity @e[scores={ui_idc=0}] positioned ~ ~0.5 ~ run scoreboard players operation @e[tag=ui_i_cansel,tag=!ui_i_sel,sort=nearest,limit=1,distance=..1] ui_id = @s ui_id
execute at @s unless entity @e[scores={ui_idc=0}] positioned ~ ~0.5 ~ run tag @e[tag=ui_i_cansel,tag=!ui_i_sel,sort=nearest,limit=1,distance=..1] add ui_i_seld
execute at @s unless entity @e[scores={ui_idc=0}] positioned ~ ~0.5 ~ run tag @e[tag=ui_i_cansel,tag=!ui_i_sel,sort=nearest,limit=1,distance=..1] add ui_i_sel

execute at @s if entity @e[scores={ui_idc=0}] if entity @e[scores={ui_idc=0},distance=..20] positioned ~ ~0.5 ~ if entity @e[tag=ui_i_cansel,tag=!ui_i_sel,distance=..1] run tag @s add ui_i_sel_d
execute at @s if entity @e[scores={ui_idc=0}] if entity @e[scores={ui_idc=0},distance=..20] positioned ~ ~0.5 ~ run scoreboard players operation @e[tag=ui_i_cansel,tag=!ui_i_sel,sort=nearest,limit=1,distance=..1] ui_id = @s ui_id
execute at @s if entity @e[scores={ui_idc=0}] if entity @e[scores={ui_idc=0},distance=..20] positioned ~ ~0.5 ~ run tag @e[tag=ui_i_cansel,tag=!ui_i_sel,sort=nearest,limit=1,distance=..1] add ui_i_seld2

execute at @s if entity @e[scores={ui_idc=0}] unless entity @e[scores={ui_idc=0},distance=..20] positioned ~ ~0.5 ~ if entity @e[tag=ui_i_cansel,tag=!ui_i_sel,distance=..1] run tag @s add ui_i_sel_d
execute at @s if entity @e[scores={ui_idc=0}] unless entity @e[scores={ui_idc=0},distance=..20] positioned ~ ~0.5 ~ if entity @e[tag=ui_i_cansel,tag=!ui_i_sel,distance=..1] run tellraw @p[scores={ui_tmw_id=301}] [{"text":"チェーンリンクメーカー","color":"aqua"},{"text":"> ","color":"gray"},{"text":"リンク先が遠すぎます","color":"red"}]

execute at @s[scores={ui_calc2=1}] run particle crit ~ ~ ~ 0 0 0 0.05 1 force @a[scores={ui_tmw_id=301}]

execute at @s[scores={ui_calc1=100..}] run function ui:tmw/301/unsel
kill @s[scores={ui_calc1=100..}]
kill @s[tag=ui_i_sel_d]

execute as @s[scores={ui_calc1=..99},tag=!ui_i_sel_d] at @s run function ui:tmw/301/laser

#=======================================================================================================