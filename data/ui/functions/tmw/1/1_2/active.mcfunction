scoreboard players set @s ui_calc1 60
teleport @s ~ ~ ~ ~ 15
execute if score @s ui_calc1 matches 1.. run function ui:tmw/1/1_2/loop

scoreboard players set @s ui_calc1 60
teleport @s ~ ~ ~ ~ -15
execute if score @s ui_calc1 matches 1.. run function ui:tmw/1/1_2/loop2

effect give @e[distance=..2,predicate=ui:load_unhurtable,type=!#ui:undead] instant_damage 1 1 true
effect give @e[distance=..2,type=#ui:undead] instant_health 1 1 true
effect give @e[distance=..2,predicate=ui:load_unhurtable] slowness 1 1 true
effect give @e[distance=..2,predicate=ui:load_unhurtable] weakness 1 1 true
effect give @e[distance=..2,predicate=ui:load_unhurtable] wither 1 1 true
scoreboard players add @e[distance=..2,predicate=ui:load_unhurtable] ui_hp 10
execute at @e[distance=..2,predicate=ui:load_unhurtable] run playsound entity.zombie_villager.cure master @a ~ ~ ~ 0.5 1.801 0
execute at @e[distance=..2,predicate=ui:load_unhurtable] run playsound entity.zombie_villager.cure master @a ~ ~ ~ 0.5 1.800 0
execute at @e[distance=..2,predicate=ui:load_unhurtable] run particle dust 1 0 1 2 ~ ~1 ~ 0.8 0.8 0.8 0 5 force
kill @s