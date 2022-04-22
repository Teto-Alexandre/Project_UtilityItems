#=======================================================================================================

execute as @a[scores={ui_id=1..}] run scoreboard players operation @s ui_idc = @s ui_id
scoreboard players operation @a[scores={ui_id=1..}] ui_idc -= @s ui_id

execute at @s[tag=tmw_13_2_2] at @e[type=!#ui:notmob,sort=nearest,limit=1] positioned ~ ~1 ~ run teleport @s ~ ~ ~
scoreboard players add @s ui_tc 1

execute at @a[scores={ui_idc=0}] facing entity @s feet run teleport @a[scores={ui_idc=0}] ^ ^ ^0.8
effect give @a[scores={ui_idc=0}] levitation 1 0 true

particle dust 1 1 0.5 1.5 ~ ~ ~ 0 0 0 0 1 force @a
execute at @a[scores={ui_idc=0}] run particle dust 1 1 0.5 1.5 ~ ~ ~ 0 0 0 0 1 force @a

tag @s remove tmw_13_1_1
execute at @a[scores={ui_idc=0}] if block ~ ~ ~ #ui:nocol run tag @s add tmw_13_1_1

execute as @s[tag=!tmw_13_1_1] at @a[scores={ui_idc=0}] run playsound block.tripwire.detach player @p ~ ~ ~ 1 1.5 1
kill @s[tag=!tmw_13_1_1]

execute at @a[scores={ui_idc=0}] if entity @s[distance=..1] run effect give @a[scores={ui_idc=0}] levitation 1 80 true
execute at @a[scores={ui_idc=0}] if entity @s[distance=..1] run tag @a[scores={ui_idc=0}] add ui_kb
execute at @a[scores={ui_idc=0}] run kill @s[distance=..1]
kill @s[scores={ui_tc=100..}]

execute at @a[scores={ui_idc=0}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_13_3","tmw_13_3_1"]}
execute at @a[scores={ui_idc=0}] facing entity @s feet run teleport @e[tag=tmw_13_3_1] ~ ~ ~ ~ ~

#=======================================================================================================