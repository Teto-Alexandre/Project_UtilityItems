execute at @s facing entity @e[tag=ui_c_ref,sort=nearest,limit=1] eyes run summon minecraft:armor_stand ^ ^ ^-1 {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["ui_ref2"]}
execute as @s store result score x1 ui_calc1 run data get entity @s Pos.[0] 100
execute as @s store result score y1 ui_calc1 run data get entity @s Pos.[1] 100
execute as @s store result score z1 ui_calc1 run data get entity @s Pos.[2] 100
execute as @e[tag=ui_ref2] store result score x2 ui_calc1 run data get entity @s Pos.[0] 100
execute as @e[tag=ui_ref2] store result score y2 ui_calc1 run data get entity @s Pos.[1] 100
execute as @e[tag=ui_ref2] store result score z2 ui_calc1 run data get entity @s Pos.[2] 100
execute as @s store result entity @s Motion.[0] double 0.01 run scoreboard players operation x2 ui_calc1 -= x1 ui_calc1
execute as @s store result entity @s Motion.[1] double 0.01 run scoreboard players operation y2 ui_calc1 -= y1 ui_calc1
execute as @s store result entity @s Motion.[2] double 0.01 run scoreboard players operation z2 ui_calc1 -= z1 ui_calc1
execute at @s run particle crit ~ ~ ~ 0 0 0 0.2 10 force
tag @s add ui_refd
kill @e[tag=ui_ref2]