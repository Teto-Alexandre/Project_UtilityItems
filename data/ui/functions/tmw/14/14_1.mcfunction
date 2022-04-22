scoreboard players add @e[tag=tmw_14_7] ui_tc 1
tag @e[tag=tmw_14_7] remove tmw_14_7_2
execute as @e[tag=tmw_14_7] at @s if block ^ ^ ^1 #ui:nocol run tag @s add tmw_14_7_2
execute as @e[tag=tmw_14_7,tag=!tmw_14_7_2] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_14","tmw_14_1"]}
kill @e[tag=tmw_14_7,tag=!tmw_14_7_2]
execute as @e[tag=tmw_14_7] at @s run teleport @s ^ ^ ^0.5
execute as @e[tag=tmw_14_7] at @s run function ui:tmw/214/ref_common
execute as @e[tag=tmw_14_7] at @s run particle dust 0 0 0 1 ~ ~ ~ 0.1 0.1 0.1 0 1 force
execute as @e[tag=tmw_14_7] at @s run particle dust 1 0 0 1 ~ ~ ~ 0.1 0.1 0.1 0 1 force
kill @e[tag=tmw_14_7,scores={ui_tc=200..}]

execute as @e[tag=tmw_14_1,limit=1] at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 1 0
execute as @e[tag=tmw_14_1] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_14","tmw_14_3"]}
execute as @e[tag=tmw_14_1] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_14","tmw_14_3"]}
execute as @e[tag=tmw_14_1] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_14","tmw_14_3"]}
execute as @e[tag=tmw_14_1] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_14","tmw_14_3"]}
execute as @e[tag=tmw_14_1] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_14","tmw_14_3"]}
execute as @e[tag=tmw_14_1] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_14","tmw_14_3"]}
execute as @e[tag=tmw_14_1] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_14","tmw_14_3"]}
execute as @e[tag=tmw_14_1] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_14","tmw_14_3"]}
execute as @e[tag=tmw_14_1,limit=1] at @s run spreadplayers ~ ~ 2 10 false @e[tag=tmw_14_3]
execute as @e[tag=tmw_14_1,limit=1] run scoreboard players set @e[tag=tmw_14_3] ui_tc 0
execute as @e[tag=tmw_14_1,limit=1] run scoreboard players set @e[tag=tmw_14_3,limit=1,scores={ui_tc=0}] ui_tc 4
execute as @e[tag=tmw_14_1,limit=1] run scoreboard players set @e[tag=tmw_14_3,limit=1,scores={ui_tc=0}] ui_tc 8
execute as @e[tag=tmw_14_1,limit=1] run scoreboard players set @e[tag=tmw_14_3,limit=1,scores={ui_tc=0}] ui_tc 12
execute as @e[tag=tmw_14_1,limit=1] run scoreboard players set @e[tag=tmw_14_3,limit=1,scores={ui_tc=0}] ui_tc 16
execute as @e[tag=tmw_14_1,limit=1] run scoreboard players set @e[tag=tmw_14_3,limit=1,scores={ui_tc=0}] ui_tc 20
execute as @e[tag=tmw_14_1,limit=1] run scoreboard players set @e[tag=tmw_14_3,limit=1,scores={ui_tc=0}] ui_tc 24
execute as @e[tag=tmw_14_1,limit=1] run scoreboard players set @e[tag=tmw_14_3,limit=1,scores={ui_tc=0}] ui_tc 28
execute as @e[tag=tmw_14_1,limit=1] run scoreboard players set @e[tag=tmw_14_3,limit=1,scores={ui_tc=0}] ui_tc 32
kill @e[tag=tmw_14_1]
scoreboard players remove @e[tag=tmw_14_3] ui_tc 1
execute as @e[tag=tmw_14_3,scores={ui_tc=..0}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_14","tmw_14_4"]}
execute as @e[tag=tmw_14_4] at @s run spreadplayers ~ ~ 1 5 false @s
execute as @e[tag=tmw_14_4] at @s run teleport @s ~ ~40 ~ ~ ~
execute as @e[tag=tmw_14_4] at @s facing entity @e[tag=tmw_14_3,scores={ui_tc=..0}] feet run teleport @s ~ ~ ~ ~ ~
kill @e[tag=tmw_14_3,scores={ui_tc=..0}]

tag @e[tag=tmw_14_4] add tmw_14_5
tag @e[tag=tmw_14_4] remove tmw_14_4
execute as @e[tag=tmw_14_5] at @s run scoreboard players add @s ui_tc 1
execute as @e[tag=tmw_14_5,scores={ui_tc=..19}] at @s run particle minecraft:dust 0 0 0 1 ~ ~ ~ 1 0.1 1 0 10 force
execute as @e[tag=tmw_14_5,scores={ui_tc=..19}] at @s run particle minecraft:dust 1 0 0 1 ~ ~ ~ 1 0.1 1 0 10 force
execute as @e[tag=tmw_14_5,scores={ui_tc=20..}] at @s run teleport @s ^ ^ ^0.5 ~ ~
execute as @e[tag=tmw_14_5,scores={ui_tc=20..}] at @s run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.2 0.2 0.2 0 2 force
execute as @e[tag=tmw_14_5,scores={ui_tc=20..}] at @s run particle minecraft:dust 0 0 0 1 ~ ~ ~ 0.2 0.2 0.2 0 2 force
execute as @e[tag=tmw_14_5,scores={ui_tc=20..}] at @s run teleport @s ^ ^ ^0.5 ~ ~
execute as @e[tag=tmw_14_5,scores={ui_tc=20..}] at @s run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.2 0.2 0.2 0 2 force
execute as @e[tag=tmw_14_5,scores={ui_tc=20..}] at @s run particle minecraft:dust 0 0 0 1 ~ ~ ~ 0.2 0.2 0.2 0 2 force
execute as @e[tag=tmw_14_5,scores={ui_tc=20..}] at @s run teleport @s ^ ^ ^0.5 ~ ~
execute as @e[tag=tmw_14_5,scores={ui_tc=20..}] at @s run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.2 0.2 0.2 0 2 force
execute as @e[tag=tmw_14_5,scores={ui_tc=20..}] at @s run particle minecraft:dust 0 0 0 1 ~ ~ ~ 0.2 0.2 0.2 0 2 force
execute as @e[tag=tmw_14_5,scores={ui_tc=20..}] at @s unless block ~ ~ ~ #ui:nocol run tag @s add tmw_14_6
execute as @e[tag=tmw_14_5,scores={use=100..}] at @s run tag @s add tmw_14_6

execute as @e[tag=tmw_14_6] at @s run summon fireball ~ ~0.6 ~ {ExplosionPower:4,power:[0.0,-1.0,0.0]}
execute as @e[tag=tmw_14_6] at @s run kill @s