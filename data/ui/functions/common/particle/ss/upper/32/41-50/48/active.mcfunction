scoreboard players set @s ui_calc1 60
teleport @s ~ ~ ~ ~ 15
execute if score @s ui_calc1 matches 1.. run function ui:common/particle/ss/upper/32/41-50/48/loop

scoreboard players set @s ui_calc1 60
teleport @s ~ ~ ~ ~ -15
execute if score @s ui_calc1 matches 1.. run function ui:common/particle/ss/upper/32/41-50/48/loop2

playsound entity.zombie_villager.cure master @a ~ ~ ~ 0.5 1.801 0
playsound entity.zombie_villager.cure master @a ~ ~ ~ 0.5 1.800 0
particle dust 1 0 1 2 ~ ~1 ~ 0.8 0.8 0.8 0 5 force
