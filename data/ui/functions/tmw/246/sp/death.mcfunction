#=======================================================================================================

execute at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air hollow
execute at @s run particle flash ~ ~ ~ 0 0 0 0 1 force

execute as @e[tag=ui,scores={ui_id=1..}] run scoreboard players operation @s ui_idc = @s ui_id
scoreboard players operation @e[tag=ui,scores={ui_id=1..}] ui_idc -= @s ui_id

execute at @s positioned ~9 ~ ~ as @e[tag=ui_d,distance=..1] run tag @s add ui_d_dcheck
execute at @s positioned ~-9 ~ ~ as @e[tag=ui_d,distance=..1] run tag @s add ui_d_dcheck
execute at @s positioned ~ ~ ~9 as @e[tag=ui_d,distance=..1] run tag @s add ui_d_dcheck
execute at @s positioned ~ ~ ~-9 as @e[tag=ui_d,distance=..1] run tag @s add ui_d_dcheck
execute at @s positioned ~ ~9 ~ as @e[tag=ui_d,distance=..1] run tag @s add ui_d_dcheck
execute at @s positioned ~ ~-9 ~ as @e[tag=ui_d,distance=..1] run tag @s add ui_d_dcheck

execute at @s[tag=ui_d_stair_d] positioned ~ ~9 ~ run tag @e[tag=ui_d_stair_u,distance=..1] add ui_d_death
execute at @s[tag=ui_d_stair_u] positioned ~ ~-9 ~ run tag @e[tag=ui_d_stair_d,distance=..1] add ui_d_death

execute at @s[tag=ui_d_stair_d] positioned ~ ~9 ~ run tag @e[tag=ui_d_stair_m,distance=..1] add ui_d_death
execute at @s[tag=ui_d_stair_d] positioned ~ ~18 ~ run tag @e[tag=ui_d_stair_u,distance=..1] add ui_d_death
execute at @s[tag=ui_d_stair_u] positioned ~ ~-9 ~ run tag @e[tag=ui_d_stair_m,distance=..1] add ui_d_death
execute at @s[tag=ui_d_stair_u] positioned ~ ~-18 ~ run tag @e[tag=ui_d_stair_d,distance=..1] add ui_d_death

execute at @s[tag=ui_d_mana] as @e[tag=ui_base,scores={ui_idc=0}] run scoreboard players remove @s ui_mana_gen 5
execute at @s[tag=ui_d_stone] as @e[tag=ui_base,scores={ui_idc=0}] run scoreboard players remove @s ui_stone_gen 3
execute at @s[tag=ui_d_wood] as @e[tag=ui_base,scores={ui_idc=0}] run scoreboard players remove @s ui_wood_gen 3

execute at @s run kill @e[tag=ui_hitbox,distance=..3]
execute at @s run kill @e[tag=ui_sel_obj,distance=..3]
execute at @s run kill @s

#=======================================================================================================
