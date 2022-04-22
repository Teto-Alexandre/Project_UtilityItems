scoreboard players set @s ui_calc1 60
execute if score @s ui_calc1 matches 1.. run function ui:tmw/9/9_8/loop

effect give @e[distance=1..12,type=!#ui:notmob,type=!#ui:undead] instant_damage 1 1 true
effect give @e[distance=1..12,type=#ui:undead] instant_health 1 1 true
effect give @e[distance=1..12,type=!#ui:notmob] wither 1 0 true
execute at @e[distance=1..12,type=!#ui:notmob] run playsound entity.player.hurt_on_fire master @a ~ ~ ~ 1 0.5 0
execute at @e[distance=1..12,type=!#ui:notmob] run particle dust 0 1 1 2 ~ ~1 ~ 0.8 0.8 0.8 0 5 force
kill @s