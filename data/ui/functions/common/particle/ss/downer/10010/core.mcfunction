#
particle electric_spark ~ ~4 ~ 0.1 4 0.1 0 40 force
particle explosion ~ ~ ~ 0 0 0 0 1 force

playsound entity.player.attack.knockback player @a ~ ~ ~ 1 1.2

execute as @e[distance=..2,predicate=ui:load_unhurtable,tag=!ui_temp_team,sort=nearest,limit=1] at @s run function ui:common/particle/ss/downer/10010/damage

#
execute if score $is ui_temp matches 1.. run kill @s
