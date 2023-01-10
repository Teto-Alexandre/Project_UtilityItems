scoreboard players add @s ui_is 1

execute at @s run teleport @s ^ ^ ^0.5
execute at @s if score #tmw_263_kill ui_world matches 1 run kill @e[predicate=ui:load_unhurtable,type=!minecraft:player,distance=..2]
execute at @s if score #tmw_263_kill ui_world matches 2 at @e[tag=!tmw_263,type=!minecraft:player,distance=..2] run particle flame ~ ~ ~ 0.3 0.3 0.3 0 10 force
execute at @s if score #tmw_263_kill ui_world matches 2 as @e[tag=!tmw_263,type=!minecraft:player,distance=..2] at @s run teleport @s ~ -300 ~
execute at @s if score #tmw_263_kill ui_world matches 2 positioned ~ -300 ~ run kill @e[tag=!tmw_263,type=!minecraft:player,distance=..2]

execute at @s run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force

execute as @s[scores={ui_is=..99}] at @s unless block ~ ~ ~ #ui:nocol unless block ~ ~ ~ minecraft:redstone_block run scoreboard players set @s ui_is 100

execute as @s[scores={ui_is=100..}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_263","tmw_263_activator"]}
kill @s[scores={ui_is=100..}]

execute as @s[scores={ui_is=..99}] at @s run function ui:tmw/263/laser
