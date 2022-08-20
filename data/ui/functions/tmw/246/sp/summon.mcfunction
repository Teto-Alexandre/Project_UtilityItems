#=======================================================================================================

execute as @s[tag=ui_sp1] at @s if entity @e[tag=ui_base,distance=..150] run tag @s add ui_sp1_stop
execute as @s[tag=ui_sp1_stop] at @s run tellraw @a [{"text":"System>","color":"gray"},{"text":"他のベースが近くに存在しています","color":"red"}]
execute as @s[tag=ui_sp1_stop] at @s run tellraw @a [{"text":"System>","color":"gray"},{"text":"150m以上離して設置してください","color":"red"}]
execute as @s[tag=ui_sp1_stop] at @s run playsound minecraft:block.redstone_torch.burnout master @a ~ ~ ~ 1 1 0
execute as @s[tag=ui_sp1_stop] at @s run kill @s

execute as @s[tag=ui_sp1,tag=!ui_sp1_stop] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["db","ui_base","ui_based"],Marker:1b,Invisible:1b,NoGravity:1b}
execute as @s[tag=ui_sp1,tag=!ui_sp1_stop] at @s run tellraw @a [{"text":"System>","color":"gray"},{"text":"仮設置しました","color":"green"}]
execute as @s[tag=ui_sp1,tag=!ui_sp1_stop] at @s run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1 0
execute as @s[tag=ui_sp1,tag=!ui_sp1_stop] at @s run kill @s

#=======================================================================================================
