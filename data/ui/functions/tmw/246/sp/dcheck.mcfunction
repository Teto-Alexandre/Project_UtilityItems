#=======================================================================================================

function ui:tmw/246/sp/path
scoreboard players set sys ui_path 0

execute at @s run scoreboard players reset @e[tag=ui_d,distance=..10] ui_calc1
execute at @s as @e[tag=ui_d,distance=..10] run scoreboard players operation @s ui_calc1 = @s ui_path
execute at @s run scoreboard players operation @e[tag=ui_d,distance=..10] ui_calc1 -= @s ui_path

execute at @s[scores={ui_path=0}] unless entity @e[tag=ui_d,scores={ui_calc1=..-1},distance=..10] run tag @s add ui_d_death

#消滅遅延用
tag @s add ui_d_dcheckd

tag @s remove ui_d_dcheck

#=======================================================================================================
