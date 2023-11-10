scoreboard players set @s ui_calc1 60
execute if score @s ui_calc1 matches 1.. run function ui:common/particle/ss/upper/32/41-50/49/loop

playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.5 2 0
particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.1 50 normal
