#=======================================================================================================

execute as @s run scoreboard players operation $x2 ui_calc1 = @s ui_calc1
execute as @s run scoreboard players operation $z2 ui_calc1 = @s ui_calc2
execute as @s run scoreboard players operation $y2 ui_calc1 = @s ui_calc3
execute at @s run scoreboard players operation $x2 ui_calc1 += $x1 ui_calc1
execute at @s run scoreboard players operation $y2 ui_calc1 += $y1 ui_calc1
execute at @s run scoreboard players operation $y2 ui_calc1 += #100 ui_num
execute at @s run scoreboard players operation $z2 ui_calc1 += $z1 ui_calc1
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ui_8_4"],duration:1}
execute at @s store result entity @e[tag=ui_8_4,limit=1] Pos[0] double 0.01 run scoreboard players get $x2 ui_calc1
execute at @s store result entity @e[tag=ui_8_4,limit=1] Pos[1] double 0.02 run scoreboard players get $y2 ui_calc1
execute at @s store result entity @e[tag=ui_8_4,limit=1] Pos[2] double 0.01 run scoreboard players get $z2 ui_calc1
#execute at @e[tag=ui_8_4] run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 1 force
execute at @e[tag=ui_8_4] run particle end_rod ~ ~ ~ 0 0 0 0 1 force
execute at @s run kill @e[tag=ui_8_4]
kill @s

#=======================================================================================================