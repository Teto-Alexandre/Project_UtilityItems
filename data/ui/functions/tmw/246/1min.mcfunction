#=======================================================================================================

scoreboard players set @e[tag=ui_d] ui_d_shm 0
execute as @e[tag=ui_d_shield1] at @s run scoreboard players add @e[tag=ui_d,distance=..10] ui_d_shm 100

#=======================================================================================================

execute as @e[tag=ui_base] run scoreboard players operation @s ui_mana += @s ui_mana_gen
execute as @e[tag=ui_base] run scoreboard players operation @s ui_stone += @s ui_stone_gen
execute as @e[tag=ui_base] run scoreboard players operation @s ui_wood += @s ui_wood_gen

execute as @e[tag=ui_d,scores={ui_d_shm=1..}] run scoreboard players add @s ui_d_sh 1
execute as @e[tag=ui_d,scores={ui_d_shm=1..}] run scoreboard players operation @s ui_d_sh < @s ui_d_shm

#=======================================================================================================

execute as @e[tag=ui_hitbox] run data merge entity @s {ActiveEffects:[{Id:14b,Duration:20000,Amplifier:1b,ShowParticles:0b}]}

execute as @e[tag=ui_base,scores={ui_core=..0}] run tag @s add ui_base_lost

#=======================================================================================================

scoreboard players set #tmw246_1min ui_calc1 1

#=======================================================================================================
